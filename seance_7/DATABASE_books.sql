CREATE TABLE profile (
  nom varchar(20),
  age integer,
  adresse_domicile varchar(100),
  telephone char(10),
  email_domicile varchar(50),
  adresse_travail varchar(100),
  poste varchar(20),
  telephone_travail char(10),
  identifiant_travail varchar(10),
  identifiant_ecole varchar(10),
  email_ecole varchar(50),
  adresse_ecole varchar(100)
);

INSERT INTO profile VALUES (
  'Bill Cole',
  16, 
  '84, Vista Court, Middletown, CA 95461',
  '7078883215',
  'bm3391@gmail.com',
  null,
  null,
  null,
  null,
  '0002',  
  'cole_bill@vista_high.edu',
  '1A, Rue de lÉcole, Middletown, CA 95461'
);



INSERT INTO profile VALUES (
  'Ted Kyes',
  17, 
  '101, Brown Lane, Middletown, CA 95461',
  '7072123351',
  'tkyes@yahoo.com',
  '21, Avenue Greenview, Middletown, CA 95463',
  'employé',
  '7072813213',
  'A0-2113',
  '93113',
  'kyes_ted@vista_high.edu',
  '30, Vista Square, Middletown, CA 95460'
);
