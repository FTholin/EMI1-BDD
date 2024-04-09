# Conception d'une base de données à partir de zéro

## À vous de jouer ! 🤠


Bienvenue ! Vous devriez maintenant être familiarisé avec le concept de schéma de base de données et avec les composants qui entrent dans la composition d'un schéma. Pour résumer, ces composants sont les suivants

- des tables avec des colonnes d'un type de données particulier
- des clés primaires pour identifier de manière unique les éléments de vos tables
- des clés étrangères pour définir les relations entre deux tables.
    - Il existe de nombreux types de relations que vous pouvez définir avec les clés. Il existe plusieurs types de relations que vous pouvez définir avec les clés, à savoir : une à une, une à plusieurs et plusieurs à plusieurs.
    
Lors de l'apprentissage des schémas de base de données, nous vous avons toujours donné des informations d'orientation.

Que vous travailliez à partir d'images du schéma lui-même ou d'une description des informations à stocker dans une base de données, vous avez toujours construit votre schéma de base de données avec notre aide.

Pour ce projet, nous revenons en arrière et vous laissons concevoir la base de données à partir de zéro.

La principale différence est qu'il y aura une composante "recherche" dans le projet, dans laquelle vous devrez apprendre quelles données sont pertinentes pour votre base de données. Nous en parlerons plus en détail dans les sections suivantes. Pour l'instant, sachez que les principaux objectifs de ce projet sont les suivants :

- Concevoir un schéma de base de données sur un sujet de votre choix.
- Implémenter ce schéma sur un papier au préalable.



### Partie 1 - Recherche

Pour ce projet, vous allez créer une base de données sur un sujet de votre choix.

Voici quelques exemples:


- Gestion d'une collection de jeux vidéo: une base de données pour suivre les jeux vidéo, les plateformes, les genres et les évaluations.

- Suivi des événements et des festivals: une base de données pour organiser les informations sur les événements locaux, les artistes participants et les lieux.

- Base de données de recettes de cuisine: pour stocker et organiser des recettes, des ingrédients, des temps de préparation et des instructions.

- Plateforme de streaming musical: une base de données pour gérer les informations sur les chansons, les albums, les artistes et les playlists.

- Organisation de soirées jeux de société: une base de données pour gérer les informations sur les jeux, les joueurs, les soirées et les scores.

- Gestion des clubs de sport universitaires: une base de données pour suivre les équipes, les membres, les matchs et les classements.

- Base de données des plantes d'intérieur: pour gérer les informations sur les plantes, leurs besoins en eau et en lumière, et leur emplacement dans la maison.

- Gestion des voyages et des destinations: une base de données pour planifier et organiser les informations sur les voyages, les lieux visités, les activités et les hébergements.

- Suivi des films et des séries: une base de données pour gérer les informations sur les films et les séries, leurs genres, les acteurs et les réalisateurs.

- Base de données des œuvres d'art urbain: pour recenser et organiser les informations sur les œuvres d'art urbain, les artistes et les emplacements.

- Gestion des activités et des ressources d'un FabLab: une base de données pour inventorier les machines, les outils, les projets réalisés et les membres du FabLab.

- Base de données de podcasts et d'épisodes: pour organiser les informations sur les podcasts, leurs épisodes, les thèmes abordés et les intervenants.

- Gestion d'un club de lecture: une base de données pour suivre les livres lus, les critiques, les auteurs et les discussions de groupe.

- Suivi des entraînements sportifs personnels: une base de données pour enregistrer les types d'entraînements, les performances, les objectifs et les progrès.

- Gestion des collections de cartes à collectionner (comme Magic: The Gathering ou Pokémon): une base de données pour inventorier les cartes, les éditions, les valeurs et les transactions effectuées.


Comment commencer un tel projet ? C'est là que la partie "recherche" de ce projet entre en jeu.

Réfléchissez à la manière dont le système  peut être traduit en base de données.

- Ce système comporte-t-il des entités ou des objets spécifiques ? 
- Ces objets seront probablement traduits en tables.
- Existe-t-il des relations entre ces entités ? 
    - De quels types de relations s'agit-il ? Une à une ? De un à plusieurs ? Plusieurs à plusieurs ? Ces relations seront traduites en clés étrangères.
- Existe-t-il un moyen d'identifier les entités de manière unique ? Si c'est le cas, cela doit être représenté par des clés primaires.

Au cours de cette phase de recherche, votre objectif final devrait être un diagramme de schéma, également connu sous le nom de diagramme entités-relations.


### Partie 2 - Transformer votre diagramme en schéma de base de données

Maintenant que vous avez pris connaissance de la base de données que vous allez créer, il est temps d'implémenter votre base de données dans Postgres !

Il y a un certain nombre d'étapes dans ce processus. Nous allons essayer de mettre en évidence les plus importantes d'entre elles ci-dessous.

- Il est probablement préférable de créer une nouvelle base de données pour ce projet. De cette façon, vous n'aurez pas de tables provenant d'autres projets dans votre base de données. 
- Créez les tables que vous avez dessinées dans votre diagramme entité-relation. Lors de la création de ces tables, il convient de faire attention à certaines choses.
    - Assurez-vous que vous avez attribué à chaque colonne un type de données approprié.
    - Définissez des clés primaires pour que chaque ligne de vos tables soit identifiable de manière unique.
    - Définissez des clés étrangères pour créer des relations entre les tables. L'ordre à respecter ici peut s'avérer un peu délicat. Si vous créez une table avec une clé étrangère faisant référence à une colonne d'une autre table, assurez-vous que l'autre table a déjà été créée !


### Partie 3 - Ajouter des données à vos tableaux

Maintenant que vous avez créé vos tableaux, l'une des meilleures façons de vérifier qu'ils fonctionnent comme prévu est d'ajouter des données de test. Ajoutez suffisamment de lignes à vos tableaux pour tester toutes les relations que vous avez créées. Par exemple, si vous pensez avoir créé une relation de type "un à plusieurs" en utilisant des clés étrangères, assurez-vous que vous pouvez réellement créer plusieurs lignes qui font toutes référence à une seule ligne d'une autre table.

### Partie 4 - Modifiez votre schéma si nécessaire

Au fur et à mesure que vous saisissez des données dans vos tables, vous avez peut-être découvert des problèmes que vous n'aviez pas anticipés. Ce n'est pas grave ! Il est difficile d'obtenir un schéma parfait du premier coup. Le type de données d'une colonne doit peut-être être modifié. Ou peut-être vous êtes-vous rendu compte qu'une relation de un à plusieurs devrait en fait être une relation de plusieurs à plusieurs. Quel que soit le problème, c'est l'occasion d'itérer.

Si vous ne savez pas comment modifier la structure d'une table après sa création, vous pouvez consulter la documentation sur ALTER TABLE. Plus précisément, certaines des commandes qui peuvent être utiles sont ADD COLUMN, DROP COLUMN, SET DATA TYPE et ADD table_constraint.

## Partie 5 - Intérroger votre base de données

### 1. Identifier les Besoins en Informations
Commencez par comprendre clairement ce que vous souhaitez extraire de votre base de données. Posez-vous des questions simples comme "Quel genre d'information ai-je besoin ?" ou "Quel est le but de cette requête ?". Cela pourrait être de trouver tous les jeux d'un certain genre, le total des ventes par produit, etc.


### 2. Tester et Explorer

- **Petits Pas** : Commencez avec des requêtes simples et progressez vers des requêtes plus complexes.
- **Exemples Pratiques** : Appliquez des scénarios réels pour formuler des requêtes, cela aide à mieux comprendre comment et pourquoi utiliser certaines commandes.



# Grille de Notation

1. **Recherche et Conception (4 points)**
   - **Clarté et Pertinence de la Recherche (1.5 points)** : Qualité de la recherche initiale, pertinence des sources, et pertinence des informations collectées pour le projet.
   - **Compréhension du Sujet et Originalité (2.5 points)** : Capacité à choisir un sujet pertinent et original, et à démontrer une compréhension approfondie du domaine choisi.

2. **Diagramme Entité-Relation (4 points)**
   - **Exactitude et Complétude (2 points)** : Le diagramme est-il complet et exact ? Toutes les entités, relations et attributs nécessaires sont-ils inclus ?
   - **Clarté et Organisation (2 points)** : Le diagramme est-il facile à comprendre ? L'organisation est-elle logique et les relations clairement indiquées ?

3. **Implémentation de la Base de Données (4 points)**
   - **Création des Tables et Définition des Colonnes  (1.5 points)** : Les tables sont-elles correctement créées avec des noms appropriés et des types de données corrects ?
   - **Utilisation des Clés Primaires et Étrangères  (1.5 points)** : Les clés primaires et étrangères sont-elles correctement utilisées pour établir des relations ?
   - **Respect des Contraintes et de l'Intégrité des Données (1 point)** : Les contraintes sont-elles correctement appliquées pour garantir l'intégrité des données ?

4. **Insertion et Manipulation des Données (3 points)**
   - **Ajout de Données de Test (1.5 points)** : Des données de test pertinentes et variées ont-elles été ajoutées aux tables ?
   - **Modification et Mise à Jour des Données (1.5 points)** : Le candidat a-t-il démontré sa capacité à modifier et à mettre à jour les données de manière appropriée ?

5. **Requêtes SQL (3 points)**
   - **Complexité et Variété des Requêtes (1.5 points)** : Les requêtes couvrent-elles une gamme de cas d'usage (sélection, jointure, agrégation) ?
   - **Exactitude et Efficacité des Requêtes (1.5 points)** : Les requêtes sont-elles correctes et écrites de manière efficace ?

6. **Documentation et Explication (1 point)**
   - **Clarté de la Documentation (0.5 point)** : La documentation est-elle claire, bien organisée et facile à comprendre ?
   - **Explication des Choix de Conception (0.5 point)** : Le candidat a-t-il bien expliqué ses choix de conception et leur pertinence par rapport aux besoins du projet ?

7. **Bonus : Innovation et Créativité (jusqu’à 1 points)**
   - Points bonus pour la créativité, l'innovation dans le choix du sujet, l'utilisation de fonctionnalités avancées de la base de données, ou une implémentation particulièrement élégante.

### Total : 20 Points