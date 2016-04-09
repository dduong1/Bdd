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
