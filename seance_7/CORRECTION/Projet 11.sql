create table restaurant(
id integer primary key,
nom varchar (20),
description varchar(100),
note decimal,
telephone char(10),
heures varchar(100));

create table catégories(
id char(2) primary key,
nom varchar(20),
description varchar(200))

create table plat(
id integer primary key,
nom varchar(100),
description varchar(200),
est_epice bool)

create table adresse(
id integer primary key,
numero_de_rue varchar(100),
ville varchar(20),
etat varchar(15),
google_map_link varchar(100),
id_restaurant integer unique references restaurant(id));

create table avis(
id integer primary key,
note decimal(50),
description varchar(100),
dates date,
id_restaurant integer references restaurant(id));

create table categorie_plat (
id_catégories varchar references catégories(id),
id_plat integer references plat(id),
primary key (id_catégories,id_plat),
prix money)


INSERT INTO restaurant VALUES (
  1,
  'Bytes de Chine',
  'Cuisine chinoise délicieuse',
  3.9,
  '6175551212',
  'Lun - Ven 9h00 à 21h00, Week-ends 10h00 à 23h00'
);

INSERT INTO adresse VALUES (
  1,
  'Busy Street',
  'Chinatown',
  'MA 02139',
  'http://bit.ly/BytesDeChine',
	1
);


INSERT INTO avis VALUES (
  1,
  5.0,
  'J''aimerais organiser une autre fête d''anniversaire chez Bytes de Chine !',
  '2020-05-22',
  1
);

INSERT INTO avis VALUES (
  2,
  4.5,
  'Mis à part un petit malentendu, je lui donnerais 5.0 !',
  '2020-01-04',
  1
);

INSERT INTO avis VALUES (
  3,
  3.9,
  'Un endroit raisonnable pour manger le midi si vous êtes pressé !',
  '2020-03-15',
  1
);

