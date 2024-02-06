# Installation & prise en main de PostgreSQL et de PgAdmin4

## Installation de PostgreSQL et pgAdmin 4 sur Windows

### 1.  Installer PostgreSQL sur Windows
1. **Télécharger l'installateur de PostgreSQL pour Windows** depuis le site officiel [https://www.postgresql.org/download/windows/](https://www.postgresql.org/download/windows/).
2. **Exécuter l'installateur** : Double-cliquez sur le fichier téléchargé et suivez les instructions. Sélectionnez les composants à installer, le dossier d'installation, et définissez le mot de passe pour l'utilisateur superutilisateur `postgres`. Notez bien ce mot de passe, car il sera nécessaire pour pgAdmin 4.
3. **Finaliser l'installation** : À la fin de l'installation, vous pouvez choisir de lancer directement pgAdmin 4, qui est généralement inclus dans l'installation de PostgreSQL.

### 2.  Installer et configurer pgAdmin 4 sur Windows
Si pgAdmin 4 n'a pas été installé avec PostgreSQL ou si vous souhaitez installer la dernière version :
1. **Télécharger pgAdmin 4 pour Windows** depuis [https://www.pgadmin.org/download/](https://www.pgadmin.org/download/).
2. **Installer pgAdmin 4** : Exécutez l'installateur téléchargé et suivez les instructions à l'écran.
3. **Lancer pgAdmin 4** : Après l'installation, ouvrez pgAdmin 4 depuis le menu Démarrer.
4. **Connecter pgAdmin 4 à PostgreSQL** :
   - Cliquez droit sur "Servers" dans le panneau de gauche et sélectionnez "Create" > "Server...".
   - Dans l'onglet "General", nommez votre serveur.
   - Dans l'onglet "Connection", saisissez `localhost` comme hostname, `5432` pour le port, et `postgres` pour le Maintenance database et Username. Entrez le mot de passe défini lors de l'installation de PostgreSQL.
   - Cliquez sur "Save".

## Installation de PostgreSQL et pgAdmin 4 sur macOS

### 1.  Installer PostgreSQL sur macOS avec Postgres.app
1. **Télécharger Postgres.app** depuis [https://postgresapp.com/](https://postgresapp.com/) et sélectionnez la version compatible avec votre système.
2. **Installer Postgres.app** en glissant l'application dans le dossier Applications.
3. **Démarrer PostgreSQL** en ouvrant Postgres.app. Vous pouvez ajuster les préférences de l'application pour démarrer automatiquement PostgreSQL au démarrage de votre Mac.
4. **Configurer le PATH** pour utiliser les commandes PostgreSQL depuis le Terminal (optionnel), en suivant les instructions sur le site de Postgres.app.

### 2. Installer et configurer pgAdmin 4 sur macOS
1. **Télécharger pgAdmin 4 pour macOS** depuis [https://www.pgadmin.org/download/pgadmin-4-macos/](https://www.pgadmin.org/download/pgadmin-4-macos/).
2. **Installer pgAdmin 4** en ouvrant le fichier `.dmg` téléchargé et en glissant l'icône de pgAdmin 4 dans le dossier Applications.
3. **Lancer pgAdmin 4** depuis le dossier Applications. Lors du premier lancement, pgAdmin configurera son environnement et ouvrira une fenêtre de navigateur pour l'interface web.
4. **Connecter pgAdmin 4 à PostgreSQL** :
   - Dans l'interface web de pgAdmin, cliquez droit sur "Servers" dans le panneau de gauche et choisissez "Create" > "Server...".
   - Nommez votre serveur dans l'onglet "General".
   - Dans l'onglet "Connection", entrez `localhost` pour le Hostname/address, `5432` pour le Port, et utilisez `postgres` comme Maintenance database et Username. Si vous avez configuré un mot de passe pour l'utilisateur `postgres`, saisissez-le ici.
   - Cliquez sur "Save".


# Guide de démarrage rapide pour PostgreSQL et pgAdmin

Pour commencer à travailler avec PostgreSQL et pgAdmin, assurez-vous que le service PostgreSQL est en cours d'exécution sur votre ordinateur. Voici comment démarrer PostgreSQL sur Windows et macOS :

## Sur Windows

**Démarrage de PostgreSQL via les Services Windows :**
1. Appuyez sur les touches `Win + R` pour ouvrir la boîte de dialogue "Exécuter".
2. Saisissez `services.msc` et pressez `Entrée` pour lancer l'outil Services.
3. Dans la liste des services, recherchez `postgresql-x64-xx` (remplacez `xx` par le numéro de version spécifique de PostgreSQL que vous avez installé).
4. Faites un clic droit sur le service PostgreSQL correspondant et sélectionnez `Démarrer` pour activer le service.

## Sur macOS

**Démarrage de PostgreSQL avec Postgres.app :**
1. Ouvrez Postgres.app soit en cliquant sur son icône dans le dossier "Applications", soit en le cherchant avec Spotlight.
2. Si Postgres.app n'est pas configuré pour démarrer automatiquement, lancez le service en cliquant sur le bouton `Start`.

Une fois que PostgreSQL est en cours d'exécution, vous pouvez lancer pgAdmin 4 pour gérer vos bases de données :

**Ouvrir pgAdmin 4 :**
- Sur les deux systèmes d'exploitation, ouvrez pgAdmin 4 soit via le menu Démarrer sur Windows, soit en cliquant sur son icône dans le dossier "Applications" sur macOS.
- Utilisez pgAdmin 4 pour vous connecter à vos bases de données PostgreSQL et commencer à les gérer de manière interactive à travers son interface utilisateur graphique.

Ce processus vous permettra de configurer votre environnement de base de données et de vous préparer pour la gestion et le développement de bases de données avec PostgreSQL et pgAdmin.

## Création de la base de données

1. Faites un clic droit sur `Databases` puis sélectionnez ` Create > Database`.

2. Renseignez-les informations de votre base de données.
   - Dans l'onglet "General", nommez votre base de données `seance_1` par exemple et `postgres` pour **Owner**.
   - Dans l'onglet "Definition", saisissez `icu` pour Locale Provider. 

3. Cliquez ensuite sur « Save ».

>Si tout s’est bien passé, la base de données va apparaître dans la liste des bases de données.

## Utiliser Query Tool

1. **Accéder à la base de données** : Cliquez sur la base de données `seance_1` que vous venez de créer pour la sélectionner.
2. **Ouvrir Query Tool** : Avec `seance_1` sélectionnée, cliquez droit sur le nom de la base de données et choisissez "Query Tool" dans le menu contextuel. Une nouvelle fenêtre d'éditeur de requête s'ouvrira.
3. **Écrire une requête SQL** : Dans l'éditeur de requête, vous pouvez écrire vos requêtes SQL. Par exemple, pour créer une nouvelle table, vous pourriez entrer :
   ```sql
   CREATE TABLE exemple (
       id SERIAL PRIMARY KEY,
       nom VARCHAR(50),
       description TEXT
   );
   ```
4. **Exécuter la requête** : Pour exécuter la requête que vous avez écrite, cliquez sur le bouton "Execute" (l'icône en forme de flèche verte) dans la barre d'outils de l'éditeur de requête. Si votre requête est correcte, vous verrez un message indiquant que l'opération a été un succès dans l'onglet "Messages" en bas de la fenêtre.

### Insérer et interroger des données

- **Insérer des données** : Vous pouvez insérer des données dans votre table en utilisant une requête `INSERT`. Par exemple :
  ```sql
  INSERT INTO exemple (nom, description) VALUES ('Item 1', 'Ceci est un exemple de description.');
  ```
- **Interroger des données** : Pour voir les données de votre table, utilisez une requête `SELECT`. Par exemple :
  ```sql
  SELECT * FROM exemple;
  ```
- Exécutez vos requêtes d'insertion et de sélection en suivant le même processus que précédemment pour exécuter des requêtes.

Ces étapes vous permettent de créer une base de données et de l'utiliser pour exécuter des requêtes SQL de base avec pgAdmin 4, offrant une interface visuelle pour gérer vos bases de données PostgreSQL.

## Changer le thème

1. File > Preferences > Miscellaneous > Themes > Select dark theme.
