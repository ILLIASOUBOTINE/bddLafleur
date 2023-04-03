-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3360
-- Généré le : lun. 03 avr. 2023 à 23:37
-- Version du serveur : 8.0.24
-- Version de PHP : 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lafleur`
--

-- --------------------------------------------------------

--
-- Structure de la table `banniere_event`
--

CREATE TABLE `banniere_event` (
  `idbanniere_event` int NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_debut` timestamp NULL DEFAULT NULL,
  `date_fin` timestamp NULL DEFAULT NULL,
  `photo_idphoto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `banniere_event`
--

INSERT INTO `banniere_event` (`idbanniere_event`, `titre`, `description`, `date_debut`, `date_fin`, `photo_idphoto`) VALUES
(1, '8 Mars', 'Créer des bouquets pour nos mères et femmes bien-aimées', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idcategorie` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idcategorie`, `nom`) VALUES
(4, 'Amour et sentiments'),
(5, 'Anniversaire'),
(3, 'Mariage'),
(2, 'Naissance'),
(1, 'Remerciement');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_has_produit`
--

CREATE TABLE `categorie_has_produit` (
  `categorie_idcategorie` int NOT NULL,
  `produit_idproduit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie_has_produit`
--

INSERT INTO `categorie_has_produit` (`categorie_idcategorie`, `produit_idproduit`) VALUES
(3, 1),
(4, 1),
(2, 2),
(3, 2),
(1, 3),
(1, 4),
(2, 5),
(3, 6),
(4, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mot_passe` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `email`, `mot_passe`) VALUES
(44, '', '$2y$10$kndIvOadV.exDIW90r8sL.51bLYGAveBq.W9dUWpgw8uaHx3eDIdm'),
(28, 'Egor', '$2y$10$aL9mZcQ1yFUvE.EhRGz8z.iDJW8xXdlcxwlBHmoSROk1MuaZv2j8W'),
(27, 'lera@gmail.com', '$2y$10$9r0v8Pb0jeG8riVuOyIlpuWfsJlcB9R2kgb0aDmsNJzl5Rb/Pxk02'),
(22, 'test@test.com', '$2y$10$Huc3xCsCf8YWjhXCyVlIJ.pDP42srDyJInGhsBmMUJGivVSh53rni'),
(29, 'test@test.com1', '$2y$10$DksDX8WgA8TGz1Hkwfl.Ou9DJ4fjnp6BIlZQzsbMz4wxCs9KoDyXS'),
(43, 'test@test1.com', '$2y$10$sUhV.spKo43elcYeodFZeeKgQ9NZMIf3jJPFzvZ3QBQjSLSWyYyYi'),
(50, 'test@test45.com', '$2y$10$9xgnVI45vfSu0xhjI.UVJ.olSTnokEUS5Xw1Gm1ZPIn5.JZQulhnm'),
(45, 'test@test5.com', '$2y$10$sVDCClo0p7HS7.c1V3xy.OVFSS4TLI9TTHGlHVP80fDNCVWsGL2yy'),
(46, 'test@test6.com', '$2y$10$eyOBGLjFstiq/t6dwokzveR0OkQVny7g58091G0Cfd7zfzVodbraO'),
(47, 'test@test7.com', '$2y$10$3bU4NlI0/lxMKOQd9B2Jkem0C9WgOUPJ5y8BGqwMNTsp6iC0ySg66'),
(48, 'test@test8.com', '$2y$10$yHBorsFlZRoCO1xHm.XHVuq2SpqI91n9.jdwW1BBBNukFUF/VYcle'),
(49, 'test@test9.com', '$2y$10$CtgMxUlBj.Ch75HhhtTBqOeoKewOf7QztcJcOIEBv81AOC9lplBy6');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `idcommandes` int NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_idclient` int NOT NULL,
  `num_commande` int DEFAULT NULL,
  `livraison_idlivraison` int NOT NULL,
  `frais_livraison` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`idcommandes`, `date_create`, `client_idclient`, `num_commande`, `livraison_idlivraison`, `frais_livraison`) VALUES
(36, '2023-03-12 20:05:10', 22, NULL, 43, '3.99'),
(37, '2023-03-12 20:55:53', 22, NULL, 44, '3.99'),
(38, '2023-03-26 13:03:51', 22, NULL, 45, '0.00'),
(39, '2023-03-26 13:05:20', 22, NULL, 46, '0.00'),
(40, '2023-03-26 16:33:05', 22, NULL, 47, '3.99');

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `idcouleur` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`idcouleur`, `nom`) VALUES
(2, ' blanche'),
(3, 'indéfini'),
(1, 'rouge');

-- --------------------------------------------------------

--
-- Structure de la table `espece_fleur`
--

CREATE TABLE `espece_fleur` (
  `idespece_fleur` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `espece_fleur`
--

INSERT INTO `espece_fleur` (`idespece_fleur`, `nom`) VALUES
(5, 'Avoine séchée orange'),
(3, 'Eucalyptus'),
(2, 'Lys oriental '),
(4, 'Orchidée Phalaenopsis'),
(1, 'Rose'),
(14, 'rwrf');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fleures`
--

CREATE TABLE `fleures` (
  `idfleures` int NOT NULL,
  `longueur` int DEFAULT NULL,
  `couleur_idcouleur` int NOT NULL,
  `unite_idunite` int NOT NULL,
  `espece_fleur_idespece_fleur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fleures`
--

INSERT INTO `fleures` (`idfleures`, `longueur`, `couleur_idcouleur`, `unite_idunite`, `espece_fleur_idespece_fleur`) VALUES
(1, 40, 1, 1, 1),
(2, NULL, 2, 1, 1),
(3, 90, 2, 1, 2),
(4, NULL, 3, 2, 3),
(5, NULL, 3, 4, 4),
(6, NULL, 3, 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `idlivraison` int NOT NULL,
  `date_prevu` date NOT NULL,
  `date_livre` date DEFAULT NULL,
  `notre_livraison_idnotre_livraison` int NOT NULL,
  `rue` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num_maison` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num_appart` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `num_telephone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`idlivraison`, `date_prevu`, `date_livre`, `notre_livraison_idnotre_livraison`, `rue`, `num_maison`, `num_appart`, `num_telephone`) VALUES
(43, '2023-03-23', NULL, 1, 'Circulade', '4545', '7834', '0753633486'),
(44, '2023-03-15', NULL, 3, 'Circulade', '4545', '78', '0753633486'),
(45, '2023-04-13', NULL, 1, '', '', '', ''),
(46, '2023-04-13', NULL, 1, '', '', '', ''),
(47, '2023-03-27', NULL, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_31_104418_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Structure de la table `notre_livraison`
--

CREATE TABLE `notre_livraison` (
  `idnotre_livraison` int NOT NULL,
  `nom_ville` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notre_livraison`
--

INSERT INTO `notre_livraison` (`idnotre_livraison`, `nom_ville`) VALUES
(1, 'Lourmarin'),
(2, 'Lauris'),
(3, 'Puget'),
(4, 'Cadenet'),
(5, 'Bonnieux');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'watch', 'web', '2023-04-02 11:39:12', '2023-04-02 11:39:12'),
(2, 'edit', 'web', '2023-04-02 11:39:12', '2023-04-02 11:39:12'),
(3, 'delete', 'web', '2023-04-02 11:39:12', '2023-04-02 11:39:12'),
(4, 'create', 'web', '2023-04-02 11:39:12', '2023-04-02 11:39:12');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `idphoto` int NOT NULL,
  `img_url` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`idphoto`, `img_url`) VALUES
(4, 'event_venir.jpg'),
(3, 'rose.jpg'),
(2, 'rose_blanch.jpg'),
(1, 'rose_rouge.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `photo_has_produit`
--

CREATE TABLE `photo_has_produit` (
  `photo_idphoto` int NOT NULL,
  `produit_idproduit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `photo_has_produit`
--

INSERT INTO `photo_has_produit` (`photo_idphoto`, `produit_idproduit`) VALUES
(1, 1),
(2, 2),
(1, 3),
(3, 3),
(4, 3),
(4, 4),
(4, 5),
(2, 6),
(4, 6),
(3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idproduit` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `longueur` int DEFAULT NULL,
  `prix_unite` decimal(5,2) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantiteTotale` int NOT NULL,
  `unite_idunite` int NOT NULL,
  `ventesTotales` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idproduit`, `nom`, `longueur`, `prix_unite`, `description`, `quantiteTotale`, `unite_idunite`, `ventesTotales`) VALUES
(1, 'Rose rouge', 40, '3.00', 'Symbole de l\'amour absolu, cette délicate rose rouge saura toucher le cœur de l\'être aimé. Exprimez l\'intensité et l\'exclusivité de votre amour avec cette superbe rose rouge.', 2, 1, 10),
(2, 'Rose Blanche', NULL, '29.90', 'La rose blanche est de nature moins excessive que la rose rouge. A contrario de sa collègue, elle permet de nuancer les sentiments et c’est sans doute l’une des raisons pour lesquelles elle fait partie des fleurs préférées des Français.', 10, 1, 3),
(3, 'Lys oriental Blanche', 90, '34.90', 'Le lys oriental blanc est la fleur de toutes les cérémonies.\r\nMajestueux et élégant, le lys oriental est idéal pour fleurir vos cérémonies : mariages, baptêmes...\r\nLa taille que nous vous proposons possède environ 2 fleurons par tige.', 8, 1, 12),
(4, 'Eucalyptus', NULL, '19.90', 'Les feuilles d’eucalyptus sont utilisées pour parfumer certains bonbons, mais aussi en infusion contre les affections respiratoires.', 10, 2, 45),
(5, 'Orchidée Phalaenopsis', NULL, '59.90', 'Les orchidées Phalaenopsis sont passées du statut de plante assez précieuse, voire de collection, à celui de plantes low-cost que l\'on voit dans tous les intérieurs, chez tous les fleuristes et autres enseignes de décoration !', 10, 4, 1),
(6, 'Brassée de fleurs fraiches surprises', NULL, '39.90', 'Nous respectons également la saisonnalité des produits, et prenons plaisir à puiser notre inspiration auprès de la nature qui nous entoure. A chaque saison ses fleurs, ses couleurs, et sa poésie.', 0, 3, 23),
(7, 'Avoine séchée orange', NULL, '14.90', ' Véritable fleur des champs séchée sur tige, l\'avoine est idéale pour une décoration florale sur le thème champêtre ou rustique. Ses petites brindilles lui donnent tout son charme.', 2, 2, 13);

-- --------------------------------------------------------

--
-- Structure de la table `produit_has_commandes`
--

CREATE TABLE `produit_has_commandes` (
  `produit_idproduit` int NOT NULL,
  `commandes_idcommandes` int NOT NULL,
  `quantite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit_has_commandes`
--

INSERT INTO `produit_has_commandes` (`produit_idproduit`, `commandes_idcommandes`, `quantite`) VALUES
(1, 36, 1),
(1, 37, 1),
(1, 40, 3),
(7, 38, 4),
(7, 39, 4);

-- --------------------------------------------------------

--
-- Structure de la table `produit_has_fleures`
--

CREATE TABLE `produit_has_fleures` (
  `produit_idproduit` int NOT NULL,
  `quantite` int NOT NULL,
  `fleures_idfleures` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit_has_fleures`
--

INSERT INTO `produit_has_fleures` (`produit_idproduit`, `quantite`, `fleures_idfleures`) VALUES
(1, 1, 1),
(2, 10, 2),
(3, 10, 3),
(4, 300, 4),
(5, 25, 5),
(6, 5, 1),
(6, 5, 2),
(6, 5, 3),
(7, 100, 6);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-user', 'web', '2023-03-31 09:42:57', '2023-03-31 09:42:57'),
(2, 'user', 'web', '2023-04-02 10:22:26', '2023-04-02 10:22:26'),
(3, 'admin', 'web', '2023-04-02 12:59:23', '2023-04-02 16:23:28');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `idunite` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`idunite`, `nom`) VALUES
(3, 'bouquet'),
(4, 'fleur'),
(2, 'gr'),
(1, 'tige');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test', NULL, '$2y$10$0awzLXde7hQKI81NOXAFJu11VtaaU4rfqwvha7gO00t.Qxl84x.V.', NULL, '2023-03-27 17:42:14', '2023-03-27 17:42:14'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$sSrLLpQt8I.egit.AUYSP.7Ma9MXa79s6LJVZ039nLPnCj7HbuOpS', 'tyqRgv5e7smKkrj7CUaVWlX0YuCtcwORdIpp1hA1oXk9FIOEg6kglmLFOfMp', '2023-03-31 09:42:57', '2023-03-31 09:42:57'),
(3, 'test1', 'test@test1.com', NULL, '$2y$10$mHm.nbgoN9k/qGgYKMUUw.Fobb9bKn9VAKZ8uKFN4FxXn2V9nQT2q', NULL, '2023-04-02 10:27:46', '2023-04-02 10:27:46');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banniere_event`
--
ALTER TABLE `banniere_event`
  ADD PRIMARY KEY (`idbanniere_event`),
  ADD KEY `fk_banniere_event_photo1_idx` (`photo_idphoto`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idcategorie`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`);

--
-- Index pour la table `categorie_has_produit`
--
ALTER TABLE `categorie_has_produit`
  ADD PRIMARY KEY (`categorie_idcategorie`,`produit_idproduit`),
  ADD KEY `fk_categorie_has_produit_produit1_idx` (`produit_idproduit`),
  ADD KEY `fk_categorie_has_produit_categorie1_idx` (`categorie_idcategorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`,`mot_passe`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`idcommandes`),
  ADD UNIQUE KEY `num_commande_UNIQUE` (`num_commande`),
  ADD KEY `fk_commandes_client1_idx` (`client_idclient`),
  ADD KEY `fk_commandes_livraison1_idx` (`livraison_idlivraison`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`idcouleur`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`);

--
-- Index pour la table `espece_fleur`
--
ALTER TABLE `espece_fleur`
  ADD PRIMARY KEY (`idespece_fleur`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `fleures`
--
ALTER TABLE `fleures`
  ADD PRIMARY KEY (`idfleures`),
  ADD KEY `fk_stock_fleures_couleur1_idx` (`couleur_idcouleur`),
  ADD KEY `fk_stock_fleures_unite1_idx` (`unite_idunite`),
  ADD KEY `fk_fleures_espece_fleur1_idx` (`espece_fleur_idespece_fleur`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`idlivraison`),
  ADD KEY `fk_livraison_notre_livraison1_idx` (`notre_livraison_idnotre_livraison`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `notre_livraison`
--
ALTER TABLE `notre_livraison`
  ADD PRIMARY KEY (`idnotre_livraison`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`idphoto`),
  ADD UNIQUE KEY `img_url_UNIQUE` (`img_url`);

--
-- Index pour la table `photo_has_produit`
--
ALTER TABLE `photo_has_produit`
  ADD PRIMARY KEY (`photo_idphoto`,`produit_idproduit`),
  ADD KEY `fk_photo_has_produit_produit1_idx` (`produit_idproduit`),
  ADD KEY `fk_photo_has_produit_photo1_idx` (`photo_idphoto`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idproduit`),
  ADD KEY `fk_produit_unite_idx` (`unite_idunite`);

--
-- Index pour la table `produit_has_commandes`
--
ALTER TABLE `produit_has_commandes`
  ADD PRIMARY KEY (`produit_idproduit`,`commandes_idcommandes`),
  ADD KEY `fk_produit_has_commandes_commandes1_idx` (`commandes_idcommandes`),
  ADD KEY `fk_produit_has_commandes_produit1_idx` (`produit_idproduit`);

--
-- Index pour la table `produit_has_fleures`
--
ALTER TABLE `produit_has_fleures`
  ADD PRIMARY KEY (`produit_idproduit`,`fleures_idfleures`),
  ADD KEY `fk_produit_has_stock_fleures_produit1_idx` (`produit_idproduit`),
  ADD KEY `fk_produit_has_fleures_fleures1_idx` (`fleures_idfleures`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`idunite`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `banniere_event`
--
ALTER TABLE `banniere_event`
  MODIFY `idbanniere_event` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idcategorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `idcommandes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `idcouleur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `espece_fleur`
--
ALTER TABLE `espece_fleur`
  MODIFY `idespece_fleur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fleures`
--
ALTER TABLE `fleures`
  MODIFY `idfleures` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `idlivraison` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `notre_livraison`
--
ALTER TABLE `notre_livraison`
  MODIFY `idnotre_livraison` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `idphoto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idproduit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `unite`
--
ALTER TABLE `unite`
  MODIFY `idunite` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `banniere_event`
--
ALTER TABLE `banniere_event`
  ADD CONSTRAINT `fk_banniere_event_photo1` FOREIGN KEY (`photo_idphoto`) REFERENCES `photo` (`idphoto`);

--
-- Contraintes pour la table `categorie_has_produit`
--
ALTER TABLE `categorie_has_produit`
  ADD CONSTRAINT `fk_categorie_has_produit_categorie1` FOREIGN KEY (`categorie_idcategorie`) REFERENCES `categorie` (`idcategorie`),
  ADD CONSTRAINT `fk_categorie_has_produit_produit1` FOREIGN KEY (`produit_idproduit`) REFERENCES `produit` (`idproduit`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `fk_commandes_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`),
  ADD CONSTRAINT `fk_commandes_livraison1` FOREIGN KEY (`livraison_idlivraison`) REFERENCES `livraison` (`idlivraison`);

--
-- Contraintes pour la table `fleures`
--
ALTER TABLE `fleures`
  ADD CONSTRAINT `fk_fleures_espece_fleur1` FOREIGN KEY (`espece_fleur_idespece_fleur`) REFERENCES `espece_fleur` (`idespece_fleur`),
  ADD CONSTRAINT `fk_stock_fleures_couleur1` FOREIGN KEY (`couleur_idcouleur`) REFERENCES `couleur` (`idcouleur`),
  ADD CONSTRAINT `fk_stock_fleures_unite1` FOREIGN KEY (`unite_idunite`) REFERENCES `unite` (`idunite`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `fk_livraison_notre_livraison1` FOREIGN KEY (`notre_livraison_idnotre_livraison`) REFERENCES `notre_livraison` (`idnotre_livraison`);

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `photo_has_produit`
--
ALTER TABLE `photo_has_produit`
  ADD CONSTRAINT `fk_photo_has_produit_photo1` FOREIGN KEY (`photo_idphoto`) REFERENCES `photo` (`idphoto`),
  ADD CONSTRAINT `fk_photo_has_produit_produit1` FOREIGN KEY (`produit_idproduit`) REFERENCES `produit` (`idproduit`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_produit_unite` FOREIGN KEY (`unite_idunite`) REFERENCES `unite` (`idunite`);

--
-- Contraintes pour la table `produit_has_commandes`
--
ALTER TABLE `produit_has_commandes`
  ADD CONSTRAINT `fk_produit_has_commandes_commandes1` FOREIGN KEY (`commandes_idcommandes`) REFERENCES `commandes` (`idcommandes`),
  ADD CONSTRAINT `fk_produit_has_commandes_produit1` FOREIGN KEY (`produit_idproduit`) REFERENCES `produit` (`idproduit`);

--
-- Contraintes pour la table `produit_has_fleures`
--
ALTER TABLE `produit_has_fleures`
  ADD CONSTRAINT `fk_produit_has_fleures_fleures1` FOREIGN KEY (`fleures_idfleures`) REFERENCES `fleures` (`idfleures`),
  ADD CONSTRAINT `fk_produit_has_stock_fleures_produit1` FOREIGN KEY (`produit_idproduit`) REFERENCES `produit` (`idproduit`);

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
