-- a)
select SUM(nb) as nb_employes
from (select count(*)  as nb
from employe 
join cafe
on cafe.id_cafe = employe.id_cafe
group by cafe.code_postal
having cafe.code_postal like '75%')

-- b) en supposant que les 2 premiers chiffres donnent le département
select max(utilisation),nom_ingredient,code_postal
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
group by code_postal