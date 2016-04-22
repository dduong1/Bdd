INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,100,'FRANCE','75001',1)
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,50,'ANGLETERRE','20000',2)
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,50,'FRANCE','75015',3);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,50,'MAROC','20000',4);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (0,1,500,'FRANCE','92240',5);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,150,'MAROC','2000',6);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,1500,'FRANCE','92240',7);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (0,1,500,'FRANCE','94100',8);
INSERT INTO `CAFE`('coworking','bornes',`capacite`,`pays`,`code_postal`,'id_cafe') VALUES (1,1,50,'ESPAGNE','20000',9);

--- Personne
-- CAFE 1
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (1,'Monsieur','1',1,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (2,'Monsieur','1',1,'2014-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (3,'Madame','1',1,'2015-09-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (4,'Monsieur','1',1,'2015-02-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (5,'Madame','1',1,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (6,'Monsieur','1',1,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (7,'Monsieur','1',1,'2013-01-02',NULL);

INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (29,'Monsieur','1',1,'2013-01-01',NULL);

-- CAFE 2
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (8,'Monsieur','1',2,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (9,'Monsieur','1',2,'2014-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (10,'Madame','1',2,'2015-09-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (11,'Monsieur','1',2,'2015-02-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (12,'Madame','1',2,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (13,'Monsieur','1',2,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (14,'Monsieur','1',2,'2013-01-02',NULL);

INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (30,'Monsieur','1',2,'2013-01-01','2013-06-01');
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (31,'Madame','1',2,'2013-06-01',NULL);

-- CAFE 4
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (15,'Monsieur','1',4,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (16,'Monsieur','1',4,'2014-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (17,'Monsieur','1',4,'2015-02-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (18,'Madame','1',4,'2015-09-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (19,'Madame','1',4,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (20,'Monsieur','1',4,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (21,'Monsieur','1',4,'2013-01-02',NULL);
-- a change de cafe
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (28,'Monsieur','1',4,'2015-01-03',NULL);

INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (30,'Monsieur','1',4,'2013-06-02',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (32,'Monsieur','1',4,'2013-01-02','2013-06-02');

-- CAFE 5
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (22,'Monsieur','1',5,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (23,'Monsieur','1',5,'2014-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (24,'Monsieur','1',5,'2015-02-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (25,'Madame','1',5,'2015-09-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (26,'Madame','1',5,'2015-01-01',NULL);
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (27,'Monsieur','1',5,'2015-01-01',NULL);
-- va changer de cafe
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (28,'Monsieur','1',5,'2013-01-02','2015-01-02');

-- demissionera
INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (34,'Monsieur','1',5,'2013-01-02','2014-01-01');

INSERT INTO `Personne`(`id_personne`,`titre`,`rib`,`id_cafe`,`date_debut`,`date_fin`) VALUES (33,'Madame','1',5,'2013-01-02',NULL);


----------------------------------------------------------------------- POSTES----------------------------------------------
-- Cafe 1
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (29,'2013-01-01',NULL,1,'AFFILIE',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (7,'2013-01-02',NULL,1,'MANAGER',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (1,'2015-01-01',NULL,1,'BARISTA',7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (2,'2014-01-01','2015-01-01','CAISSE',1,7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (2,'2015-01-02',NULL,'BARISTA',1,7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (3,'2015-09-01',NULL,'BARISTA',1,7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (4,'2015-02-01',NULL,'BARISTA',1,7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (5,'2015-01-01',NULL,'CAISSE',1,7);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (6,'2015-01-01',NULL,'BARISTA',1,7);

-- Cafe 2
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (30,'2013-01-01','2013-06-01',2,'DIRECTEUR',NULL);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (31,'2013-06-01',NULL,2,'DIRECTEUR',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (14,'2013-01-02',NULL,2,'MANAGER',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (8,'2015-01-01',NULL,2,'BARISTA',14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (9,'2014-01-01','2015-01-01','BARISTA',2,14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (9,'2015-01-02',NULL,'CAISSE',2,14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (10,'2015-09-01',NULL,'BARISTA',2,14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (11,'2015-02-01',NULL,'BARISTA',2,14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (12,'2015-01-01',NULL,'CAISSE',2,14);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (13,'2015-01-01',NULL,'BARISTA',2,14);

--Cafe4
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (32,'2013-01-02','2013-06-02',4,'DIRECTEUR',NULL);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (30,'2013-06-02',NULL,4,'DIRECTEUR',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (21,'2013-01-02',NULL,4,'MANAGER',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (15,'2015-01-01',NULL,4,'BARISTA',21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (16,'2014-01-01','2015-01-01','BARISTA',4,21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (16,'2015-01-02',NULL,'CAISSE',4,21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (17,'2015-02-01',NULL,'BARISTA',4,21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (18,'2015-09-01',NULL,'BARISTA',4,21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (19,'2015-01-01',NULL,'CAISSE',4,21);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (20,'2015-01-01',NULL,'BARISTA',4,21);
-- a change de cafe
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (28,'2015-01-03',NULL,'CAISSE',4,21);

-- Cafe 5
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (33,'2013-01-02',NULL,5,'AFFILIE',NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (23,'2014-01-01',NULL,5,'MANAGER',NULL);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (34,'2013-01-02','2014-01-01','MANAGER',5,NULL);

INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`id_cafe`,'domaine','id_manager') VALUES (22,'2015-01-01',NULL,5,'BARISTA',23);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (24,'2015-09-01',NULL,'BARISTA',5,23);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (25,'2015-02-01',NULL,'BARISTA',5,23);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (26,'2015-01-01',NULL,'CAISSE',5,23);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (27,'2015-01-01',NULL,'BARISTA',5,23);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (28,'2013-01-02','2014-01-01','BARISTA',5,34);
INSERT INTO `Employe`(`id_personne`,`date_debut`,`date_fin`,`domaine`,`id_cafe`,`id_manager`) VALUES (28,'2014-01-02','2015-01-02','BARISTA',5,23);


------------------------------------------------------- Salaires --------------------------------------------------------------
--Cafe 1
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (1,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (1,2016,1800,5);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (2,2014,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (2,2015,1800,5);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (2,2016,2000,5);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (3,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (3,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (4,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (4,2016,1400,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (5,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (5,2016,1500,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (6,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (6,2016,1500,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (7,2013,1500,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (7,2014,2000,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (7,2015,2100,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (7,2016,2300,8);

--Cafe 2
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (8,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (8,2016,1300,5);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (9,2014,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (9,2015,1800,5);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (9,2016,2000,5);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (10,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (10,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (11,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (11,2016,1300,5);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (12,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (12,2016,1500,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (13,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (13,2016,1250,3);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (14,2013,1500,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (14,2014,2000,8);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (14,2015,2100,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (14,2016,2310,8);

--Cafe 4
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (15,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (15,2016,1800,9);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (16,2014,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (16,2015,1400,6);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (16,2016,2000,8);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (17,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (17,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (18,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (18,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (19,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (19,2016,1500,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (20,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (20,2016,14000,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (21,2013,1500,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (21,2014,1900,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (21,2015,2100,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (21,2016,2300,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (28,2013,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (28,2014,1250,2);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (28,2015,1300,2);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (28,2016,1600,7);


--Cafe 5
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (22,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (22,2016,1800,9);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (24,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (24,2016,1700,8);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (25,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (25,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (26,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (26,2016,1400,6);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (27,2015,1200,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (27,2016,1500,7);

INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (34,2013,1500,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (23,2014,1500,NULL);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (23,2015,1800,7);
INSERT INTO `Salaire`(`id_personne`,`annee`,`montant`,`note`) VALUES (23,2016,2100,7);


--------------- Items -------------------------------------
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (1,'LATTE','BOISSON');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (2,'LATTE MACCHIATTO','BOISSON');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (3,'FRAPPUCCINO CARAMEL','BOISSON');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (4,'JAVA CHIP','BOISSON');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (5,'CHAI LATTE','BOISSON');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (6,'FRAPPUCCINO FRAISE','BOISSON');

INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (7,'PANCAKE','ACCOMPAGNEMENT');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (8,'MUFFIN','ACCOMPAGNEMENT');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (9,'CHEESECAKE FRAMBOISE','ACCOMPAGNEMENT');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (10,'CHEESECAKE CITRON','ACCOMPAGNEMENT');
INSERT INTO `Item`(`id_item`,`nom`,`type`) VALUES (11,'SCONE CANNELLE','ACCOMPAGNEMENT');

------------- Carte ---------------------------------------------
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',1,3,4,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',2,3,3.5,4);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',3,4,5,6);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',4,4,5,6);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',5,3,4,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',6,4,5,6);

INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',7,3,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',8,3,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',9,4,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('FRANCE',10,4.5,NULL,NULL);


INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',1,3,4,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',2,3,3.5,4);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',3,4,5,6);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',4,4,5,6);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',5,3,4,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',6,4,5,6);
                                                                                              
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',7,2,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',8,2,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',9,3,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',10,4,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ANGLETERRE',11,3,NULL,NULL);

INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('MAROC',1,3.5,4.5,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('MAROC',2,3,3.5,4);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('MAROC',3,4,5,6);

INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('MAROC',7,4,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('MAROC',8,4,NULL,NULL);

INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ESPAGNE',1,3.5,4.5,5);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ESPAGNE',2,3,3.5,4);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ESPAGNE',3,4,5,6);
                                                                                              
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ESPAGNE',7,3,NULL,NULL);
INSERT INTO `Carte`(`code_pays`,`item_id`,'prix_petiti','prix_moyenni','prix_largi') VALUES ('ESPAGNE',8,3.5,NULL,NULL);


----------------------------------- Ingredients ------------------------------------------------------
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (1,'LAIT',1);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (2,'CAFE',1.5);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (3,'CHOCOLAT',2);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (4,'FRAISE',2.5);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (5,'CARAMEL',2);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (6,'THE',2.5);
INSERT INTO `Ingredient`(`id_ingredient`,`nom`,`prix`) VALUES (7,'CREME',1.5);

---------------------------------- Composition --------------------------------------------------------
-- Latte
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,1,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,2,'PETITI',1);

INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,1,'MOYENNI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,2,'MOYENNI',1);

INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,1,'LARGI',3);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (1,2,'LARGI',2);

-- LATTE MACCHIATTO
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,1,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,2,'PETITI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,1,'MOYENNI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,2,'MOYENNI',2);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,1,'LARGI',3);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (2,2,'LARGI',3);

-- FRAPPUCCINO CARAMEL
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,7,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,5,'PETITI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,7,'MOYENNI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,5,'MOYENNI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,7,'LARGI',3);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (3,5,'LARGI',1);

-- JAVA CHIP
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,7,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,2,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,3,'PETITI',0.5);
                                                                                                                                                              
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,7,'MOYENNI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,2,'MOYENNI',1.5);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,3,'MOYENNI',0.75);
                                                                                                                                                             
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,7,'LARGI',3);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,2,'LARGI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (4,3,'LARGI',1);

-- CHAI LATTE
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,6,'PETITI',0.5);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,1,'PETITI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,6,'MOYENNI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,1,'MOYENNI',1.5);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,6,'LARGI',1.5);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (5,1,'LARGI',2);

-- FRAPPUCCINO FRAISE
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,7,'PETITI',1);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,4,'PETITI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,7,'MOYENNI',2);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,4,'MOYENNI',1);
                                                                               
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,7,'LARGI',3);
INSERT INTO `Composition`(`id_item`,`id_ingredient`,`taille`,`nombre`) VALUES (6,4,'LARGI',1);


--------------------------------------- Stock -----------------------------------------
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (1,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (2,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (3,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (4,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (5,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (6,1,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (7,1,100);

INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (1,2,10);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (2,2,10);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (3,2,15);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (4,2,20);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (5,2,15);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (6,2,70);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (7,2,40);

INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (1,4,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (2,4,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (5,4,150);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (7,4,50);

INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (1,5,100);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (2,5,20);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (5,5,150);
INSERT INTO `Stock`(`id_ingredient`,`id_cafe`,`stock`) VALUES (7,5,40);

------------------------------------------- Menu -----------------------------------------
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (1,'CONTINENTAL',10,'FRANCE');
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (2,'GOUTER',15,'FRANCE');
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (3,'GOUTER',10,'MAROC');
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (4,'GOUTER',15,'ESPAGNE');
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (5,'GOUTER FROID',15,'ANGLETERRE');
INSERT INTO `Menu`(`id_menu`,`nom`,`reduction`,`code_pays`) VALUES (6,'GOUTER CHAUD',15,'ANGLETERRE');

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (1,1);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (1,9);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (1,3);

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (2,2);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (2,10);

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (3,2);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (3,10);

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (4,2);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (4,10);

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (5,4);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (5,8);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (5,10);

INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (6,2);
INSERT INTO `Menu_Item`(`id_menu`,`id_item`) VALUES (6,10);


----------------------------------------------- Client_vip -------------------------
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (1,'DUONG','DAVID','M','1983-06-01','PARIS');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (2,'MACHRAOUI','ISMAIL','M','1986-06-01','PARIS');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (3,'AZMI','ISMAIL','M','1990-06-01','CASABLANCA');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (4,'TORRES','ALEJANDRO','M','1996-06-01','SANTANDER');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (5,'OBAMA','BARACK','M','1956-06-01','WASHINGTON');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (6,'CLINTON','HILLARY','Ms','1946-06-01','WASHINGTON');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (7,'RAMIREZ','JUANITA','Ms','1956-06-01','SANTANDER');
INSERT INTO `Client_VIP`(`id_client`,`nom`,`prenom`,`genre`,`date_naissance`,`adresse`) VALUES (8,'HAJA','FADILA','Ms','1976-06-01','MARRAKECH');


------------------------------------------------ COMMANDE ----------------------------
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (1,'17:00:00','CB',NULL,0,1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (1,1,'PETITI',1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (1,9,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (2,'18:30:00','CB',1,1,1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (2,1,'LARGI',1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (2,10,NULL,1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (2,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (3,'18:30:00','ESPECES',2,2,1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (3,4,'LARGI',1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (3,8,NULL,1);


--- Commande en menus
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taile_menu') VALUES (13,'15:30:00','ESPECES',2,2,1,1,'PETITI');
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taile_menu') VALUES (14,'8:20:00','ESPECES',2,2,1,1,'PETITI');
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taile_menu') VALUES (15,'10:03:00','ESPECES',NULL,2,1,2,'MOYENNI');

-- Cafe 2
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (4,'18:30:00','ESPECES',NULL,9,2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (4,4,'LARGI',1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (4,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (5,'10:30:00','ESPECES',NULL,8,2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (5,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (6,'09:30:00','CB',5,11,2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (6,3,'MOYENNI',2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (6,8,NULL,1);

--- Commande en menus
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu''taille_menu') VALUES (16,'7:30:00','CB',2,5,2,5,'PETITI');
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu''taille_menu') VALUES (17,'18:20:00','ESPECES',2,0,2,6,'PETITI');
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu''taille_menu') VALUES (18,'10:03:00','ESPECES',NULL,0,2,6,'PETITI');

-- Cafe 4
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (7,'18:30:00','ESPECES',NULL,16,4);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (7,3,'LARGI',2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (7,8,NULL,2);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (8,'10:30:00','ESPECES',NULL,17,4);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (8,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (9,'09:30:00','ESPECES',NULL,18,4);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (9,3,'MOYENNI',2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (9,8,NULL,1);

-- Commande en menu
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taille_menu') VALUES (19,'09:30:00','ESPECES',NULL,18,4,3,'PETITI');


-- Cafe 5
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (10,'17:30:00','ESPECES',NULL,0,5);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (10,4,'LARGI',1);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (10,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (11,'10:30:00','ESPECES',4,0,5);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (11,8,NULL,1);

INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe') VALUES (12,'09:30:00','CB',4,0,5);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (12,3,'MOYENNI',2);
INSERT INTO `Commande_Item`(`id_commande`,`id_item`,`taille`,`nombre`) VALUES (12,7,NULL,2);


INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taille_menu') VALUES (20,'09:30:00','CB',NULL,0,5,1,'PETITI');
INSERT INTO `Commande`('id_commande',`heure`,`moyen`,`id_vip`,`id_vendeur`,'id_cafe','id_menu','taille_menu') VALUES (21,'19:30:00','CB',NULL,0,5,2,'MOYENNI');
