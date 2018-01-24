User::HABTM_Roles.create!([
  {user_id: 1, role_id: 1}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 1}
])
Organization.create!([
  {name: "TRSB Rouen"}
])
Project.create!([
  {name: "Carnet de Santé", organization_id: 1, bug_tracker: "https://projets-siv1.rff.fr/issues/"}
])
ProjectBundle.create!([
  {name: "Sprint 3.1", project_id: 1, estimated_time: nil},
  {name: "Sprint 3.2", project_id: 1, estimated_time: 6.0}
])
Task.create!([
  {identifier: 51669, name: "Ajouter l'indicateur Nombre d'actions en cours (RG0125) dans page Constats et plans d'actions", description: "_Evolution_", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51668, name: "Ouvrir la page Constats/Actions en cours à partir de l'indicateur Nbre actions en cours (RG0125)", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51614, name: "Le contrôle sur le format du fichier n'est pas affiché lors de la dépose du fichier", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51591, name: "Constat/Plan d'action - Décallage de certaines tuiles", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51504, name: "REC.4.13 : Un utilisateur peut rechercher des bâtiments à partir de données de cotation", description: "_Exigence_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51497, name: "Recherche cartographique - Lancement de la recherche sans critère", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51161, name: "Création d'un indicateur de bail multi-bâtiment", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 51144, name: "RG0008 - Gestion des tableaux - Modification du tri par défaut", description: "_Evolution_", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: 1.0},
  {identifier: 51094, name: "REC.4.12 : Un utilisateur doit pouvoir saisir un code UT BAT sans espace et underscore", description: "_Exigence_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 50744, name: "Recherche cartographique - Icône Géolocalisation", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 50739, name: "Recherche cartographique-Ajouter la boussole sur la carte", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 50058, name: "Recherche cartographique - Afficher la couche Terrain - Propriétaire interne\"", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 48923, name: "Bloc vacance-Affichage de l'infobulle", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 48621, name: "Complément RG0142 - Bloc Projets/Actions en cours", description: "_Evolution_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: 5.0},
  {identifier: 47865, name: "CONSTAT - PROJETS ACTIONS EN COURS", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47811, name: "Constats/Plans d'action - Il manque une zone commentaire", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47809, name: "Constats/Plans d'action - La maquette n'est pas respectée", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47794, name: "Import fichier SPA OCCUPATION", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47793, name: "Import fichier SPA CESSION", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47771, name: "Le passage en mode en ligne déclenche de nombreux messages RID", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47484, name: "Les filtres saisis dans la recherche avancée ne s'affiche pas dans l'écran de recherche", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: nil},
  {identifier: 47301, name: "Moteur de recherche - Une catégorie site RFF est présente & libellé UT BAT", description: "_Anomalie_\r\n", project_id: 1, project_bundle_id: 2, task_id: nil, estimated_time: 0.0},
  {identifier: nil, name: "APP - Modification du tri par défaut dans la recherche", description: "Actuellement dans le tableau du résultat de recherche des bâtiments, le tri est \"celui de la dernière recherche (le tri des colonnes est enregistré pour un utilisateur et un tableau donné). S’il s’agit de sa première recherche alors par défaut les bâtiments sont triés par ordre croissant UT BAT\".\r\n\r\nSuite aux retours utilisateurs, il est demandé que désormais par défaut les bâtiments soient triés par ordre croissant UT BAT.\r\nIl n'y a donc plus de nécessite de conserver le tri de la dernière recherche.\r\nLa RG0008 a été modifiée par conséquence.", project_id: 1, project_bundle_id: nil, task_id: 8, estimated_time: 1.0},
  {identifier: nil, name: "Ajout d'un filtre pour permettre à l'utilisateur de sélectionner les tuiles qu'il souhaite voir", description: "Ajout d'un filtre pour permettre à l'utilisateur de sélectionner les tuiles qu'il souhaite voir", project_id: 1, project_bundle_id: nil, task_id: 14, estimated_time: 1.0},
  {identifier: nil, name: "Affichage en zone des tuiles en fonction de l'application émettrice", description: "Affichage en zone des tuiles en fonction de l'application émettrice", project_id: 1, project_bundle_id: nil, task_id: 14, estimated_time: 1.0},
  {identifier: nil, name: "Modification de l'apparence et du contenu des tuiles", description: "Modification de l'apparence et du contenu des tuiles", project_id: 1, project_bundle_id: nil, task_id: 14, estimated_time: 2.0},
  {identifier: nil, name: "Prise en compte d'un nouveau champs dans les interfaces SPA CESSION et SPA OCCUPATION qui alimentera le champ Description (Champ déjà existant). Ce champ Description est à déplacer.", description: "Prise en compte d'un nouveau champs dans les interfaces SPA CESSION et SPA OCCUPATION qui alimentera le champ Description (Champ déjà existant). Ce champ Description est à déplacer.", project_id: 1, project_bundle_id: nil, task_id: 14, estimated_time: 1.0}
])
