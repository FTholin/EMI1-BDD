CREATE TABLE utilisateurs (
    id INTEGER PRIMARY KEY,
    nom_utilisateur TEXT,
    email TEXT,
    date_adhesion DATE,
    score INTEGER
);

INSERT INTO utilisateurs (id, nom_utilisateur, email, date_adhesion, score)
VALUES 
(1, 'sonnynomnom', 'mbosence0@ycombinator.com', '2008-05-14', 185713),
(2, 'coler1', 'kmonkhouse1@indiatimes.com', '2011-12-11', 136965),
(3, 'lauracle', 'rkilfether2@independent.co.uk', '2011-05-14', 277721),
(4, 'kassablanca', 'trigard3@stanford.edu', '2006-10-30', 143478),
(5, 'yakovkagan', 'treggio4@sciencedirect.com', '2009-06-06', 242023),
(6, 'owodham5', 'lshortland5@fda.gov', '2016-07-15', 107823),
(7, 'ttroctor6', 'tblowfield6@ucoz.ru', '2007-06-23', 111915),
(8, 'bslora7', 'cdolle7@parallels.com', '2010-02-10', 292712),
(9, 'bgreener8', 'spearcey8@narod.ru', '2008-06-08', 212576),
(10, 'mmcmorland9', 'pjersch9@wunderground.com', '2013-06-12', 166508),
(11, 'elandera', 'jcopina@amazonaws.com', '2015-05-03', 130877),
(12, 'wbentinckb', 'isighartb@unblog.fr', '2010-12-17', 238525),
(13, 'tfogtc', 'rfolksc@soup.io', '2010-09-12', 201592),
(15, 'sclowneye', 'bgilmoure@webeden.co.uk', '2013-06-17', 282728),
(16, 'kabrahmf', 'tbarrittf@merriam-webster.com', '2008-08-11', 176189),
(17, 'jzimekg', 'jcorcutg@icio.us', '2013-05-14', 106783),
(18, 'ltizardh', 'hjigginsh@ftc.gov', '2015-04-05', 133655),
(19, 'clowingsi', 'mleipoldti@list-manage.com', '2011-09-27', 263633),
(20, 'dsheaj', 'alipyeatj@ow.ly', '2008-10-07', 169434),
(21, 'ablazik', 'aarpink@cnn.com', '2015-01-18', 273215),
(22, 'gsarfasl', 'rbellchamberl@nyu.edu', '2011-08-12', 263610),
(23, 'ehalmsm', 'bolsenm@seattletimes.com', '2007-12-11', 239528),
(24, 'dpenken', 'gruminn@chron.com', '2011-06-08', 160964),
(25, 'pbrunio', 'floggieo@exblog.jp', '2010-07-21', 136263),
(26, 'choyp', 'sbootlandp@digg.com', '2017-07-15', 229877),
(27, 'ldeshonq', 'bbazogeq@cbslocal.com', '2006-12-19', 167811),
(28, 'lfitzgibbonr', 'rboamr@qq.com', '2009-01-20', 292293),
(30, 'aheggt', 'vliddyt@squidoo.com', '2009-12-20', 256515),
(31, 'aepiletu', 'xklaessonu@feedburner.com', '2010-04-11', 206618),
(32, 'menevoldsenv', 'mcurrov@themeforest.net', '2010-02-13', 207336),
(33, 'jreamesw', 'gonraetw@census.gov', '2009-02-15', 223959),
(34, 'deastridgex', 'dbaylessx@biglobe.ne.jp', '2006-11-27', 243418),
(35, 'lbarnicotty', 'fmitroshinovy@seattletimes.com', '2009-06-24', 137365),
(36, 'bschaferz', 'phartoppz@unc.edu', '2014-09-07', 143826),
(37, 'cdymock10', 'hpelchat10@flavors.me', '2010-08-17', 131637),
(38, 'edreher11', 'irobins11@symantec.com', '2011-12-08', 121757),
(39, 'aovenell12', 'dmackenny12@webnode.com', '2011-08-18', 138990),
(40, 'penguinDev', 'studyhard.swe.2020@gmail.com', '2014-05-24', 112328),
(41, 'gbeddow14', 'jthunders14@ftc.gov', '2009-12-06', 162182),
(42, 'nconneely15', 'vosborn15@comsenz.com', '2011-07-10', 208629),
(43, 'ltukely16', 'mfavey16@google.nl', '2007-04-30', 175202),
(45, 'kconkling18', 'cfrantz18@washingtonpost.com', '2013-02-20', 215567),
(46, 'mamery19', 'amalby19@independent.co.uk', '2009-05-22', 261127),
(47, 'rbiagioni1a', 'cbonhan1a@flavors.me', '2013-01-21', 192974),
(48, 'tessex1b', 'xquinlan1b@myspace.com', '2008-08-30', 129352),
(49, 'calbone1c', 'miashvili1c@sphinn.com', '2015-12-16', 294442),
(50, 'khammer1d', 'rtuckie1d@miitbeian.gov.cn', '2009-08-17', 296222),
(51, 'rneate1e', 'sseville1e@yandex.ru', '2011-08-12', 116273),
(52, 'ckubec1f', 'kwodeland1f@answers.com', '2010-12-03', 162609),
(53, 'mrupel1g', 'ccotterell1g@phpbb.com', '2013-12-22', 146611),
(54, 'soloughane1h', 'jmucklo1h@parallels.com', '2011-02-20', 175391),
(55, 'grupert1i', 'rplaid1i@google.es', '2009-10-13', 263710),
(56, 'rbennett1j', 'asimnell1j@addtoany.com', '2006-12-21', 143524),
(57, 'jdurrant1k', 'cleavey1k@cargocollective.com', '2011-12-04', 236238),
(58, 'crogliero1l', 'btrenear1l@bravesites.com', '2018-07-26', 209589),
(59, 'mmackomb1m', 'fradolf1m@spotify.com', '2017-09-25', 265226),
(60, 'pspriddle1n', 'mpendre1n@wikimedia.org', '2007-12-06', 253316),
(61, 'awearne1o', 'detty1o@surveymonkey.com', '2012-08-26', 119410),
(62, 'vverecker1p', 'ccurwen1p@mail.ru', '2009-05-19', 271613),
(63, 'cbridell1q', 'eeyam1q@infoseek.co.jp', '2014-07-14', 203144),
(64, 'kbrosini1r', 'jquested1r@army.mil', '2007-04-08', 139040),
(65, 'dgroucock1s', 'asavage1s@gmpg.org', '2007-01-02', 181202),
(66, 'nwealthall1t', 'soblein1t@tripod.com', '2011-02-08', 231712),
(67, 'adorkins1u', 'svelde1u@tumblr.com', '2012-11-16', 270226),
(68, 'etill1v', 'aumney1v@tripadvisor.com', '2015-08-04', 164934),
(69, 'ctills1w', 'bquarry1w@ft.com', '2015-11-25', 300895),
(70, 'lcornewell1x', 'swoollons1x@1688.com', '2014-01-13', 218035),
(71, 'jlegerton1y', 'fgooderham1y@mediafire.com', '2008-02-17', 254381),
(72, 'ctootin1z', 'gmcneely1z@wufoo.com', '2010-01-16', 265266),
(73, 'lvlies20', 'klevecque20@technorati.com', '2009-06-02', 259968),
(74, 'bmckinless21', 'aspendley21@over-blog.com', '2012-06-12', 206947),
(75, NULL, NULL, NULL, NULL),
(76, 'rdoggett23', 'elindsley23@jimdo.com', '2012-05-16', 155382),
(77, 'jotaki', 'nschankel24@va.gov', '2011-12-20', 141722),
(78, 'cbearfoot25', 'mmutimer25@tripadvisor.com', '2009-01-21', 239000),
(79, 'amarmion26', 'lantonescu26@kickstarter.com', '2014-09-08', 292289),
(80, 'ishakshaft27', 'ahaffard27@1688.com', '2017-11-14', 160144),
(81, 'mdodsworth28', 'mledward28@cbsnews.com', '2015-04-18', 209753),
(82, 'tberceros29', 'vsimonsen29@com.com', '2015-05-27', 197499),
(83, 'yleving2a', 'nzorener2a@multiply.com', '2017-03-15', 151017),
(84, NULL, NULL, NULL, NULL),
(85, 'hscorah2c', 'mcaney2c@pinterest.com', '2011-02-26', 250286),
(86, 'hassandri2d', 'sharvison2d@pagesperso-orange.fr', '2010-08-26', 256099),
(87, 'apershouse2e', 'wlangfitt2e@wikia.com', '2013-03-09', 279929),
(88, 'qdewberry2f', 'kcheco2f@comsenz.com', '2013-08-03', 220350),
(89, 'laskin2g', 'mmarley2g@deviantart.com', '2011-07-25', 268026),
(90, 'sciementini2h', 'lcrenshaw2h@issuu.com', '2008-04-09', 294170),
(91, 'junuki89', 'nsurgeoner2i@engadget.com', '2013-08-29', 171038),
(92, 'jmuzzollo2j', 'bdummer2j@npr.org', '2007-03-30', 162312),
(93, 'cambrozewicz2k', 'rspreag2k@diigo.com', '2011-01-18', 143843),
(94, 'hcodlin2l', 'hbeeho2l@google.co.uk', '2008-09-06', 135527),
(95, 'cnoen2m', 'aharhoff2m@mtv.com', '2006-11-13', 121434),
(96, 'esapwell2n', 'aeskriet2n@mediafire.com', '2010-10-16', 139848),
(97, 'lbenedetti2o', 'kcamacke2o@noaa.gov', '2013-09-01', 296859),
(98, 'dcarette2p', 'cmayling2p@ft.com', '2013-10-26', 209101),
(99, 'ecatchpole2q', 'cstowers2q@oakley.com', '2015-12-30', 137492),
(100, 'rbyrth2r', 'cmerrell2r@surveymonkey.com', '2011-09-12', 135349);


CREATE TABLE posts (
    id INT PRIMARY KEY,
    titre VARCHAR(255),
    id_utilisateur INT,
    id_groupe INT,
    score INT,
    date_creation DATE
);

INSERT INTO posts (id, titre, id_utilisateur, id_groupe, score, date_creation) VALUES 
(1, 'Delivery drones are being attacked by hawks', 89, 15, 40070, '2015-10-21'),
(2, 'What is the best programming language to learn in 2020?', 90, 1, 9746, '2013-02-03'),
(3, 'First picture of a black hole has been taken', 91, 2, 7367, '2013-11-27'),
(4, 'Scientists develop waterproof shoes', 27, 15, 38476, '2012-12-29'),
(5, 'Running DOOM on a toaster', 86, 1, 143728, '2016-10-22'),
(6, 'As a kid, you''re also watching your parents grow up', 51, 10, 30249, '2015-07-22'),
(7, 'Created some entertaining Christmas cards', 64, 3, 18297, '2012-01-15'),
(8, 'I am Gill Bates, founder of Macrohard. Ask me Anything.', 7, 11, 96731, '2019-04-28'),
(9, 'Someone reverse engineered Super Mario... with Minecraft command blocks.', 17, 1, 9196, '2015-12-21'),
(10, 'What is the most exciting personal project you''ve worked on?', 40, 1, 70951, '2019-12-09'),
(11, 'The night before a day off is more satisfying than the actual day', 15, 10, 25763, '2014-08-06'),
(12, 'Today I learned that Romans created tombs for their dogs and gave them epitaphs', 64, 9, 34154, '2020-06-16'),
(13, 'In an Asian country, bowls are repaired by filling the cracks with gold', 50, 14, 44421, '2014-01-27'),
(14, 'My dog when she was born and 10 years later', 76, 5, 48294, '2013-05-13'),
(15, 'Prevengers becomes highest grossing film of all time', 3, 18, 25627, '2019-08-31'),
(16, 'Today I learned Perry, a parrot, alerted its owner that their toddler was choking, saving the girl''s life', 54, 9, 31943, '2016-05-26'),
(17, 'Behind the scenes of how a jump scene for Mission Possible was shot', 52, 18, 20933, '2011-05-16'),
(18, 'Study shows that most redditors don''t actually read the articles they vote on', 74, 2, 46528, '2018-03-25'),
(19, 'Sunset from space', 19, 5, 30835, '2017-08-22'),
(20, 'Weightlifter wins the gold', 46, 16, 31646, '2012-09-09'),
(21, 'REBU has made their code open source', 86, 1, 21815, '2011-09-17'),
(22, 'I am a freelance Web Developer. AMA!', 56, 11, 36051, '2017-12-14'),
(23, 'Movie filmed entirely in one take took 20 takes to get right', 2, 18, 16492, '2016-12-04'),
(24, 'Funny glitch during a cutscene', 33, 4, 28983, '2010-09-24'),
(25, 'Paleontologists have dug up the skeleton of the ancestor of all dogs', 98, 2, 48629, '2015-01-10'),
(26, 'Awesome video game cosplay', 93, 4, 22258, '2015-12-10'),
(27, 'Another Spider-Person movie reboot in the works', 66, 18, 13168, '2020-01-29'),
(28, 'How do you feel about pineapple on pizza?', 59, 12, 11231, '2018-05-12'),
(29, 'Mysterious shadow shaped like person on moon turns out to be a smudge on the telescope lens', 54, 2, 10452, '2017-01-15'),
(30, 'Walking Simulator is so immersive!', 15, 4, 42246, '2016-10-16'),
(31, 'Professor holds class in a VR game', 47, 4, 571, '2018-07-26'),
(32, 'Picture of a kitten', 78, 17, 149176, '2012-03-23'),
(33, 'Last Fantasy XXV is best entry in the franchise', 43, 4, 11979, '2017-05-04'),
(34, 'Rate my gaming rig', 27, 4, 43809, '2017-08-07'),
(35, 'Photo of the first supercomputer', 6, 5, 22375, '2017-04-03'),
(36, 'Why is it good to learn programming?', 97, 12, 18346, '2014-05-31'),
(37, 'What is a good hobby to pick up?', 97, 12, 34863, '2017-09-10'),
(38, 'Cat dressed as a terrifying shark', 48, 3, 3326, '2016-09-28'),
(39, 'NFL ''Get Back'' coach doing work', 29, 16, 47065, '2013-01-22'),
(40, 'VR Chess, but your hand grows larger every move', 22, 4, 27706, '2016-03-30'),
(41, 'What food would you eat everyday?', 38, 12, 3386, '2014-11-08'),
(42, 'Met a stranger who looks just like me at a restaurant', 50, 14, 40567, '2018-01-03'),
(43, 'What can you learn in one day that will be useful for the rest of your life?', 73, 12, 32988, '2012-05-16'),
(44, 'Coffee makes you hyper, but coffee shops are meant for people to relax', 87, 10, 32886, '2016-02-23'),
(45, 'Light cast directly over poles makes them look like a bad video game render', 97, 14, 39546, '2017-05-03'),
(46, 'Hen adopts puppies as her own', 98, 17, 4369, '2013-11-19'),
(47, 'Group of people in dinosaur costumes for Halloween', 27, 3, 17613, '2018-07-19'),
(48, 'Funny license plate number', 58, 3, 560, '2019-08-18'),
(49, 'Mother duck brings her babies to my house for some food', 97, 17, 6197, '2015-05-28'),
(50, 'Pizza where each of the 8 slices has a different topping', 15, 19, 25884, '2014-04-10'),
(51, 'White chocolate Brownies', 73, 19, 14691, '2017-07-30'),
(52, 'Greatest no-look pass in basketball history', 41, 16, 23230, '2019-02-10'),
(53, 'Today I learned some farmers switched to raising ducks instead of chickens, because they float during floods', 9, 9, 36647, '2012-11-27'),
(55, 'Faceswapped with my pet', 88, 3, 24528, '2018-04-13'),
(56, 'If you were stranded on an island, what 5 items would you bring with you?', 18, 12, 22893, '2017-01-26'),
(57, 'I am Elun Mosk, CEO/CTO of a rocket company. Ask me anything!', 98, 11, 26376, '2013-06-10'),
(58, 'If you could have any superpower, what would it be?', 35, 12, 12001, '2011-06-20'),
(59, 'Dog still sleeps with the teddy bear he had since he was a puppy', 44, 17, 48059, '2015-08-19'),
(60, 'Promising advances made toward cure for cancer', 44, 6, 136532, '2018-06-30'),
(61, 'Squirrel brings seeds to my house in exchange for nuts', 72, 17, 12270, '2012-09-17'),
(62, 'Billionaire donates 99 percent of his fortune to charities', 68, 6, 23707, '2016-12-09'),
(63, 'How does the sun warm us when it''s so far away?', 37, 20, 33869, '2015-04-14'),
(64, 'I''m developing a game where you are a rock', 52, 4, 27602, '2014-01-12'),
(65, 'Single player offline games are valuable during an apocalypse', 3, 10, 28714, '2018-07-22'),
(66, 'Today I learned Reanu Keeves takes the subway', 65, 9, 45080, '2010-05-16'),
(67, 'I am the world''s fastest competitive eater, AMA!', 100, 11, 33270, '2012-03-22'),
(68, 'Quarter Life 3 being developed by Pipe Corporation', 62, 4, 44695, '2019-06-23'),
(69, 'Even if someone could read minds, they might not be able to decode your thoughts', 47, 10, 29192, '2014-02-24'),
(70, 'Made a sweater for my pet snake', 61, 17, 11867, '2020-03-28'),
(71, 'I created the world''s most advanced AI which can also interpret dog language, AMA', 76, 11, 6253, '2017-10-26'),
(72, 'Paintings are like trading cards for rich people', 53, 10, 25405, '2015-02-27'),
(73, 'Codecademy releases their new database courses', 3, 1, 133728, '2012-04-28'),
(74, 'Today I learned apes can learn sign language, but aren''t able to ask questions', 42, 9, 21744, '2017-05-03'),
(75, 'Growing up you get more joy seeing others open presents than you do opening your own', 51, 10, 18164, '2012-01-20'),
(76, 'Clean water ice found just below Mars'' surface', 93, 2, 49477, '2011-04-10'),
(77, 'Hi, I am John Doe, and I visited every country in the world in the last few years. Ask me anything.', 96, 11, 23213, '2015-12-05'),
(78, 'Low-cost laptops developed for students in several poorer countries', 65, 15, 4264, '2017-08-09'),
(80, 'I am a self taught developer who likes to teach others programming. Ask me anything!', 5, 11, 44283, '2016-07-16'),
(81, 'Hamster ressemble à une crêpe moelleuse', 77, 17, 13500, '2012-12-27'),
(82, 'Pourquoi les mauvaises odeurs persistent plus longtemps que les bonnes odeurs ?', 23, 20, 2487, '2018-09-01'),
(84, 'Les Youtubers contribuent au financement de la plantation de 10 millions d''arbres', 21, 6, 28046, '2016-02-01'),
(85, 'L''acteur primé collecte 200 millions de dollars pour lutter contre le changement climatique', 54, 6, 6832, '2013-11-24'),
(86, 'Vidéos tutorielles sur SQLite', 56, 8, 29608, '2017-04-03'),
(88, 'Pourquoi il est normal d''avoir le syndrome de l''imposteur', 55, 1, 22396, '2013-05-12'),
(89, 'Sashimi de saumon', 95, 19, 45647, '2015-03-08'),
(90, 'J''ai garé ma voiture entre deux voitures identiques', 10, 14, 29164, '2015-10-04'),
(91, 'Sandwich au poulet frit', 65, 19, 30406, '2015-08-12'),
(92, 'Je suis la personne la plus moyenne du monde. Posez-moi des questions.', 56, 11, 9792, '2012-05-25'),
(93, 'Bande-annonce officielle pour Prevengers', 79, 18, 29258, '2019-06-17'),
(94, 'Pourquoi les toits des maisons sont inclinés ?', 42, 20, 42425, '2017-10-29'),
(95, 'Comment les scientifiques savent que seuls 15 % de tous les organismes ont été découverts ?', 85, 20, 43395, '2011-11-06'),
(96, 'J''ai fini de construire mon propre télescope', 49, 13, 2455, '2020-01-09'),
(97, 'De plus en plus d''entreprises adoptent une semaine de travail de 4 jours', 66, 6, 5791, '2012-01-02'),
(98, 'Chien réconfortant son ami nerveux chez le vétérinaire', 28, 17, 33556, '2011-01-30'),
(99, 'Aujourd''hui j''ai appris que Kogu de Dragoon Ball Z est un ambassadeur pour les Jeux Olympiques de Tokyo 2020', 31, 9, 25586, '2020-01-28'),
(100, 'Image la plus nette du Soleil prise', 97, 13, 20928, '2014-11-28'),
(101, 'Ingénieur crée un robot jongleur', 100, 8, 8294, '2014-08-24'),
(102, 'Des sièges de cinéma ont été créés pour diffuser des odeurs pour une expérience plus immersive', 18, 15, 6998, '2016-08-03'),
(103, 'SpaceX réussit le lancement de sa fusée Eagle Light !', 65, 13, 28023, '2016-02-15'),
(104, 'Aujourd''hui j''ai appris que Beethoven utilisait la conduction osseuse pour entendre son piano après être devenu sourd', 66, 9, 8225, '2020-06-11'),
(105, 'Steampunk 1877 remporte le prix du jeu de l année', 72, 4, 35853, '2019-06-09'),
(106, 'Avis produit drôle', 66, 3, 18675, '2020-02-29'),
(107, 'L''arbitre de boxe esquive un coup lors du match', 89, 16, 18411, '2016-12-24'),
(108, 'Ma plus grande carte Minecraft utilisant 3000x3000 blocs. A pris 12 mois à compléter.', 48, 4, 28384, '2019-04-02'),
(109, 'Histoire de la programmation', 33, 8, 5792, '2011-04-02'),
(110, 'Pourquoi ne voyons-nous jamais l''autre côté de la lune depuis la Terre ?', 89, 20, 11816, '2014-03-21'),
(111, 'Pourquoi vous sentez-vous fatigué si vous dormez trop longtemps ?', 81, 20, 35092, '2015-11-12'),
(112, 'Les langues parlées voyagent à la vitesse du son, mais la langue des signes voyage à la vitesse de la lumière', 77, 10, 28216, '2018-06-20'),
(113, 'Playlist pour programmeurs', 35, 7, 49129, '2010-04-02'),
(114, 'Aujourd''hui j''ai appris qu''un système de train à grande vitesse est équipé d''un réseau de sismomètres qui a empêché des trains de dérailler', 44, 9, 45529, '2010-03-05'),
(115, 'Rapper Skittles est le premier et unique artiste à avoir eu 10 albums consécutifs en numéro 1', 84, 7, 16114, '2014-06-12'),
(116, 'Sandwich grillé au fromage avec 7 fromages différents', 66, 19, 3864, '2013-02-21'),
(117, 'Quelqu''un a modifié la cravate verte du présentateur météo', 94, 3, 31177, '2015-09-13'),
(118, 'Bon toutou aime se blottir', 98, 17, 10438, '2017-07-21'),
(119, 'Chien qui poursuit sa propre queue', 72, 3, 20538, '2011-11-01'),
(120, 'Bande-annonce de blagueur', 92, 18, 13234, '2014-07-28'),
(121, 'Première image du côté sombre de la lune', 82, 13, 34204, '2017-07-08'),
(122, 'Quel livre devrait avoir chaque programmeur ?', 78, 12, 48086, '2014-01-21'),
(123, 'Je me suis édité dans une scène de film', 2, 3, 43894, '2015-03-01'),
(124, 'Le loup devient joueur lorsqu''il est visité par des sauveteurs qui l''ont élevé', 90, 17, 30731, '2012-06-29'),
(125, 'But de football incroyable', 20, 16, 17592, '2010-08-18'),
(126, 'Plus grande machine de Rube Goldberg au monde', 87, 8, 16004, '2019-04-18'),
(127, 'De nouvelles avancées ont été faites en informatique quantique', 77, 15, 2601, '2014-07-16'),
(128, 'J''ai photoshopé le visage de mon chien sur des abeilles', 74, 3, 43744, '2013-02-03'),
(129, 'Double arc-en-ciel capturé en vidéo', 86, 8, 41606, '2019-04-27'),
(130, 'Il est parfaitement acceptable de ne coder qu''au travail', 50, 1, 11076, '2011-03-20'),
(131, 'Aujourd''hui, j''ai appris qu''une queue de dinosaure parfaitement préservée a été trouvée, qui était pleine de plumes', 46, 9, 17114, '2016-12-18'),
(132, 'Si vous jetez un rocher dans l''océan, vous pouvez être la dernière personne à toucher ce rocher jusqu''à ce que le monde se termine', 69, 10, 39963, '2018-12-24'),
(133, 'Un joueur de basket-ball réussit un tir de tout le terrain', 41, 16, 4571, '2015-04-18'),
(135, 'Things I wish I knew when I was starting out as a web developer', 8, 1, 2915, '2018-07-23'),
(136, 'Doggo tippy taps when owner comes home', 41, 8, 36695, '2014-09-21'),
(137, 'What happens when you type Google.com in the address bar', 78, 1, 3678, '2015-06-26'),
(138, 'Golf balls at this mini golf course over the ocean are biodegradable and edible by fish', 36, 14, 33651, '2019-11-18'),
(139, 'My coworker''s last name is Null', 38, 1, 27696, '2012-12-17'),
(140, 'Bees observed to go completely silent during a total eclipse', 93, 2, 39607, '2012-02-17'),
(141, 'Picture of my pet dog, Cookie', 77, 5, 33490, '2012-04-13'),
(142, 'Spicy miso ramen with pork', 8, 19, 43655, '2010-07-31'),
(143, 'Hockey player gives game winning hockey stick to fan', 53, 16, 7408, '2014-07-31'),
(144, 'Kid is gifted a new puppy for his birthday', 20, 17, 22235, '2011-09-27'),
(145, 'Your alarm tone is your opening theme song for each episode', 38, 10, 22608, '2017-05-10'),
(146, 'Colorized photo of my great-great-grandparents', 36, 5, 2763, '2020-06-03'),
(147, 'How do some people understand a language even if they can''t speak it?', 86, 20, 34207, '2019-10-27'),
(148, 'Panoramic picture of the Grand Canyon', 49, 5, 45984, '2017-02-14'),
(149, 'Days where everything goes smoothly are less memorable', 16, 10, 43496, '2013-04-04'),
(150, 'Made ice cream that looks like spaghetti using vanilla ice cream and raspberry sauce', 35, 19, 24826, '2012-03-11'),
(151, 'How do taxes work?', 20, 20, 17917, '2018-07-28'),
(152, 'VR technology lets you program on a virtual computer, without having a real computer', 6, 15, 17001, '2019-10-26'),
(153, 'Lack of sleep causes many negative health risks', 77, 2, 46154, '2019-07-29'),
(154, 'Scientist creates device that turns water into food', 97, 6, 21766, '2018-09-08'),
(156, 'Codecademy programming tutorial videos', 5, 8, 85347, '2013-11-06'),
(157, 'Arc reactor développé par un milliardaire', 94, 2, 45265, '2014-08-01'),
(158, 'Plateau de barbecue au Texas', 86, 19, 22419, '2015-12-12'),
(159, 'Photo de lancement de fusée', 20, 13, 33951, '2013-12-24'),
(160, 'La musique Dubstep peut protéger contre les piqûres d''insectes', 30, 2, 12344, '2013-03-25'),
(161, 'Cheeseburger avec des frites curly', 57, 19, 12929, '2013-11-15'),
(162, 'Batterie rechargeable qui se charge à 100% en 10 minutes', 25, 15, 22460, '2014-08-31'),
(163, 'Crème glacée au melon miel', 8, 19, 34530, '2018-12-08'),
(164, 'Il y a une autre boule à l''intérieur de cette boule de bowling', 63, 14, 660, '2015-03-08'),
(165, 'Un chien photobombe une photo de mariage', 20, 5, 10303, '2013-10-31'),
(166, 'Quel est le meilleur achat que vous ayez jamais fait ?', 45, 12, 4727, '2017-08-27'),
(168, 'Aujourd''hui, j''ai appris qu''il y a une statue de George Washington à Londres', 53, 9, 33642, '2015-01-22'),
(169, 'J''ai développé un engrais qui double la taille des cultures. AMA!', 95, 11, 37333, '2016-07-21'),
(170, 'Un gardien de hockey fait un blocage incroyable derrière son dos', 22, 16, 32072, '2015-02-27'),
(171, 'Un golfeur fait un trou-en-un où la balle survole l''eau', 47, 16, 24447, '2014-10-10'),
(172, 'L''IA recrée des modèles 3D à partir de peintures', 54, 15, 13585, '2014-02-25'),
(173, 'Quelle chanson pouvez-vous écouter tous les jours ?', 66, 12, 45171, '2019-01-30'),
(174, 'Les astronautes regardent Star Trek dans l''espace', 33, 13, 25841, '2015-05-08'),
(175, 'Comment fonctionne le wifi ?', 58, 20, 19818, '2019-10-31'),
(176, 'Le PDG d''une entreprise de technologie fait don d''ordinateurs aux écoles', 27, 6, 21937, '2016-01-18'),
(177, 'Comment les ingénieurs de la NASA communiquent-ils avec les satellites spatiaux situés à des milliards de kilomètres de la Terre ?', 27, 20, 31570, '2019-01-29'),
(178, 'Aujourd''hui, j''ai appris que l''inventeur de la télévision électronique était déçu de son invention jusqu''à ce qu''il la regarde pour voir Neil Armstrong marcher sur la Lune à travers elle', 1, 9, 4613, '2016-04-16'),
(179, 'Pourquoi une différence de 3 degrés de température corporelle semble-t-elle énorme ?', 89, 20, 45332, '2012-05-03'),
(180, 'Le chien attend toujours que le facteur fasse sa livraison', 44, 17, 29064, '2018-06-02'),
(181, 'Nous sommes une équipe de scientifiques travaillant à la guérison du cancer. Posez-nous des questions !', 93, 11, 31473, '2013-02-21'),
(182, 'Les ailes d''avion rétractables s''inspirent des ailes de scarabées', 91, 15, 30620, '2015-04-18'),
(183, 'Un chien géant pense toujours qu''il est un petit chiot', 78, 17, 6056, '2013-08-05'),
(184, 'Un chiot s''endort après avoir joué toute la journée dehors', 19, 17, 44269, '2013-03-28'),
(185, 'Voiture se garant automatiquement en créneau', 33, 15, 34407, '2013-06-10'),
(186, 'Tutoriel vidéo sur les jointures SQL', 69, 8, 19436, '2019-09-18'),
(187, 'Cool easter egg trouvé dans un jeu vidéo', 66, 4, 2069, '2012-11-01'),
(188, 'Comment un ordinateur compile et exécute-t-il un programme ?', 6, 20, 24877, '2017-08-03'),
(189, 'Quel est le meilleur type d''ours ?', 33, 12, 10408, '2010-08-29'),
(190, 'Nouvel engrais créé qui double la taille des cultures', 46, 2, 47844, '2015-05-30'),
(191, 'L''engrais de 2015 est lié à la croissance anormalement grande des insectes', 16, 2, 29720, '2020-03-24'),
(192, 'Photo de la Terre vue de l''espace la nuit', 80, 5, 41910, '2018-10-16'),
(193, 'Voitures volantes électriques autonomes en production de masse', 62, 6, 43035, '2020-01-14'),
(194, 'Pluie de météores illuminant le ciel nocturne', 20, 13, 31616, '2017-08-02'),
(195, 'Aujourd''hui, j''ai appris que 75 pour cent de tout l''aluminium jamais produit est encore en circulation aujourd''hui, grâce au recyclage', 74, 9, 38609, '2018-08-17'),
(196, 'Comment les bases de données stockent des millions d''entrées et y accèdent-elles si rapidement ?', 50, 20, 45790, '2012-02-04'),
(197, 'Comment fonctionne Internet ?', 71, 20, 22711, '2013-08-28'),
(198, 'Nouveau véhicule capable de convertir les déchets alimentaires en carburant', 38, 15, 42890, '2013-06-22'),
(199, 'ePhone 20 n''a pas d''écran', 100, 15, 21022, '2017-04-21'),
(200, 'Papa ne voulait pas d''un chien, mais maintenant ils sont inséparables', 94, 17, 16122, '2013-01-29');



CREATE TABLE groupes (
    id INTEGER PRIMARY KEY,
    nom TEXT,
    date_creation DATE,
    nb_souscripteur INTEGER
);

INSERT INTO groupes (id, nom, date_creation, nb_souscripteur) VALUES
(1, 'programmation', '2006-02-28', 2717072),
(2, 'science', '2006-10-18', 24543061),
(3, 'drôle', '2008-01-25', 14926599),
(4, 'jeux vidéo', '2008-01-25', 27061546),
(5, 'photos', '2008-01-25', 25239687),
(6, 'actualités', '2008-01-25', 24537794),
(7, 'musique', '2008-01-25', 24481562),
(8, 'vidéos', '2008-01-25', 23373501),
(9, 'aujourd''hui j''ai appris', '2008-12-28', 23300430),
(10, 'réflexions de douche', '2011-10-18', 20462383),
(11, 'je suis...', '2009-05-27', 20272262),
(12, 'demandez à Reddit', '2008-01-25', 28837356),
(13, 'espace', '2008-01-26', 17079655),
(14, 'légèrement intéressant', '2012-02-05', 17788052),
(15, 'technologie', '2008-01-25', 9219049),
(16, 'sports', '2007-09-17', 17471369),
(17, 'trop mignon', '2008-01-25', 25653577),
(18, 'films', '2008-01-25', 23301463),
(19, 'nourriture', '2008-01-25', 19184692),
(20, 'expliquez-moi comme si j''avais 5 ans', '2011-07-28', 18278555);


CREATE TABLE posts2 (
    id INT PRIMARY KEY,
    titre VARCHAR(255),
    id_utilisateur INT,
    id_groupe INT,
    score INT,
    date_creation DATE
);

INSERT INTO posts2 (id, titre, id_utilisateur, id_groupe, score, date_creation) VALUES
(1, 'Des ingénieurs créent une combinaison mécanique capable de soulever une tonne', 72, 15, 35211, '2020-06-21'),
(2, 'De nouveaux jeux Pokémon, Hache et Lance, annoncés', 23, 4, 25031, '2020-05-23'),
(3, 'Si vous pouviez vivre dans n''importe quel monde fictif, lequel serait-ce ?', 4, 12, 37268, '2020-04-11'),
(4, 'Un ascenseur spatial est en cours de développement', 43, 13, 4275, '2020-04-26'),
(5, 'Un homme crée une chanson en utilisant uniquement des roches comme instruments', 67, 7, 46117, '2020-07-19'),
(6, 'Je suis un goûteur professionnel, posez-moi des questions', 1, 11, 13048, '2020-01-29'),
(7, 'Je suis un sculpteur de sable professionnel, posez-moi des questions', 81, 11, 6761, '2020-05-25'),
(8, 'Un joueur de bowling ambidextre réalise deux strikes en même temps sur deux pistes différentes', 5, 16, 27687, '2020-05-22'),
(9, 'J''ai ramené un nouveau chat à la maison pour mon chien. Maintenant, ils sont les meilleurs amis', 69, 17, 4888, '2020-03-04'),
(10, 'Playlist de chansons pour l''exercice', 90, 7, 28711, '2020-06-14'),
(11, 'J''ai écrit ma première ligne de code aujourd''hui !', 62, 1, 23629, '2020-03-14'),
(12, 'Des ingénieurs développent un laser capable de détruire des astéroïdes entrants', 98, 13, 34973, '2020-02-06'),
(13, 'Photo d''une éruption solaire', 65, 5, 4337, '2020-05-05'),
(14, 'Comment fonctionne la gravité ?', 57, 20, 29858, '2020-02-28'),
(15, 'J''ai fait une tourte au poulet', 60, 19, 21339, '2020-04-14'),
(16, 'Le mot "requin" a la forme d''un requin', 44, 10, 36022, '2020-04-01'),
(17, 'Des arbres entrelacés comme une double hélice', 92, 14, 48414, '2020-02-27'),
(18, 'Le grille-pain a une fenêtre en verre pour voir la progression du pain grillé', 55, 14, 2406, '2020-03-15'),
(19, 'Pourquoi les gens ont besoin d''eau pour vivre, mais ne peuvent pas rester sous l''eau pendant plus de quelques minutes ?', 54, 20, 8400, '2020-02-12'),
(20, 'Film entièrement tourné dans l''espace', 47, 18, 35707, '2020-07-10'),
(21, 'Les études montrent que les programmeurs ne sont pas seulement alimentés par la caféine', 24, 2, 45005, '2020-03-08'),
(22, 'Les mascottes sportives ont une danse épique', 41, 3, 49493, '2020-03-12'),
(23, 'Aujourd''hui, j''ai appris qu''un escargot considéré comme mort s''est réveillé 4 ans après avoir été découvert', 96, 9, 27752, '2020-03-22'),
(24, 'Nuages en forme de moutons', 91, 5, 35676, '2020-06-16'),
(25, 'Des plongeurs trouvent et rendent un téléphone qui fonctionne encore 1 an après qu''il ait été perdu dans une rivière', 30, 6, 28163, '2020-06-18'),
(26, 'Un homme a pris un selfie tous les jours pendant 30 ans', 79, 8, 39806, '2020-03-30'),
(27, 'Quel film pouvez-vous regarder tous les jours ?', 49, 12, 40928, '2020-05-18'),
(28, 'Aujourd''hui, j''ai appris que les bouches d''aération de la salle de bain étaient destinées à enlever l''humidité plutôt que les odeurs', 68, 9, 24818, '2020-04-14'),
(29, 'J''ai créé un programme qui vous indique si vous aurez besoin d''un parapluie', 82, 1, 26281, '2020-04-27'),
(30, 'Prix annoncé de la série XStation 5', 45, 4, 22325, '2020-03-12');