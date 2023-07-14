-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 06:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sea`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user data', 7, 'add_userdata'),
(26, 'Can change user data', 7, 'change_userdata'),
(27, 'Can delete user data', 7, 'delete_userdata'),
(28, 'Can view user data', 7, 'view_userdata'),
(29, 'Can add tickets', 8, 'add_tickets'),
(30, 'Can change tickets', 8, 'change_tickets'),
(31, 'Can delete tickets', 8, 'delete_tickets'),
(32, 'Can view tickets', 8, 'view_tickets'),
(33, 'Can add movie data', 9, 'add_moviedata'),
(34, 'Can change movie data', 9, 'change_moviedata'),
(35, 'Can delete movie data', 9, 'delete_moviedata'),
(36, 'Can view movie data', 9, 'view_moviedata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'members', 'moviedata'),
(8, 'members', 'tickets'),
(7, 'members', 'userdata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-13 15:08:40.675302'),
(2, 'auth', '0001_initial', '2023-07-13 15:08:40.915609'),
(3, 'admin', '0001_initial', '2023-07-13 15:08:40.968411'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-13 15:08:40.974556'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-13 15:08:40.980554'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-13 15:08:41.017608'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-13 15:08:41.042840'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-13 15:08:41.057668'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-13 15:08:41.062173'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-13 15:08:41.090359'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-13 15:08:41.091362'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-13 15:08:41.096987'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-13 15:08:41.107993'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-13 15:08:41.121629'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-13 15:08:41.135593'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-13 15:08:41.142083'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-13 15:08:41.155960'),
(18, 'sessions', '0001_initial', '2023-07-13 15:08:41.173626'),
(19, 'members', '0001_initial', '2023-07-14 11:32:06.320387'),
(20, 'members', '0002_moviedata_tickets', '2023-07-14 11:57:54.289294');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('heohfieavq56olqgr8hj4owdcclcyvdx', 'e30:1qKL9V:6ma-vvDNrkNAkK-U8X0qcXHMEh13dsigs_pxO89MQnU', '2023-07-28 15:56:17.199354');

-- --------------------------------------------------------

--
-- Table structure for table `members_moviedata`
--

CREATE TABLE `members_moviedata` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `poster_url` varchar(255) NOT NULL,
  `age_rating` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members_moviedata`
--

INSERT INTO `members_moviedata` (`id`, `title`, `description`, `release_date`, `poster_url`, `age_rating`, `ticket_price`) VALUES
(1, 'Fast X', 'Dom Toretto dan keluarganya menjadi sasaran putra gembong narkoba Hernan Reyes yang pendendam.', '2023-05-17', 'https://image.tmdb.org/t/p/w500/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', 15, 53000),
(2, 'John Wick: Chapter 4', 'John Wick mengungkap jalan untuk mengalahkan The High Table. Tapi sebelum dia bisa mendapatkan kebebasannya, Wick harus berhadapan dengan musuh baru dengan aliansi kuat di seluruh dunia dan kekuatan yang mengubah teman lama menjadi musuh.', '2023-03-22', 'https://image.tmdb.org/t/p/w500/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg', 10, 60000),
(3, 'The Super Mario Bros. Movie', 'Ketika sedang bekerja di bawah tanah untuk memperbaiki pipa air, Mario dan Luigi, yang merupakan tukang ledeng dari Brooklyn, tiba-tiba terhisap ke dalam pipa misterius dan masuk ke dunia yang sangat berbeda. Mereka berada di tempat yang ajaib dan aneh. Tapi sayangnya, mereka terpisah satu sama lain. Mario memulai petualangan besar untuk mencari dan menemukan Luigi.', '2023-04-05', 'https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 14, 49000),
(4, 'Avatar: The Way of Water', 'Jake Sully tinggal bersama keluarga barunya di planet Pandora. Setelah ancaman kembali datang, Jake harus bekerja dengan Neytiri dan pasukan ras Na\'vi untuk melindungi planet mereka.', '2022-12-14', 'https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 12, 53000),
(5, 'Guardians of the Galaxy Vol. 3', 'Peter Quill masih trauma karena kehilangan Gamora. Ia perlu mengumpulkan timnya untuk melindungi alam semesta dan salah satu anggota mereka. Jika mereka gagal, Guardian akan berakhir.', '2023-05-03', 'https://image.tmdb.org/t/p/w500/nAbpLidFdbbi3efFQKMPQJkaZ1r.jpg', 12, 41000),
(6, 'Ant-Man and the Wasp: Quantumania', 'Scott Lang dan Hope van Dyne adalah pasangan pahlawan super. Mereka pergi bersama orang tua Hope, Janet van Dyne dan Hank Pym, serta anak perempuan Scott, Cassie Lang, untuk menjelajahi Alam Kuantum. Di sana, mereka bertemu dengan makhluk-makhluk aneh dan memulai petualangan yang tak terduga. Petualangan ini akan menguji batas-batas mereka.', '2023-02-15', 'https://image.tmdb.org/t/p/w500/g0OWGM7HoIt866Lu7yKohYO31NU.jpg', 12, 51000),
(7, 'The Pope\'s Exorcist', 'Pastor Gabriele Amorth, yang memimpin tim pengusir setan di Vatikan, menginvestigasi kasus kekerasan roh jahat yang menghantui seorang anak laki-laki. Dalam penyelidikannya, ia secara tak terduga menemukan rahasia tua yang disembunyikan oleh Vatikan selama berabad-abad.', '2023-04-05', 'https://image.tmdb.org/t/p/w500/gNPqcv1tAifbN7PRNgqpzY8sEJZ.jpg', 13, 51000),
(8, 'To Catch a Killer', 'Baltimore. Malam tahun baru. Seorang petugas polisi yang berbakat tetapi bermasalah (Shailene Woodley) direkrut oleh kepala penyelidik FBI (Ben Mendelsohn) untuk membantu membuat profil dan melacak individu yang terganggu yang meneror kota.', '2023-04-06', 'https://image.tmdb.org/t/p/w500/mFp3l4lZg1NSEsyxKrdi0rNK8r1.jpg', 15, 47000),
(9, 'Transformers: Age of Extinction', 'Lima tahun setelah Chicago dihancurkan, manusia berbalik melawan robot. Namun seorang ayah tunggal dan penemu membangkitkan robot yang dapat menyelamatkan dunia.', '2014-06-25', 'https://image.tmdb.org/t/p/w500/jyzrfx2WaeY60kYZpPYepSjGz4S.jpg', 11, 54000),
(10, 'Puss in Boots: The Last Wish', 'Puss in Boots menemukan fakta bahwa kecintaannya pada petualangan telah merenggut nyawanya: dia telah menghabiskan delapan dari sembilan nyawanya. Puss kini memulai petualangan epik untuk menemukan harapan terakhir untuk memulihkan sembilan nyawanya.', '2022-12-07', 'https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', 11, 51000),
(11, 'Scream VI', 'Setelah pembunuhan terbaru oleh Ghostface, keempat orang yang selamat pergi dari Woodsboro dan memulai hidup baru.', '2023-03-08', 'https://image.tmdb.org/t/p/w500/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg', 12, 36000),
(12, 'Black Adam', 'Hampir 5.000 tahun setelah dia dianugerahi kekuatan maha kuasa para dewa Mesirâ€”dan dipenjara dengan cepatâ€”Black Adam dibebaskan dari makam duniawinya, siap untuk melepaskan bentuk keadilannya yang unik di dunia modern.', '2022-10-19', 'https://image.tmdb.org/t/p/w500/A5imhXiFF3AL9RRA4FBzNDFmfgW.jpg', 10, 42000),
(13, 'Dungeons & Dragons: Honor Among Thieves', 'Seorang pencuri menawan dan sekelompok petualang yang unik melakukan pencurian besar-besaran untuk mencuri relik yang hilang. Namun, segalanya menjadi kacau ketika mereka berjumpa dengan orang yang salah.', '2023-03-23', 'https://image.tmdb.org/t/p/w500/A7AoNT06aRAc4SV89Dwxj3EYAgC.jpg', 12, 38000),
(14, 'Peter Pan & Wendy', 'Wendy Darling adalah seorang gadis kecil yang takut pergi dari rumah masa kecilnya. Suatu hari, dia bertemu dengan Peter Pan, seorang anak laki-laki yang tidak mau tumbuh dewasa. Mereka bersama saudara-saudaranya dan peri kecil bernama Tinker Bell pergi ke dunia ajaib yang disebut Neverland. Di sana, mereka menghadapi Kapten Hook, seorang bajak laut jahat, dan mengalami petualangan seru yang akan mengubah hidup Wendy selamanya.', '2023-04-20', 'https://image.tmdb.org/t/p/w500/9NXAlFEE7WDssbXSMgdacsUD58Y.jpg', 13, 35000),
(15, 'Spider-Man: No Way Home', 'Peter Parker menghadapi masalah besar. Hal ini terjadi setelah identitasnya sebagai Spiderman terungkap. Dengan kepergian Tony Stark, Peter Parker pun harus meminta bantuan Doctor Strange agar semua orang bisa melupakan identitasnya sebagai manusia laba-laba.', '2021-12-15', 'https://image.tmdb.org/t/p/w500/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg', 15, 56000),
(16, 'Black Panther: Wakanda Forever', 'Rakyat Wakanda kali ini akan berjuang untuk melindungi negerinya dari campur tangan kekuatan dunia setelah kematian sang Raja T\'Challa.', '2022-11-09', 'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', 13, 39000),
(17, 'Transformers: The Last Knight', 'Di tengah ketidakhadiran Optimus Prime, umat manusia berperang melawanTransformers untuk mempertahankan eksistensinya. Cade Yeager membentuk kerjasama dengan Bumblebee, seorang bangsawan Inggris dan seorang professor dari Oxford untuk mempelajari mengapa Transformers selalu kembali ke planet bumi.', '2017-06-16', 'https://image.tmdb.org/t/p/w500/s5HQf2Gb3lIO2cRcFwNL9sn1o1o.jpg', 12, 52000),
(18, 'Renfield', 'Setelah bertahun-tahun sebagai hamba Dracula yang merasa jenuh dan lelah, Renfield menemukan harapan baru dalam hidupnya. Dia jatuh cinta pada Rebecca Quincy, seorang polisi lalu lintas yang energik dan sering marah. Kesempatan ini bisa menjadi penebusan baginya.', '2023-04-07', 'https://image.tmdb.org/t/p/w500/2OaprROMZZeiWsydjGUIkXrv2Z3.jpg', 14, 51000),
(19, 'Cocaine Bear', 'Sekelompok polisi, penjahat, turis, dan remaja eksentrik berkumpul di hutan Georgia tempat beruang hitam besar mengamuk setelah menelan kokain secara tidak sengaja.', '2023-02-22', 'https://image.tmdb.org/t/p/w500/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg', 12, 53000),
(20, 'Prey', 'Di Comanche Nation pada tahun 1717, seorang pejuang yang ganas dan sangat terampil bernama Naru mengetahui bahwa mangsa yang dia intai adalah alien yang sangat berkembang dengan persenjataan berteknologi maju.', '2022-08-02', 'https://image.tmdb.org/t/p/w500/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg', 10, 42000),
(21, 'Fall', 'Untuk sahabat Becky dan Hunter, hidup adalah tentang menaklukkan ketakutan dan mendorong batas. Tetapi setelah mereka mendaki 2.000 kaki ke puncak menara radio terpencil yang ditinggalkan, mereka menemukan diri mereka terdampar tanpa jalan turun. Sekarang keterampilan panjat ahli Becky dan Hunter akan diuji saat mereka mati-matian berjuang untuk bertahan hidup dari unsur-unsur, kurangnya persediaan, dan ketinggian yang menyebabkan vertigo.', '2022-08-11', 'https://image.tmdb.org/t/p/w500/v28T5F1IygM8vXWZIycfNEm3xcL.jpg', 11, 39000),
(22, 'Avatar', 'Pada abad ke-22, seorang Marinir lumpuh dikirim ke Pandora bulan pada misi yang unik, tetapi menjadi terpecah antara mengikuti perintah dan melindungi peradaban alien.', '2009-12-15', 'https://image.tmdb.org/t/p/w500/kyeqWdyUXW608qlYkRqosgbbJyK.jpg', 13, 37000),
(23, 'Split', 'Ketika ketiga gadis remaja sedang menunggu ayah mereka di dalam mobil, seorang pria misterius menculik dan membawa mereka ke dalam sebuah bunker. Sang penculik yang bernama Kevin (James McAvoy) adalah seorang pria dengan gangguan jiwa yang membuatnya memiliki 23 kepribadian yang berbeda, yang diantaranya adalah seorang wanita dan anak berumur 9 tahun yang bernama Hedwig.  Sebagai salah satu gadis yang diculik, Casey berusaha meloloskan diri dengan meyakinkan salah satu kepribadian Kevin untuk melepaskan mereka. Akan tetapi hal tersebut tidaklah mudah, terlebih setelah Hedwig memperingatkan mereka akan the Beast yang merupakan kepribadian Kevin yang paling berbahaya.', '2017-01-19', 'https://image.tmdb.org/t/p/w500/lli31lYTFpvxVBeFHWoe5PMfW5s.jpg', 10, 45000),
(24, 'Top Gun: Maverick', 'Setelah lebih dari tiga puluh tahun mengabdi sebagai salah satu penerbang top Angkatan Laut, dan menghindari kenaikan pangkat yang akan menjatuhkannya, Pete \"Maverick\" Mitchell mendapati dirinya melatih satu detasemen lulusan TOP GUN untuk misi khusus yang tidak ada kehidupan. pilot pernah melihat.', '2022-05-24', 'https://image.tmdb.org/t/p/w500/jeGvNOVMs5QIU1VaoGvnd3gSv0G.jpg', 14, 57000),
(25, 'Thor: Love and Thunder', '\"Thor: Love and Thunder\"menceritakan Thor (Chris Hemsworth) dalam sebuah perjalanan yang belum pernah ia jalani â€“ pencariankedamaian batin. Namun, masa pensiunnya terganggu oleh seorang pembunuh galaksi yang dikenal sebagai Gorr sang Dewa Jagal (Christian Bale), yang ingin memusnahkan para dewa. Untuk mengatasi ancaman, Thor meminta bantuan Raja Valkyrie (Tessa Thompson), Korg (Taika Waititi), dan mantan kekasihnya Jane Foster (Natalie Portman), yang secara mengejutkan dan misterius berhasil menggunakan palu ajaibnya, Mjolnir, sebagai Mighty Thor. Bersama, mereka memulai petualangan kosmik yang mendebarkan untuk mengungkap misteri pembalasan Dewa Jagal dan menghentikannya sebelum terlambat.', '2022-07-06', 'https://image.tmdb.org/t/p/w500/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg', 12, 35000),
(26, 'Sonic the Hedgehog 2', 'Alur cerita film Sonic the Hedgehog 2 bermula ketika Sonic menetap di Green Hills. Ia memutuskan menetap di sana agar bisa merasakan lebih banyak kebebasan. Ditambah lagi, Tom dan Maddie setuju untuk meninggalakannya di rumah ketika mereka pergi untuk berlibur. Namun sayangnya, tidak lama setelah mereka pergi Dr. Robotnik sang musuh bubuyutan si landak biru itu kembali ke bumi. Kali ini Dr. Robotnik datang dengan pasukan baru, Knuckles. Tujuan mereka datang kembali adalah untuk mencari Master Emerald yang memiliki kekuatan super. Kekuatan super itu bisa membangun dan menghancurkan peradaban di bumi. Atas hal ini, Sonic pun mencari strategi agar bisa menggagalkan rencara Dr. Robotnik. Strategi yang dilakukan oleh Sonic ialah bekerjasama dengan sahabatnya, Tails. Kemudian bersama dengan Tails, Sonic memulai perjalanan untuk menemukan Master Emerald. Semua itu dilakukan dengan cepat, sebelum Master Emerald jatuh ke tangan yang salah.', '2022-04-08', 'https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', 12, 45000),
(27, 'Avengers: Infinity War', 'Karena Avengers dan sekutunya terus melindungi dunia dari ancaman yang terlalu besar untuk ditangani oleh seorang pahlawan, bahaya baru telah muncul dari bayangan kosmik: Thanos. Seorang lalim penghujatan intergalaksi, tujuannya adalah untuk mengumpulkan semua enam Batu Infinity, artefak kekuatan yang tak terbayangkan, dan menggunakannya untuk menimbulkan kehendak memutar pada semua realitas. Segala sesuatu yang telah diperjuangkan oleh Avengers telah berkembang hingga saat ini - nasib Bumi dan keberadaannya sendiri tidak pernah lebih pasti.', '2018-04-25', 'https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 10, 46000),
(28, 'The Whale', 'Seorang guru bahasa Inggris yang tertutup dan gemuk mencoba untuk berhubungan kembali dengan putri remajanya yang terasing.', '2022-12-09', 'https://image.tmdb.org/t/p/w500/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg', 15, 55000),
(29, 'The Batman', 'Ketika seorang pembunuh berantai sadis mulai membunuh tokoh-tokoh politik penting di Gotham, Batman terpaksa menyelidiki korupsi tersembunyi di kota itu dan mempertanyakan keterlibatan keluarganya.', '2022-03-01', 'https://image.tmdb.org/t/p/w500/seyWFgGInaLqW7nOZvu0ZC95rtx.jpg', 13, 53000),
(30, 'Smile', 'Setelah menyaksikan kejadian aneh dan traumatis yang melibatkan seorang pasien, Dr. Rose Cotter mulai mengalami kejadian menakutkan yang tidak dapat dia jelaskan. Saat teror luar biasa mulai mengambil alih hidupnya, Rose harus menghadapi masa lalunya yang bermasalah untuk bertahan hidup dan melarikan diri dari kenyataan barunya yang mengerikan.', '2022-09-23', 'https://image.tmdb.org/t/p/w500/67Myda9zANAnlS54rRjQF4dHNNG.jpg', 11, 38000),
(31, 'Encanto', 'menceritakan tentang keluarga Madrigals, sebuah keluarga yang tinggal di rumah ajaib dan masing-masing anggota keluarga memiliki keajaibannya tersendiri. Pada jaman dahulu kala, Abuela bersama suami dan anak-anaknya melarikan diri dari kerusuhan di desa.', '2021-10-13', 'https://image.tmdb.org/t/p/w500/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 12, 44000);

-- --------------------------------------------------------

--
-- Table structure for table `members_tickets`
--

CREATE TABLE `members_tickets` (
  `id` bigint(20) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members_tickets`
--

INSERT INTO `members_tickets` (`id`, `seat_id`, `purchase_date`, `movie_id`, `user_id`) VALUES
(3, 1, '2023-07-14', 2, 'a'),
(4, 2, '2023-07-14', 2, 'a'),
(7, 64, '2023-07-14', 2, 'makmur');

-- --------------------------------------------------------

--
-- Table structure for table `members_userdata`
--

CREATE TABLE `members_userdata` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members_userdata`
--

INSERT INTO `members_userdata` (`username`, `password`, `name`, `age`, `balance`) VALUES
('a', '123', 'atha', 16, 9870000),
('makmur', '124', 'makmur', 19, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `members_moviedata`
--
ALTER TABLE `members_moviedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_tickets`
--
ALTER TABLE `members_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_tickets_movie_id_6d1bcfbb_fk_members_moviedata_id` (`movie_id`),
  ADD KEY `members_tickets_user_id_0cb538ae_fk_members_userdata_username` (`user_id`);

--
-- Indexes for table `members_userdata`
--
ALTER TABLE `members_userdata`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `members_moviedata`
--
ALTER TABLE `members_moviedata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `members_tickets`
--
ALTER TABLE `members_tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `members_tickets`
--
ALTER TABLE `members_tickets`
  ADD CONSTRAINT `members_tickets_movie_id_6d1bcfbb_fk_members_moviedata_id` FOREIGN KEY (`movie_id`) REFERENCES `members_moviedata` (`id`),
  ADD CONSTRAINT `members_tickets_user_id_0cb538ae_fk_members_userdata_username` FOREIGN KEY (`user_id`) REFERENCES `members_userdata` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
