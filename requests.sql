-- a)
select SUM(nb) as nb_employes
from (select count(*)  as nb
from employe 
join cafe
on cafe.id_cafe = employe.id_cafe
group by cafe.code_postal
having cafe.code_postal like '75%')

-- b) en supposant que les 2 premiers chiffres donnent le département
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
select bb.pays, bb.code_postal  as [cafe],  sum(aa.montant) as [masse salariale] from  employe 
join Salaire  aa 
on employe.id_personne = aa.id_personne 
join  CAFE bb
on bb.id_cafe = employe.id_cafe 
where aa.annee = 2016
group by  employe.id_cafe order by [masse salariale] DESC


--select bb.pays, bb.code_postal  as [cafe],  sum(aa.montant) as [masse salariale] from  employe 
--join (select * from Salaire where annee = 2016.) as aa 
--on employe.id_personne = aa.id_personne 
--join  (select  id_cafe, pays, code_postal from CAFE) as bb
--on bb.id_cafe = employe.id_cafe
--group by  employe.id_cafe order by [masse salariale] DESC

-- d.Extraire la boisson la moins vendue entre 00h00 et 11h59 pour chaque café. (Colonne 1: cafe, colonne 2: boisson, colonne 3: quantite)
-- a faire : changer le type pour le metre sous format date
select id_cafe, nom, min(ee.pp) from (
select  id_cafe, nom, count (nombre) as pp from Commande as cc
inner join (select  * from  commande_item as aa
join  (select * from item  where type in ('BOISSON')) as bb
on aa.id_item = bb.id_item) as dd
on cc.id_commande = dd.id_commande  --where cc.heure > '#00:00:00# 'and cc.heure<'#11:59:00#'
group by id_cafe, nom order by pp ASC) as ee group by ee.id_cafe


-- e.Extraire les cafés n’ayant pas encore ouvert (sans employés). (Colonne 1: cafe)

select  pays, code_postal from CAFE as bb
left join  (select id_cafe, count(id_personne) as [ttl employe] from employe group by employe.id_cafe ) as cc
on bb.id_cafe = cc.id_cafe
where  [ttl employe] IS NULL

--f extraire stock du cafe 92240
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

-- g  // Extraire le bénéfice moyen de chaque pays sur l’ensemble des produits vendus 


-- h // Extraire le top 10 des cafés payant le mieux leurs employés ayant plus de deux ans d’expérience.
-- ajouter de la data
select cc.code_postal ,avg(montant) as [Salaire moyen] from Employe as aa
join salaire as ss
on ss.id_personne = aa.id_personne
join cafe as cc
on cc.id_cafe = aa.id_cafe
where aa.date_debut <  date('now','-2 year') and aa.date_fin is null and annee = '2016' 
group by aa.id_cafe order by [Salaire moyen] desc  LIMIT 10;


-- i // Extraire le nombre moyen de ventes réalisées pour chaque heure par un employé ayant moins d’1 an d’expérience 

-- J // Extraire le chiffre d’affaire moyen des cafés ayant un espace de coworking et celui des cafés n’en ayant pas

select AVG(CA) as CA_moyen, coworking
from(
select SUM(prix_final * nombre) as CA, coworking,id_cafe
from
(
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
select * from employe as aa
join salaire as bb
on aa.id_personne = bb.id_personne
inner join 
select id_personne as 'id_mgr' from  employe where domaine = 'MANAGER'

select * from employe  as aa
inner join  (select id_personne as 'id_mgr' from  employe where domaine = 'MANAGER' and date_fin is NULL group by id_personne ) as bb
on aa.id_manager = bb.id_mgr
join (select note, id_personne from salaire where annee = 2016 )as cc
on aa.id_personne = cc.id_personne



-- l)id du vendeur BorneRapide == 0
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

-- m)
select *
from menu
where code_pays IN ('FRANCE' ,'ANGLETERRE')
ORDER BY reduction DESC

-- n)
select id_personne,count(*) as nb_changements
from employe
group by id_personne
ORDER BY nb_changements DESC
LIMIT 10;

-- o) en supposant que les departements sont deduits des 2 premiers chiffres
select substr(cafe.code_postal,0,3),cafe.pays, sum(cv.genre ='M'),sum(cv.genre='Ms')
from client_vip cv
join commande c
on c.id_vip = cv.id_client
join cafe 
on cafe.id_cafe = c.id_cafe
group by substr(cafe.code_postal,0,3), cafe.pays

-- p)
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
where cafe.pays='FRANCE' and (2016 - strftime('%Y',cv.date_naissance)) <=40 and commande.id_vip IS NOT NULL
group by ci.id_item
order by quantite DESC
