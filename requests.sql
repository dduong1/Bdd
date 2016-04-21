-- On suppose que les 2 premiers chiffres du code postal d'un pays donnent le département 

-- a) Extraire le nombre d’employés dans le département du 75.
-- On récupère les cafés dont le code postal commencent pas 75 et puis on fait la somme des employés présents dans ces cafés à la date d'aujourd'hui.
-- Les employés qui sont présents actuellement sont ceux dont la date de fin de leur poste est nulle.
-- Les directeurs ne figurent pas dans le nombre d'employés.
select SUM(nb) as nb_employes
from (select count(*)  as nb
from poste 
join cafe
on cafe.id_cafe = poste.id_cafe
where poste.date_fin is null
group by cafe.code_postal
having cafe.code_postal like '75%')

-- b) Extraire l’ingrédient le plus utilisé dans chaque département.
-- L'utilisation d'un ingredient dans une commande varie en fonction de la taille de la boisson et du nombre commandé de cet item dans la commande.
-- L'utilisation d'un ingredient dans une commande pour un item est égal au nombre commandé de fois de cet item * quantité d'ingrédients nécessaires pour la taille commandé.
-- On somme le tout et on récupère le max de l'utilisation.
select max(utilisation),nom_ingredient,substr(code_postal,0,3)
from(
select sum(c.nombre*ci.nombre) as utilisation ,ing.nom as nom_ingredient , code_postal
from commande
join cafe
on cafe.id_cafe = commande.id_cafe
join commande_item ci
on ci.id_commande= commande.id_commande
join item i
on ci.id_item = i.id_item
join composition c
on ( c.id_item = i.id_item and ci.taille= c.taille)
join ingredient ing
on ing.id_ingredient = c.id_ingredient
group by ing.nom, cafe.code_postal)
group by substr(code_postal,0,3)


-- c) selection du cafe ayant la masse salariale la plus basses
-- L'idée est de trouver une table regroupant le salaire des employés avec l'information café nous permettant de faire un group.
-- Le group associé de sum, nous permet de faire la somme de tous les salaires des employés d'un café pour une année donnée (ici 2016)
-- On ordonne par ordre décroissant.
select bb.pays, bb.code_postal  as [cafe],  sum(aa.montant) as [masse salariale] from  poste 
join Salaire  aa 
on poste.id_personne = aa.id_personne 
join  CAFE bb
on bb.id_cafe = poste.id_cafe 
where aa.annee = 2016
group by  poste.id_cafe order by [masse salariale] DESC


-- d.Extraire la boisson la moins vendue entre 00h00 et 11h59 pour chaque café. (Colonne 1: cafe, colonne 2: boisson, colonne 3: quantite)
-- Nous séparons les commandes en deux. Les commandes faites avec menus et les commandes faites sans.
-- On récupère que les commandes faites entre 00h00 et 11h59 et on prend que les boissons.
-- Dans un menu, les boissons commandées sont de l'ordre de 1 . Sans menu, on se base sur le nombre.
-- Après on somme le nombre pour chaque boisson dans chaque café et on récupère le minimum.
select id_cafe, nom as boisson , min(quantite_totale) quantite
from(
select id_cafe, id_item, nom, sum(nombre) quantite_totale
from(
-- ventes sans menus
select id_cafe,commande.id_commande,boissons.id_item, nom, nombre
from commande
join commande_item ci 
on ci.id_commande = commande.id_commande
join  (select * from item  where type = 'BOISSON') as boissons
on boissons.id_item = ci.id_item
where time(commande.heure) >= time('00:00') and time(commande.heure) <= time('11:59')

union 
-- ventes avec menus
select id_cafe,commande.id_commande, boissons.id_item, nom, 1
from commande
join menu_item mi
on commande.id_menu = mi.id_menu
join  (select * from item  where type = 'BOISSON') as boissons
on boissons.id_item = mi.id_item
where time(commande.heure) >= time('00:00') and time(commande.heure) <= time('11:59')
)
group by id_cafe, id_item)
group by id_cafe


-- e.Extraire les cafés n’ayant pas encore ouvert (sans employés). (Colonne 1: cafe)
-- On récupére le nombre d'employé par café. On fait un count et on ne garde que les cafés avec nombre d'employé == NULL
select  pays, code_postal from CAFE as bb
left join  (select id_cafe, count(id_personne) as [ttl poste] from poste group by poste.id_cafe ) as cc
on bb.id_cafe = cc.id_cafe
where  [ttl poste] IS NULL

--f extraire stock du cafe 92240
-- On fait les jointures nécessaires afin d'obtenir les bonnes correspondances entre les items name par café. On filtre par code postal. 
-- On présente les résutlats de manière filtrée avec un CASE.
select  cc.nom,pays,code_postal, stock,  
(CASE 
	WHEN stock >= 1000 THEN  'OK'
	WHEN stock >= 750 and stock <= 999 THEN  'en stock'
	WHEN stock >= 500 and stock <= 749 THEN  'pas d urgence'
	WHEN stock >= 250 and stock <=499 THEN  'urgence'
	WHEN stock >= 1 and stock <= 249 THEN  'prioritaire'
	ELSE
        'Rupture de stock'
    END) as 'A commander' 	from stock aa
join Ingredient cc on aa.id_ingredient = cc.id_ingredient
join cafe bb
on aa.id_cafe = bb.id_cafe where code_postal = '92240'

-- g.  Extraire le bénéfice moyen de chaque pays sur l’ensemble des produits vendus
-- Le bénéfice est calculé de la façon suivante : prix de vente - prix d'achat
-- Le prix de vente de chaque boisson est précisé dans la table de la carte en fonction de la taille, le prix de vente d'un accompagnement est précisé dans la table dans le champ 'prix_petiti'.
-- Le prix d'achat est la somme des prix d'achat des ingrédients qui le compose.
-- Lorsqu'il s'agit d'un client VIP, le prix de vente est réduit de 10%.
-- Lorsque la commande comprend un menu, le prix de vente est réduit de la réduction du menu (en pourcentage)
-- Dans la requête, on sépare les ventes faites avec menus et celles sans menus.
-- Le bénéfice moyen pour chaque pays veut dire la moyenne des bénéfices des cafés dans le pays auquel ils appartiennent.

select AVG(benefice_cafe) as BenefMoyen ,pays
FROM (
-- Calcul des benefices par café avec leur pays
select SUM(prix_vente_final - prix_achat) as benefice_cafe , id_cafe,pays
from(
-- Récupération des ventes sans menus 
select (CASE WHEN id_vip is not null THEN prix_vente  - prix_vente*0.1  ELSE prix_vente END) prix_vente_final , prix_achat, pays, cafe.id_cafe
from commande 
join commande_item ci 
on ci.id_commande = commande.id_commande
join cafe 
on cafe.id_cafe = commande.id_cafe
join (
select i.id_item as id_item, carte.code_pays,sum(ing.prix * c.nombre) prix_achat, c.taille, (CASE WHEN taille = 'PETITI' THEN carte.prix_petiti  WHEN taille = 'MOYENNI' THEN carte.prix_moyenni  WHEN taille = 'LARGI' THEN carte.prix_largi END) as prix_vente
from item i
join carte
on carte.item_id = i.id_item
join  composition c
on c.id_item = i.id_item
join ingredient ing
on ing.id_ingredient = c.id_ingredient
group by i.id_item,carte.code_pays,c.taille) table_prix
on ci.id_item = table_prix.id_item and table_prix.code_pays = cafe.pays and table_prix.taille = ci.taille

UNION

-- Récupération des ventes avec menus
select (CASE WHEN id_vip is not null THEN prix_vente  - prix_vente*0.1  - prix_vente * (reduction/100.0)ELSE prix_vente - prix_vente * (reduction/100) END) prix_vente_final , prix_achat, pays , cafe.id_cafe
from menu m
join commande 
on m.id_menu = commande.id_menu
join menu_item mi 
on mi.id_menu = m.id_menu
join cafe 
on cafe.id_cafe = commande.id_cafe
join (
select i.id_item as id_item, carte.code_pays,sum(ing.prix * c.nombre) prix_achat, c.taille, (CASE WHEN taille = 'PETITI' THEN carte.prix_petiti  WHEN taille = 'MOYENNI' THEN carte.prix_moyenni  WHEN taille = 'LARGI' THEN carte.prix_largi END) as prix_vente
from item i
join carte
on carte.item_id = i.id_item
join  composition c
on c.id_item = i.id_item
join ingredient ing
on ing.id_ingredient = c.id_ingredient
group by i.id_item,carte.code_pays,c.taille) table_prix
on mi.id_item = table_prix.id_item and table_prix.code_pays = cafe.pays and table_prix.taille = commande.taille_menu

)
group by id_cafe)
group by pays

-- h // Extraire le top 10 des cafés payant le mieux leurs employés ayant plus de deux ans d’expérience.
-- On cherche à obtenir un tableau faisant la moyenne des employés ayant au moins 2 ans d'ancienneté (on fait ici la différence entre la date actuelle
-- et la date d'embauche  date('now','-2 year') ) . On groupe par café. On ordonne par ordre décroissant et on fixe la limite à 10.
select cc.code_postal ,avg(montant) as [Salaire moyen] from poste as aa
join salaire as ss
on ss.id_personne = aa.id_personne
join cafe as cc
on cc.id_cafe = aa.id_cafe
where aa.date_debut <  date('now','-2 year') and aa.date_fin is null and annee = '2016' 
group by aa.id_cafe order by [Salaire moyen] desc  LIMIT 10;


-- i // Extraire le nombre moyen de ventes réalisées pour chaque heure par un employé ayant moins d’1 an d’expérience 
-- On filtre les employées ayant moins d'un an d'expérience.
-- On fait le total par employé du nombre de vente par heure par deux select sur la table commandes et la table poste)

select h as Heure , avg(nombre_vente_par_heure) as NbVentes
from(select count(*) as nombre_vente_par_heure,strftime('%H',heure) h,id_vendeur
from commande 
where id_vendeur in (select id_personne
from (select id_personne,  SUM( (CASE WHEN date_fin is null then julianday('now') else julianday(date_fin) end) - julianday(date_debut) ) as anciennete from poste group by id_personne )
where anciennete <366
)
group by id_vendeur,strftime('%H',heure))
group by h

-- j. Extraire le chiffre d’affaire moyen des cafés ayant un espace de coworking et celui des cafés n’en ayant pas
-- Le chiffre d'affaires représente la somme des ventes des commandes pour chaque café.
-- Le prix de vente de chaque boisson est précisé dans la table de la carte en fonction de la taille, le prix de vente d'un accompagnement est précisé dans la table dans le champ 'prix_petiti'.
-- Lorsqu'il s'agit d'un client VIP, le prix de vente est réduit de 10%.
-- Lorsque la commande comprend un menu, le prix de vente est réduit de la réduction du menu (en pourcentage)
-- Dans la requête, on sépare les ventes faites avec menus et celles sans menus.
-- Ensuite on somme les prix de vente en gardant le type du café (coworking ou pas)
-- On fait la moyenne pour chacun des types de cafés

select AVG(CA) as CA_moyen, coworking
from(
select SUM(prix_final * nombre) as CA, coworking,id_cafe
from
(
-- Commandes sans menus
select (  CASE WHEN est_vip THEN prix - prix * 0.1
ELSE prix 
END)  as prix_final , coworking,id_cafe ,nombre
from(

select  (CASE WHEN ci.taille == 'PETITI' THEN
        c.prix_petiti
		WHEN ci.taille='MOYENNI' THEN
		c.prix_moyenni
		WHEN ci.taille='LARGI' THEN
		c.prix_largi
    ELSE
        c.prix_petiti
    END) as prix, ci.nombre as nombre, coworking,(commande.id_vip IS NOT NULL) est_vip,cafe.id_cafe as id_cafe 
from commande
join cafe
on cafe.id_cafe = commande.id_cafe
join commande_item ci
on ci.id_commande= commande.id_commande
join carte c
on c.item_id = ci.id_item and cafe.pays= c.code_pays)

UNION

-- Commandes avec menus
select (  CASE WHEN est_vip THEN prix - prix * (reduction/100.0)
ELSE prix - prix * (reduction/100.0)
END) as prix_final , coworking, id_cafe,1
from(
select (CASE WHEN commande.taille_menu == 'PETITI' AND i.type='BOISSON' THEN
        c.prix_petiti
		WHEN commande.taille_menu='MOYENNI'  AND i.type='BOISSON' THEN
		c.prix_moyenni
		WHEN commande.taille_menu='LARGI'  AND i.type='BOISSON' THEN
		c.prix_largi
    ELSE
        c.prix_petiti
    END) as prix,  (commande.id_vip IS NOT NULL) est_vip, coworking, cafe.id_cafe as id_cafe, (commande.id_menu IS NOT NULL) en_menu, commande.id_commande,menu.reduction as reduction
from menu
join commande
on menu.id_menu =  commande.id_menu 
join cafe
on cafe.id_cafe = commande.id_cafe
join menu_item mi
on mi.id_menu= commande.id_menu
join carte c
on c.item_id = mi.id_item and cafe.pays= c.code_pays
join item i
on i.id_item = c.item_id)
)
group by id_cafe)
group by coworking

-- K // Extraire la moyenne des notes attribuées pour chaque manager aux employés sous leurs  ordres
select * from poste as aa
join salaire as bb
on aa.id_personne = bb.id_personne
inner join 
select id_personne as 'id_mgr' from  poste where domaine = 'MANAGER'

select * from poste  as aa
inner join  (select id_personne as 'id_mgr' from  poste where domaine = 'MANAGER' and date_fin is NULL group by id_personne ) as bb
on aa.id_manager = bb.id_mgr
join (select note, id_personne from salaire where annee = 2016 )as cc
on aa.id_personne = cc.id_personne



-- l. Extraire le nombre de vente pour le vendeur « BorneRapide » pour le magasin du 92240 ainsi que le nombre de vente pour l’ensemble des autres vendeurs
-- Nous avons en BDD l'id du vendeur BorneRapide == 0
-- Nous filtrons les café par code postal ensuite on récupère toutes les commandes où l'id vendeur = 0 puis les autres
select  (CASE WHEN vendeur ==0 THEN
        'Bornelibre'
    ELSE
        'Autres'
    END) as type_vendeur , count(*) nb_vente
from (select (id_vendeur !=0) as vendeur
from cafe 
join commande c 
on c.id_cafe = cafe.id_cafe
where code_postal = '92240')
group by vendeur

-- m. Extraire l’ensemble des menus pour la France et l’Angleterre classés de la plus importante réduction à la moins importante
-- Les réductions sont dans la table Menu, nous faisons un tri sur les réductions des menus des 2 pays
select *
from menu
where code_pays IN ('FRANCE' ,'ANGLETERRE')
ORDER BY reduction DESC

-- n. Extraire le top 10 des employés ayant le plus changé de fonction
-- Le nombre de changements correspondent au nombre de poste que chaque personne a occupé dans sa carrière
-- Nous groupons par personne et nous compte le nombre d'enregistrements dans Poste
select id_personne,count(*) as nb_changements
from poste
group by id_personne
ORDER BY nb_changements DESC
LIMIT 10;

-- o. Extraire pour chaque département, la proportion d’homme et la proportion de femmes qui sont clients.
-- On suppose que les départements sont déduits des 2 premiers chiffres du code postal
-- Nous ne détenons que les genres des clients VIP. 
-- Nous regroupons les commandes par département et par pays (si jamais il y a 2 cafés qui ont le même numéro de dept dans 2 pays différents) puis on calcule le pourcentage
select substr(cafe.code_postal,0,3),cafe.pays,round(100.0 * sum(cv.genre ='M')/count(*),2),round(100.0 * sum(cv.genre='Ms')/count(*),2)
from client_vip cv
join commande c
on c.id_vip = cv.id_client
join cafe 
on cafe.id_cafe = c.id_cafe
group by substr(cafe.code_postal,0,3), cafe.pays

-- p. Extraire la liste des Items les plus vendus en France pour les moins de 40 ans. 
-- Nous filtrons sur les commandes faites dans des cafés en France pour des clients VIP dont la date de naissance indique moins ou égal à 40 ans.
-- Puis on regroupe par item et on somme la quantité commandée par item.
select i.nom, SUM(ci.nombre) as quantite
from commande
join cafe 
on cafe.id_cafe = commande.id_cafe
join commande_item ci
on commande.id_commande = ci.id_commande
join client_vip cv
on cv.id_client = commande.id_vip
join item i
on i.id_item= ci.id_item
where cafe.pays='FRANCE' and (date('now') - date(cv.date_naissance) ) <=40 and commande.id_vip IS NOT NULL
group by ci.id_item
order by quantite DESC
