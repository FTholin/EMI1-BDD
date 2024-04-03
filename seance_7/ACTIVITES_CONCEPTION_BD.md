# Conception d'une base de données

## QU'EST-CE QU'UN SCHÉMA DE BASE DE DONNÉES ?

Dans cette leçon, vous allez apprendre ce qu'est un schéma de base de données et comment en créer un avec `PostgreSQL` . `PostgreSQL` est un système de gestion de base de données populaire qui stocke les informations sur un serveur de base de données dédié plutôt que sur un système de fichiers local. Les avantages de l'utilisation d'un système de base de données incluent une meilleure organisation des informations liées, un stockage plus efficace et une récupération plus rapide.

À l'instar d'un plan d'architecture, un schéma de base de données est une documentation qui aide son public, tel qu'un concepteur de base de données, un administrateur et d'autres utilisateurs, à interagir avec une base de données. Il donne une vue d'ensemble de l'objectif de la base de données, des données qui la composent, de la manière dont les données sont organisées en tables, de la structure interne des tables et de leurs relations mutuelles.

Lorsque vous concevez un schéma de base de données, tenez compte des étapes suivantes :

- Définissez l'objectif de votre base de données.
- Trouvez les informations qui composent la base de données
- Organisez vos informations en tables
- Structurez vos tables en colonnes d'information
- Évitez les données redondantes qui conduisent à l'inexactitude et au gaspillage d'espace.
- Identifiez les relations entre vos tables et mettez-les en œuvre.

Les deux derniers points garantissent l'exactitude et l'intégrité des données chaque fois que vous devez ajouter ou mettre à jour des informations dans la base de données. Ils rendent également l'interrogation de la base de données beaucoup plus efficace.

Vous pouvez concevoir des schémas de base de données à la main ou à l'aide d'un logiciel. Voici quelques exemples d'outils gratuits de conception de bases de données en ligne :

- [DbDiagram.io](https://www.dbdesigner.net/) - un outil simple et gratuit pour dessiner des diagrammes ER en écrivant simplement du code, conçu pour les développeurs et les analystes de données.
- [SQLDBM](https://sqldbm.com/home) - Modélisateur de bases de données SQL
- [DB Designer](https://dbdiagram.io/home) - outil en ligne de conception et de modélisation de schémas de bases de données


Ci-dessous, vous trouverez un exemple de diagramme de schéma de base de données généré par **DbDiagram.io**. Voyons ce que cela implique.


![diagramme](./ressources/diagramme.png)

L'objectif de cette base de données est de maintenir un inventaire de livres. Les informations contenues dans la base de données sont organisées en quatre tables : `livre`, `chapitre`, `auteur` et `liste_livre`.

Quelles sont les données que nous stockons sur un livre ? A quoi sert la table book_list ?

Dans ce diagramme de schéma particulier, les symboles `1` et `*` sur les lignes indiquent une relation un-à-plusieurs entre ces tables :

- `livre` et `chapitre`
- `livre` et `liste_livre`
- `auteur` et `liste_livre`

Nous examinerons les relations plus en détail dans une leçon ultérieure.

Les différents outils de base de données illustrent les relations entre les tables avec des symboles différents.

Le schéma de votre base de données doit contenir les éléments suivants

- les noms des tables
- noms des colonnes par table
- les types de colonnes par table
- les contraintes par table, le cas échéant
- les relations entre les tables, le cas échéant.

Dans cette leçon, nous nous concentrerons principalement sur les trois premiers éléments. Dans les leçons suivantes, nous aborderons les contraintes et les relations.


## Identification de vos tables

Dans cet exercice, nous allons nous plonger dans la conception de notre propre schéma de base de données. L'objectif de notre base de données est de permettre à une librairie en ligne de montrer son catalogue de livres à des acheteurs potentiels et à un acheteur de prévisualiser des échantillons de chapitres d'un livre sélectionné.

Imaginez que vous soyez en train de feuilleter un livre sur Amazon.com.

Après avoir rassemblé les informations pour cette base de données, nous avons constaté que notre base de données devrait avoir :

- des informations sur le livre, notamment le titre, l'isbn, le nombre de pages, le prix, la description et l'éditeur, pour avoir un aperçu du livre
- des informations sur l'auteur, notamment sa biographie et son contact
- des informations sur les chapitres du livre, notamment le numéro du chapitre, le titre du chapitre et le contenu du chapitre qui peut être visualisé en ligne.

Comme vous pouvez le constater, il y a beaucoup d'informations à conserver dans notre base de données. L'étape suivante consiste à organiser les informations de notre base de données en tables.

Regardez un exemple de ligne ci-dessous si nous décidons de stocker toutes nos informations dans une seule table. Pour des raisons d'espace, nous avons rendu les informations du chapitre très petites et irréalistes.



D'après les informations fournies, est-il judicieux d'organiser nos données dans un seul tableau ? Le tableau est-il facile à utiliser tel quel ? Comporte-t-il trop de colonnes couvrant différents sujets ?

Qu'est-ce qui constitue l'essentiel de ce tableau ? Vous avez raison si vous pensez qu'il s'agit du contenu du chapitre. Le contenu des chapitres est utile lorsqu'un acheteur potentiel souhaite avoir un aperçu d'un livre. 

Mais tous les livres ne mettent pas leur contenu à la disposition du public. Dans ce cas, les colonnes du contenu du chapitre seront vides. Pour faciliter l'utilisation de cette table, il est plus logique de stocker le contenu du chapitre dans sa propre table. Cela rendrait également le tableau actuel plus léger et plus facile à gérer. Par conséquent, nous devons restructurer ce tableau de manière à ce que les informations relatives aux chapitres résident dans leur propre tableau.

Il ne nous reste plus qu'une table contenant uniquement des informations sur le livre et l'auteur.

- Que faire si nous souhaitons contacter un auteur sans avoir besoin de savoir quels livres il écrit ? 
- Serait-il judicieux de consulter cette table qui relie toujours un livre à son auteur ? 
- Ou serait-il plus judicieux de conserver les informations sur l'auteur séparément ? 
- La réponse à cette dernière question est "oui".

Entraînons-nous à organiser les informations en identifiant des tableaux dans les exercices suivants.

### À vous de jouer ! 🤠

1. Chargez le contenu du fichier `DATABASE_books.sql`

2. Cet exercice contient un schéma mal écrit pour une base de données de profils d'étudiants. Tapez une requête pour sélectionner le contenu de la table `profile`.

Vous devriez voir des résultats:


Le tableau de profile contient beaucoup de colonnes. Il contient également des valeurs vides dans plusieurs colonnes de la deuxième ligne. Après avoir étudié les résultats du tableau de profile, pensez à comment pourriez-vous réorganiser les données et restructurer ce tableau ?


La table de profil contient des colonnes relatives au domicile, au travail et à l'école d'une personne. Étant donné que tous les étudiants n'occupent pas un emploi, ce qui entraîne des colonnes vides, telles que `poste`, `adresse_travail`, `telephone_travail` et `identifiant_travail`, il serait judicieux de séparer ces colonnes de la table pour en faire une table distincte. De même, une ou plusieurs colonnes relatives à la formation d'une personne peuvent également être vides. Il serait donc logique de regrouper les informations relatives à la formation dans une table distincte.

Par conséquent, il serait judicieux de diviser la table de profil en trois : `profil`, `travail` et `ecole`. Il pourrait également être judicieux de renommer le `profil` en `domicile` ou `personnel`.

## Création de vos tables

Une fois que nous avons identifié nos tables pour notre schéma, l'étape suivante consiste à déclarer ce que doivent contenir nos tables. Une table de base de données est constituée de colonnes d'informations. Un nom et un type de données sont attribués à chaque colonne. Vous pouvez voir ces informations représentées dans le diagramme de schéma de l'exercice 1.

Pour créer une table dans PostgreSQL, nous utiliserons la syntaxe SQL suivante :

```sql
CREATE TABLE personne (
  prenom varchar(15),
  nom varchar(15),
  age integer,
  …
  ssn char(9)
);
```

Dans cet exemple, le nom de la table est `personne`, et les noms de ses colonnes sont `prenom`, `nom` et `ssn`. Vous pouvez penser qu'un nom de colonne représente une propriété, un attribut ou un champ de la table. La convention de nommage que nous utilisons dans ce cours pour définir les tables PostgreSQL est la typographie [Snake case](https://fr.wikipedia.org/wiki/Snake_case), qui utilise des lettres minuscules avec des traits de soulignement entre les mots pour les noms de colonnes et de tables.

Chaque nom de colonne est associé à un type de colonne qui est un type de données tel que numérique, caractère, booléen ou autres types intéressants. Voici un résumé des types de données courants, ce qu'ils représentent, leurs valeurs types et la façon dont ils s'affichent sur Postgresql :

| Type de données   | Représentation dans MariaDB                                  | Exemple de valeur | Affichage dans MariaDB |
|-------------------|--------------------------------------------------------------|-------------------|------------------------|
| integer (entier)  | `INT`                                                        | 617               | 617                    |
| decimal           | `DECIMAL(M, D)` ou `NUMERIC(M, D)`                           | 26.17345          | 26.17345               |
| money             | `DECIMAL(19, 4)` ou `DECIMAL(10, 2)` pour la simplicité      | 6.17              | 6.17                   |
| boolean           | `TINYINT(1)` où `1` est vrai et `0` est faux                 | TRUE, FALSE       | 1, 0                   |
| char(n)           | `CHAR(n)` (conserve les espaces)                             | '123 '            | '123 '                 |
| varchar(n)        | `VARCHAR(n)`                                                 | '123 '            | '123 '                 |
| text              | `TEXT`                                                       | '123 '            | '123 '                 |

Commençons à créer nos tables pour notre schéma de base de données d'inventaire de livres d'un exercice précédent.


### À vous de jouer ! 🤠

1. Créez une requête pour créer la table `livre` avec les colonnes suivantes
    - `titre` pour le titre du livre, un varchar de 100 caractères
    - `isbn` pour l'isbn du livre, un varchar de 50 caractères
    - `pages` pour le nombre de pages du livre, un entier
    - `prix` pour le prix du livre, de type DECIMAL(10, 2)
    - `description` pour la description du livre, un varchar de 256 caractères
    - `editeur` pour le nom de l'éditeur du livre, un varchar de 100 caractères.


2. Créez une autre table, chapitre, avec les colonnes suivantes :

    - id pour l'identifiant unique du `chapitre`, de type entier
    - `numero` pour le numéro de chapitre, de type integer
    - `titre` pour le titre du chapitre avec varchar de 50 caractères
    - `contenu` pour le contenu du chapitre avec varchar de 1024 caractères.
    - `livre_isbn` pour l'isbn du livre avec varchar de 50 caractères
   


3. De même, créez la table, `auteur` avec ces colonnes :

    - `nom` pour le nom de l'auteur, en varchar de 50 caractères
    - `bio` pour la bio de l'auteur, en varchar de 100 caractères
    - `email` pour l'email de l'auteur, en varchar de 20 caractères
    - `livre_isbn` pour l'isbn du livre avec varchar de 50 caractères


## Interroger vos tables

Maintenant que nous avons défini nos trois tables, livre, chapitre et auteur, alimentons nos tables avec des exemples de données et effectuons des requêtes.

Pour insérer des données dans une table `SQL`, utilisez cette syntaxe :

```sql
INSERT INTO nom_table VALUES (
  valeur_colonne_une,
  valeur_colonne_deux,
  …
  valeur_colonne_N
);
```

Pour interroger une table et obtenir toutes les colonnes, tapez :

```sql
SELECT * from nom_table ;
```

Afin de disposer d'un schéma utile, nous devons empêcher une table de base de données de stocker des données inexactes et de renvoyer plusieurs lignes alors que nous n'en attendons qu'une seule. Pour ce faire, nous imposons des contraintes à la table à l'aide d'une **clé primaire** affectée à une ou plusieurs colonnes.

Cela garantit que la colonne ou la combinaison de colonnes ne contient que des valeurs uniques. Nous explorerons ce sujet plus en détail dans une prochaine leçon sur les clés.

### À vous de jouer !

1. Insérer cette requête d'insertion pour alimenter notre base de données.
```sql
INSERT INTO livre (titre, isbn, pages, prix, description, editeur)
VALUES ('L''Economie bleue 3.0','979-1032906125',480, 24.0, 'il est possible de révolutionner notre consommation et nos moyens de production tout en protégeant la nature.','L''OBSERVATOIRE');
```


2. Nous avons créé la table `livre` et l'avons alimentée avec des données échantillons. Pouvez-vous ajouter une autre ligne à la table ?

    Remplissez la table livre avec les données suivantes :

    - titre, 'Pensées pour moi-même' 
    - isbn, '979-1032906125' 
    - pages, 222
    - prix, 3,90
    - description, "Réflexions stoïciennes rédigées par l'empereur Marc Aurèle".
    - éditeur, "FLAMMARION".


Ensuite, ajoutez une requête à la table des livres pour valider toutes les données que vous avez saisies en fonction du titre du livre.

3. Interrogez la table des livres pour le isbn '979-1032906125'.

Avez-vous remarqué que deux livres sont renvoyés sur la base de la même valeur isbn ? Réfléchir à comment résoudre ce problème pour qu'une seule ligne unique soit renvoyée par valeur isbn ?



> Pour éviter que la table des livres ne stocke des données inexactes et ne renvoie plusieurs lignes alors que nous n'en attendons qu'une sur la base de son isbn, nous devons nous assurer que la colonne isbn ne contient que des valeurs uniques. Pour ce faire, nous imposons des contraintes à la table à l'aide de clés primaires, un sujet que nous explorerons dans une prochaine leçon sur les clés.


## Relations entre les tables 


![diagramme](./ressources/diagramme.png)

Vous vous souvenez peut-être du diagramme ci-dessus, dans lequel les tables de la base de données sont reliées par des lignes. Les lignes reliant les tables décrivent les relations entre elles. Par exemple, la table des livres est liée à deux autres tables - la table des chapitres et la table des listes de livres, via des colonnes liées - isbn et book_isbn.

Supposons que nous ayons une table de personnes et une table d'adresses électroniques, où une personne peut avoir plusieurs adresses électroniques, mais une adresse électronique ne peut appartenir qu'à une seule personne. Pour mettre en œuvre ce type de relation, nous devons appliquer une contrainte sur la table email en lui ajoutant une autre colonne et en la désignant comme associée à la table personne.

Supposons que nous ayons également une table hobby et que nous la remplissions avec toutes sortes de hobbies. Si nous essayons d'interroger à la fois les tables hobby et personne, comment pouvons-nous être sûrs qu'un hobby est lié à une personne particulière ? Il n'y a rien dans la table person qui la lie à un hobby.

Pour associer un hobby à une personne, nous devons relier la table person à la table hobby avec le type de relation qu'elles ont. Une personne peut-elle avoir un seul hobby ou plusieurs hobbies ? Un hobby peut-il s'appliquer à une seule personne ou peut-il être partagé par plusieurs personnes ?

Nous aborderons ces relations intéressantes entre les tables et la manière de les mettre en œuvre dans les prochaines leçons sur les clés et les relations. Jusqu'à présent, les tables que vous avez créées sont des tables autonomes qui n'ont aucun lien entre elles. Voyons si nous pouvons relier les tables de ce schéma dans les exercices suivants.


### À vous de jouer ! 🤠

1. Remplissons la table des chapitres avec des données types.
```sql
INSERT INTO chapitre (id, numero, titre, contenu) VALUES
(1, 1, '1. Passer d''une espèce aux écosystème', '
L''écologie et le développement durable sont des notions qui ont fait éclore la conscience d''une « pen-sée verte ». Ces idées à présent très répandues nous ont appris à apprécier et privilégier l''utilisation de matières écologiquement responsables. Cependant, même si nous commençons à mieux comprendre l''importance d''un cycle de production éthique, nous avons encore du mal à le rendre économiquement viable.'),
(2, 2, 'La puissance du pragmatisme', 'Le déferlement de mauvaises nouvelles sur l''environnement, la pauvreté, le chômage, les violations des droits de l''Homme, l''inaction et la corruption de décideurs, ajouté à l''attitude passive (business as usual) des entreprises, laisse de plus en plus de citoyens soucieux, mais terriblement dépités. '),
(3, 3, 'Inspirante Nature', 'Pour qu''une société perdure, il faut une économie dynamique et adaptative. Mais l''inverse est tout aussi vrai. ');

```


2. Écrivez une requête sur la table des chapitres pour afficher son contenu actuel.

    <details>
        <summary>Plus d'explications. ⬇️</summary>
        <p>Un livre comporte généralement plusieurs chapitres, mais un chapitre ne peut appartenir qu'à un seul livre. Pour mettre en œuvre ce type de relation, nous devons appliquer une contrainte sur la table des chapitres en lui ajoutant une autre colonne et en la désignant comme associée à la table des livres.Nous discuterons de cette relation particulière entre les tables et de la manière de la mettre en œuvre dans les prochaines leçons sur les clés et les relations.</p>
    </details> 

    Réfléchissez à la façon dont cette table peut être liée à la table des livres. Comment pouvons-nous associer le contenu du chapitre à un livre particulier ?


3. Remplissons la table des auteurs avec des données types 
```sql
INSERT INTO auteur (nom, bio, email) VALUES
('Gunter ¨Pauli', 'Industriel belge menant différents projets autour de l''écologie et du developpement durable ', 'gunter@gmail.com'),
('Marc Aurèle', 'Empereur, philosophe stoïcien et écrivain romain', '');
```

4.Nous avons rempli la table des auteurs avec des données types.

- Écrivez une requête sur la table des auteurs pour voir son contenu
- Ajoutez une autre requête pour tout sélectionner dans la table des livres.
- Étudiez les colonnes de la table des livres. Comment savoir quel livre a été écrit par un auteur particulier ? 
    
    Quelles colonnes de la table livre et auteur seraient utiles pour associer un livre à un auteur et vice versa ?

    <details>
        <summary>Plus d'explications. ⬇️</summary>
        <p>Un livre comporte généralement plusieurs chapitres, mais un chapitre ne peut appartenir qu'à un seul livre. Pour mettre en œuvre ce type de relation, nous devons appliquer une contrainte sur la table des chapitres en lui ajoutant une autre colonne et en la désignant comme associée à la table des livres.</p>
    </details> 

## QUE SONT LES CLÉS D'UNE BASE DE DONNÉES ?

Un schéma de base de données donne une vue d'ensemble de l'objectif de la base de données ainsi que des données qui la composent, de la façon dont les données sont organisées en tables, de la structure interne des tables et des relations entre elles.

Supposons que nous ayons réussi à créer un schéma de base de données pour un inventaire de livres avec trois tables autonomes - `livre`, `chapitre` et `auteur`. Voir l'image dans le volet de droite.

La table `livre` comporte les colonnes suivantes

- `titre` pour le titre du livre, un varchar de 100 caractères

- `isbn` pour l'isbn du livre, un varchar de 50 caractères

- `pages` pour le nombre de pages du livre, un entier

- `prix` pour le prix du livre, un type d'argent

- `description` pour la description du livre, un varchar de 256 caractères

- `editeur` pour le nom de l'éditeur du livre, un varchar de 100 caractères.


La table `chapitre` contient les colonnes suivantes

- `id` pour l'identifiant unique du chapitre, un entier

- `numero` pour le numéro de chapitre, un entier

- `titre` pour le titre du chapitre, un varchar de 50 caractères

- `contenu` pour le contenu du chapitre, un varchar de 1024 caractères.

La table `auteur` a ces colonnes :

- `nom` pour le nom de l'auteur, un varchar de 50 caractères
- `bio` pour la bio de l'auteur, un varchar de 100 caractères
- `email` pour l'email de l'auteur, un varchar de 20 caractères.


Comme nos tables de base de données ne sont pas encore reliées les unes aux autres, le schéma de notre livre n'est pas complet tant que nous ne l'avons pas affiné en lui fournissant une structure supplémentaire. Dans cette leçon, nous allons apprendre à désigner certaines colonnes d'une table de base de données comme clés.

Qu'est-ce qu'une **clé** ?
>Une clé de base de données est une colonne ou un groupe de colonnes d'une table qui identifie de manière unique une ligne de la table.

Pourquoi avons-nous besoin de clés ? Les clés permettent au concepteur d'une base de données d'**imposer des contraintes aux données d'une table**. Nous voulons appliquer l'intégrité des données dans nos tables afin d'**éviter la duplication des informations** et de **maintenir strictement les relations entre les tables**. Par exemple, une clé primaire garantit que chaque ligne d'une table est unique.

Il existe de nombreux types de clés : Super, Candidate, Primaire, Etrangère, Composite et Secondaire. Dans ce cours, nous nous concentrerons sur les clés primaires, étrangères et composites, car ce sont les plus couramment utilisées. Nous allons en apprendre davantage sur certaines de ces clés dans l'exercice suivant.


## Clé primaire

Une **clé primaire** est une désignation qui s'applique à une colonne ou à plusieurs colonnes d'une table et qui **identifie de manière unique chaque ligne de la table**. Par exemple, le numéro de sécurité sociale d'un employé peut servir de clé primaire dans une table d'employés contenant des lignes de données sur les employés.

La désignation d'une clé primaire sur une colonne particulière d'une table garantit que les données de cette colonne sont toujours uniques et non nulles. Par exemple, il peut y avoir plusieurs recettes du même nom, chacune avec son propre identifiant, mais deux recettes ne doivent pas partager le même identifiant.


```sql
CREATE TABLE commande (
    commande_id INT PRIMARY KEY,
    produit_id INT,
    quantite INT,
);
```

### À vous de jouer ! 🤠

1. Étudiez l'instruction `CREATE TABLE` pour la table des livres. Quelle colonne de la table livre désigneriez-vous comme clé primaire ?
    ```sql
   CREATE TABLE livre (
    titre VARCHAR(100),
    isbn VARCHAR(50),
    pages INT,
    prix DECIMAL(10, 2),
    description VARCHAR(256),
    editeur VARCHAR(100)
    );
    ```
   Supprimer  la table `livre` avec  la commande `DROP TABLE` et refaite une `CREATE TABLE` pour désigner la bonne colonne comme clé primaire.
    
    


2. Étudiez l'instruction `CREATE TABLE` pour la table `chapitre`. Réfléchissez un instant à la colonne de cette table qui ferait une clé primaire idéale.
    ```sql
    CREATE TABLE chapitre (
      id INT,
      numero INT,
      titre VARCHAR(50),
      contenu VARCHAR(1024)
    );
    ```
    Supprimer  la table `chapitre` avec  la commande `DROP TABLE` et refaite une `CREATE TABLE` pour désigner la bonne colonne comme clé primaire.
    


3. Étudiez l'instruction `CREATE TABLE` pour la table `auteur`. Réfléchissez un instant à la colonne de cette table qui ferait une clé primaire idéale.
    ```sql
        CREATE TABLE auteur (
          nom VARCHAR(50),
          bio VARCHAR(100),
          email VARCHAR(20)
        );
    ```
    Supprimez la table `auteur` avec  la commande `DROP TABLE` et refaite une `CREATE TABLE` pour désigner la bonne colonne comme clé primaire.


## Validation des clés

Dans cette leçon, vous apprendrez à valider les clés que vous avez désignées pour une ou plusieurs colonnes spécifiques dans une table de base de données. Il existe plusieurs façons de le faire, mais nous allons nous concentrer sur l'utilisation de la base de données des schémas d'information fournie avec SQL.

## Schéma d'information

Faisant partie d'un standard SQL international, le [schéma d'information](https://www.postgresql.org/docs/9.1/information-schema.html) est une base de données contenant des méta-informations sur les objets de la base de données, y compris les tables, les colonnes et les contraintes. Ce schéma fournit aux utilisateurs des vues en lecture seule de nombreux sujets d'intérêt.

Par exemple, pour déterminer si une colonne a été correctement désignée comme clé primaire, nous pouvons interroger une vue spéciale, `key_column_usage`, générée à partir de cette base de données. Cette vue identifie toutes les colonnes de la base de données actuelle qui sont restreintes par une contrainte telle qu'une clé primaire ou une clé étrangère.

Supposons que vous souhaitiez connaître les contraintes qui ont été placées sur certaines colonnes dans une table, telle que `recette`, vous devez taper la requête suivante.

```sql
SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'demo';
```

Ceci devrait afficher le résultat suivant :

```
 constraint_name | table_name | column_name 
-----------------+------------+-------------
 PRIMARY    | demo    | id
(1 row)

```


### À vous de jouer ! 🤠

1. Nous avons recréé les tables `livre`, `chapitre` et `auteur` avec leurs clés primaires correspondantes que vous avez précédemment définies dans le dernier exercice.

    Écrivez une requête utilisant la vue `information_schema.key_column_usage` pour valider l'existence d'une clé primaire dans la table `livre`.
    Quel est le nom de la colonne qui est la clé primaire ?
    
2. Interrogez la vue `information_schema.key_column_usage` pour valider l'existence d'une clé primaire dans la table `chapitre`.
    Quel est le nom de la colonne qui possède la clé primaire ?
    
3. Interrogez la vue `information_schema.key_column_usage` pour valider l'existence d'une clé primaire dans la table `auteur`.
    Quel est le nom de la colonne qui possède la clé primaire ?
    
 


 ## Clé primaire composite

Parfois, aucune des colonnes d'une table ne peut identifier un enregistrement de manière unique. Dans ce cas, nous pouvons désigner plusieurs colonnes dans une table pour servir de clé primaire, également appelée clé primaire composite. Par exemple, nous avons une table, `livres_populaires`, qui contient les livres les plus populaires présentés en avant-première et/ou vendus au cours d'une semaine particulière.

`livres_populaires` aura ces colonnes :

- `titre_du_livre`
- `nom_auteur`
- `nombre_vendu`
- `nombre_prévus`

Étant donné qu'un auteur peut avoir plusieurs livres et qu'un livre peut avoir plusieurs auteurs, il peut y avoir plusieurs listes d'un livre ou d'un auteur particulier dans la table.

Par exemple, une liste de `livres_populaires` triés par titre de livre peut donner les résultats suivants :

```
    titre_du_livre              | nom_auteur        | nombre_vendu | nombre_prévus 
--------------------------------+-------------------+--------------+--------------
 Les Secrets de l'Informatique  | Clara Pixel      |          110 |           130
 Les Secrets de l'Informatique  | Émile Code       |          110 |           130
 Débuter avec Python            | Clara Pixel      |           90 |           120
 Architectures des Données      | Émile Code       |           60 |            75
 Architectures des Données      | Léo Struct       |           60 |            75
 Le Guide du Data Scientist     | Sophie Lambda    |          100 |           115
 Le Guide du Data Scientist     | Léo Struct       |          100 |           115
 Python et la Science des Données| Sophie Lambda   |           95 |           110
 Python et la Science des Données| Émile Code      |           95 |           110
```

Dans l'exemple ci-dessus, le titre du livre `Les Secrets de l'Informatique` est listé deux fois car il a deux auteurs. Si nous listons les livres populaires par nom d'auteur, nous pouvons trouver un auteur apparaissant deux fois, comme dans l'exemple suivant :


```
nom_auteur   |   titre_du_livre            
-------------+----------------------------
 Clara Pixel | Les Secrets de l'Informatique
 Clara Pixel | Débuter avec Python
 Émile Code  | Les Secrets de l'Informatique
 Émile Code  | Architectures des Données
 Émile Code  | Python et la Science des Données
 Léo Struct  | Architectures des Données
 Léo Struct  | Le Guide du Data Scientist
 Sophie Lambda| Le Guide du Data Scientist
 Sophie Lambda| Python et la Science des Données
```

Comme nous le voyons ci-dessus, ni `titre_du_livre` ni `nom_auteur` ne peuvent être une colonne unique. Une clé primaire composite, cependant, peut être dérivée de la combinaison de `titre_du_livre` et `nom_auteur` qui rendrait une ligne unique.

Pour désigner plusieurs colonnes comme une clé primaire composite, utilisez cette syntaxe :

```sql
PRIMARY KEY (colonne_1, colonne_2)
```

Par exemple, si nous devions désigner à la fois recette_id et ingredient_id comme clé primaire composite pour la table `recettes_populaires`, nous écririons l'instruction `CREATE TABLE` pour `recettes_populaires` comme suit:

```sql
CREATE TABLE recettes_populaires (
  recette_id VARCHAR(20),
  ingredient_id VARCHAR(20),
  nombre_telechargements INT,
  PRIMARY KEY (recette_id, ingredient_id)
);
```

### À vous de jouer ! 🤠

1. Créez une nouvelle table `livres_populaires` avec les colonnes suivantes :

- `titre_du_livre`, un varchar de 100 caractères
- `nom_auteur`, un varchar de 50 caractères
- `nombre_vendu`, un nombre entier
- `nombre_prévus`, un nombre entier

    et désignez `titre_du_livre` et `nom_auteur` comme clé primaire composite.

2. Rédigez une requête sous l'instruction `CREATE` en utilisant la vue `information_schema.key_column_usage` pour valider l'existence de la clé primaire composite dans `livres_populaires`.

    Quels sont les noms des colonnes qui composent la clé primaire composite ?
    

## Clé étrangère Partie 1

Lorsqu'une table est liée à une autre table dans une base de données, nous pouvons souhaiter relier ces tables dans une requête. Par exemple, disons que nous avons une table `personne` et une table `email`. Si nous voulons obtenir une liste de noms et d'e-mails associés, nous devons relier ces tables.

Pour maintenir l'intégrité des données et s'assurer que nous pouvons joindre les tables ensemble correctement, nous pouvons utiliser un autre type de clé appelé clé étrangère. Une clé étrangère est une clé qui fait référence à une colonne d'une autre table.

Où devons-nous placer cette clé étrangère ? Doit-elle être dans la table  `personne` ou dans la table  `email` ? Pour répondre à cette question, nous devons déterminer comment la personne est liée à l'email. La création d'un enregistrement de personne nécessite-t-elle l'existence d'un enregistrement d'e-mail ? 

Ce n'est généralement pas le cas. Une personne peut ne pas avoir d'adresse électronique ou avoir une ou plusieurs adresses électroniques. Ainsi, lorsque nous créons un enregistrement dans la table des personnes, nous n'insistons pas pour que cette personne ait également un enregistrement dans la table des adresses électroniques.

La création d'un enregistrement de courrier électronique nécessite-t-elle l'existence d'un enregistrement de personne valide ? 

C'est généralement le cas, car nous ne devons pas créer une adresse électronique pour une personne inexistante. Par conséquent, nous devons placer la clé étrangère dans la table des emails pour nous assurer qu'un enregistrement valide dans la table des personnes doit préexister avant d'ajouter un enregistrement dans la table des emails.

Dans l'illustration ci-dessous, la clé étrangère est `id_personne` dans la table `email`.

![cle_etrangere](./ressources/cle_etrangere.png)

Pour désigner une clé étrangère sur une seule colonne dans `PostgreSQL`, nous utilisons le mot-clé `REFERENCES` :

```sql
CREATE TABLE personne (
  id INT PRIMARY KEY,
  nom VARCHAR(20),
  age INT
);
 
CREATE TABLE email (
  email VARCHAR(20) PRIMARY KEY,
  id_personne INT REFERENCES personne(id),
  stockage INT,
  prix DECIMAL(10, 2)
);
```

### À vous de jouer ! 🤠


Jetez un coup d'œil au schéma du livre que vous avez créé précédemment.


1. Pouvez-vous deviner comment un livre peut être lié à ses chapitres ? Si vous deviez dire qu'un livre a plusieurs chapitres, vous auriez raison.
  
  -  Supprimer  la table `chapitre` avec  la commande `DROP TABLE` et refaite une `CREATE TABLE` avec une colonne `isbn_livre` dans la table `chapitre` dont le type de données est le même que la colonne `isbn` dans `livre`.
  
  - Ensuite, désignez cette colonne comme étant une **clé étrangère**.
    
    
2. Interrogez la vue `information_schema.key_column_usage` pour valider que vous avez désigné `isbn_livre` comme clé étrangère dans la table `chapitre`.


##  Clé étrangère Partie 2

Maintenant que vous avez relié deux tables par le biais d'une clé étrangère, vous vous êtes assuré que vous pouvez correctement réunir les tables dans une requête.

Par exemple, supposons que nous voulions réunir les tables `personne` et `email` du schéma suivant :

![cle_etrangere2](./ressources/cle_etrangere_2.png)

Nous pourrions utiliser la requête suivante pour retourner un tableau de noms et d'emails associés :

```sql
SELECT personne.nom AS nom, email.email AS email
FROM personne, email
WHERE personne.id = email.id_personne;
```

### À vous de jouer ! 🤠

0. Supprimons de nouveau les 2 tables `chapitre` et `livre`.
```sql
DROP TABLE livre;
DROP TABLE chapitre;
```
1. Remplissons la base de données avec des données de livres types.
```sql
    CREATE TABLE livre (
      titre VARCHAR(100),
      isbn VARCHAR(100)  PRIMARY KEY,
      pages INT,
      prix DECIMAL(10, 2),
      description VARCHAR(1024),
      editeur VARCHAR(100)
    );

    CREATE TABLE chapitre (
      id integer PRIMARY KEY,
      isbn_livre VARCHAR(100) REFERENCES livre(isbn),
      numero INT,
      titre VARCHAR(100),
      contenu VARCHAR(1024)
    );
    
    INSERT INTO livre (titre, isbn, pages, prix, description, editeur)
    VALUES ('L''Economie bleue 3.0','979-1032906125',480, 24.0, 'il est possible de révolutionner notre consommation et nos moyens de production tout en protégeant la nature.','L''OBSERVATOIRE'),
    ('Pensées pour moi-même', '978-2080700162', 222, 3.90, '«On sent en soi-même un plaisir secret lorsqu''on parle de cet empereur ; on ne peut lire sa vie sans une espèce d''attendrissement ; tel est l''effet qu''elle produit qu''on a meilleure opinion de soi-même, parce qu''on a meilleure opinion des hommes.» Montesquieu', 'FLAMMARION');
    
    INSERT INTO chapitre (id, isbn_livre, numero, titre, contenu) VALUES
    (1,'979-1032906125', 1, '1. Passer d''une espèce aux écosystème', '
    L''écologie et le développement durable sont des notions qui ont fait éclore la conscience d''une « pen-sée verte ». Ces idées à présent très répandues nous ont appris à apprécier et privilégier l''utilisation de matières écologiquement responsables. Cependant, même si nous commençons à mieux comprendre l''importance d''un cycle de production éthique, nous avons encore du mal à le rendre économiquement viable.'),
    (2,'979-1032906125', 2, 'La puissance du pragmatisme', 'Le déferlement de mauvaises nouvelles sur l''environnement, la pauvreté, le chômage, les violations des droits de l''Homme, l''inaction et la corruption de décideurs, ajouté à l''attitude passive (business as usual) des entreprises, laisse de plus en plus de citoyens soucieux, mais terriblement dépités. '),
    (3,'979-1032906125', 3, 'Inspirante Nature', 'Pour qu''une société perdure, il faut une économie dynamique et adaptative. Mais l''inverse est tout aussi vrai. '),
    (4, '978-2080700162', 1, 'Livre 1', 'De mon grand père Vérus: la bonté coutumière, le calme inaltérable.'),
    (5, '978-2080700162', 5, 'Livre 5', 'Au petit jour, lorsqu''il t''en coûte de t''éveiller aie cette pensée à ta disposition');
```


2. Écrivez une requête pour afficher tout ce qui se trouve dans la table des livres.


3. Nous avons également rempli la table des chapitres. Écrivez une requête pour afficher tout ce qui se trouve dans la table des chapitres.


4. Écrivez une requête pour afficher livre.titre comme livre et chapitre.titre comme chapitres à partir des tables livre et chapitre.

    Chaque ligne renvoyée doit afficher les noms des chapitres et le nom du livre dans lequel ils se trouvent.
    

## QUE SONT LES RELATIONS DANS UNE BASE DE DONNÉES ?

Dans cette leçon, nous allons découvrir les relations entre les tables et comment utiliser ces connaissances pour améliorer notre base de données. Cette leçon s'appuie sur les connaissances préalables des clés de base de données acquises dans la leçon sur les clés de base de données.

Vous trouverez ci-dessous un exemple de diagramme de schéma de base de données. Voyons ce qu'il contient. Il y a sept tables dans ce diagramme et la plupart d'entre elles sont liées les unes aux autres, à l'exception d'une table autonome, `livres_populaires`. Dans chaque table, les clés primaires sont en gras. Les lignes entre les tables relient les clés étrangères et les clés primaires.

Que sont les relations ? Une relation de base de données établit la manière dont les tables connectées dépendent les unes des autres.

Quels sont les différents types de relations dans une base de données ? Il en existe trois types : `une à une`, `une à plusieurs` et `plusieurs à plusieurs`.

Nous les étudierons en détail dans les exercices suivants. Commençons.

![table](./ressources/table_complete.png)
