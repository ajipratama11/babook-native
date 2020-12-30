-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2020 pada 08.45
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babook`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` varchar(2) NOT NULL,
  `username` varchar(7) NOT NULL,
  `password` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
('1', 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(3) NOT NULL,
  `nama_anak` varchar(30) DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `berat` int(4) DEFAULT NULL,
  `tinggi` int(4) DEFAULT NULL,
  `tanggal_cek` date NOT NULL,
  `id_ibu` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id_anak`, `nama_anak`, `jk`, `umur`, `berat`, `tinggi`, `tanggal_cek`, `id_ibu`) VALUES
(78, 'nduty', 'P', 20, 100, 165, '2018-12-12', 'alifia'),
(83, 'nanda', 'P', 2, 12, 111, '2018-12-12', 'risma');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(3) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `penulis` varchar(30) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jenis` enum('Hiburan','Tips','Penyakit') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `tanggal`, `penulis`, `isi`, `jenis`) VALUES
(6, 'Mengenal Dokter Bedah Anak dan Tindakan yang Dilakukan', '2018-12-19', 'dr. Kevin Andrian', '<p><strong>Dokter bedah anak adalah dokter spesialis yang fokus men</strong><strong>gerjakan</strong>&nbsp;<strong>tindakan bedah pada pasien anak-anak</strong><strong>,</strong>&nbsp;<strong>meliputi janin, bayi (terlahir prematur ataupun cukup bulan), anak-anak, hingga remaja berusia tidak lebih dari 18 tahun.</strong></p>\r\n\r\n<p>Dokter bedah anak merupakan subspesialisasi dari kedokteran bedah umum yang menangani berbagai kondisi yang memerlukan pembedahan, baik dalam kasus emergensi, cedera, infeksi, kanker atau tumor, kelainan degeneratif (turunan), serta kelainan kongenital pada anak dan remaja.</p>\r\n\r\n<p><img alt=\"Mengenal Dokter Bedah Anak dan Tindakan yang Dilakukan - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1544876103/attached_image/mengenal-dokter-bedah-anak-dan-tindakan-yang-dilakukan-alodokter.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>Di Indonesia, untuk mendapatkan gelar dokter spesialis bedah anak (Sp.BA), seorang dokter umum harus menempuh pendidikan spesialis ilmu bedah selama 10 semester. Pendidikan dokter bedah anak merupakan pendidikan profesi lanjutan selama 2 tahun bagi&nbsp;<a href=\"https://www.alodokter.com/mengenal-lebih-jauh-peran-dokter-bedah-umum\" target=\"_blank\">dokter spesialis bedah umum</a>&nbsp;yang berminat dalam bidang bedah anak.</p>\r\n\r\n<p><strong>Bidang Kerja Dokter spesialis Bedah Anak</strong></p>\r\n\r\n<p>Dokter bedah anak dibagi menjadi beberapa keahlian, meliputi:</p>\r\n\r\n<ul>\r\n	<li>Bedah anak bidang prenatal yang berkaitan dengan janin yang belum lahir.</li>\r\n	<li>Bedah anak bidang neonatal yang fokus pada bayi, baik cukup bulan atau prematur.</li>\r\n	<li>Bedah anak bidang onkologi, yang berfokus menangani pasien anak yang mengidap kanker.</li>\r\n	<li>Bedah anak bidang traumatology, yang berfokus pada perawatan darurat bedah dengan kasus trauma atau cedera.</li>\r\n	<li>Bedah urologi anak, yaitu cabang subspesialisasi ilmu bedah yang menangani kasus penyakit dan gangguan pada saluran kemih anak.</li>\r\n	<li>Bedah digestif anak, yang mendalami penanganan bedah pada kasus penyakit saluran pencernaan anak.</li>\r\n</ul>\r\n\r\n<p><strong>Tugas dan Peran Dokter Spesialis Bedah Anak</strong></p>\r\n\r\n<p>Dalam dunia medis, dokter bedah anak memiliki peran khusus sebagai tenaga kesehatan dalam memberikan pelayanan kesehatan dengan kompetensi khusus bedah anak dengan landasan ilmiah ilmu kedokteran, keterampilan klinis, dan pengelolaan masalah kesehatan.</p>\r\n\r\n<p>Berdasarkan peraturan Konsil Kedokteran Indonesia (KKI) tentang standar pendidikan profesi dan kompetensi dokter spesialis bedah anak, seorang dokter bedah anak harus memiliki kemampuan dalam melakukan pelayanan, prosedur penatalaksanaan, serta mengelola masalah kesehatan dalam bidang bedah anak secara menyeluruh. Berikut ini adalah tugas dan peran dokter bedah anak:</p>\r\n\r\n<ul>\r\n	<li>Menentukan diagnosis berdasarkan pemeriksaan fisik, wawancara medis, serta pemeriksaan penunjang.</li>\r\n	<li>Memiliki kemampuan memberikan penjelasan dengan benar, jelas, lengkap, dan jujur tentang tujuan, keperluan, serta manfaat dan risiko tindakan medis yang akan dijalankan.</li>\r\n	<li>Menjalankan prosedur klinis bedah anak sesuai masalah, kebutuhan, dan kewenangannya.</li>\r\n	<li>Melakukan prosedur medis darurat secara benar sesuai masalah kesehatan pasien dan kewenangannya sebagai dokter bedah anak.</li>\r\n	<li>Menjelaskan indikasi pemberian obat, cara kerja obat, dosis, serta penerapannya pada pasien.</li>\r\n	<li>Mengelola pasien bedah anak di poliklinik, kamar operasi, bangsal perawatan, unit perawatan intensif (ICU), dan instalasi gawat darurat.</li>\r\n	<li>Memberikan edukasi dan penyuluhan terkait pembinaan kesehatan pasien bedah anak, terhadap keluarga pasien dan masyarakat.</li>\r\n</ul>\r\n\r\n<p><strong>Tindakan Medis dan Penyakit yang Ditangani Dokter Spesialis Bedah Anak</strong></p>\r\n\r\n<p>Seorang dokter bedah anak memiliki keterampilan klinis melakukan perawatan dan pembedahan sesuai penyakit yang diderita pasien anak, seperti:</p>\r\n\r\n<ul>\r\n	<li><strong>Kelainan pada saluran pencernaan</strong><strong>,</strong>&nbsp;meliputi: hernia dan akalasia, stenosis pylorus (penyempitan lambung), obstruksi usus,&nbsp;<a href=\"https://www.alodokter.com/intususepsi\" target=\"_blank\">intususepsi</a>, ileus,&nbsp;<em>omphalocele</em>&nbsp;dan&nbsp;<em><a href=\"https://www.alodokter.com/gastroschisis\" target=\"_blank\">gastroschisis</a></em>, divertikulum Meckel,&nbsp;<a href=\"https://www.alodokter.com/penyakit-hirschsprung\" target=\"_blank\">penyakit Hirschsprung</a>,&nbsp;<a href=\"https://www.alodokter.com/necrotizing-enterocolitis\" target=\"_blank\"><em>necrotizing enterocolitis</em>&nbsp;(NEC)</a>, apendisitis (usus buntu), peritonitis (radang selaput rongga perut), perforasi lambung dan usus, serta trauma tumpul abdomen (cedera perut).</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Penyakit pada liver, empedu dan pan</strong><strong>k</strong><strong>reas</strong><strong>,</strong>&nbsp;meliputi: kolesistitis (radang saluran empedu), kista koledokus (kista empedu),&nbsp;<a href=\"https://www.alodokter.com/atresia-bilier\" target=\"_blank\">atresia bilier</a>, pseudokista pankreas, pankreatitis, dan kanker hati.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Gangguan sistem reproduksi</strong><strong>,</strong>&nbsp;meliputi: tumor testis, tumor ovarium, kista ovarium, dan adesensus testis (testis tidak turun)</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Gangguan atau kelainan pada rongga dada dan saluran pernapasan</strong><strong>,</strong>&nbsp;meliputi: cedera dada,&nbsp;<em>pneumothorax</em>&nbsp;(adanya udara berlebih pada pleura),&nbsp;<em>hematothorax</em>&nbsp;(adanya darah di rongga pleura),&nbsp;<em><a href=\"https://www.alodokter.com/pectus-excavatum\" target=\"_blank\">pectus excavatum</a></em>&nbsp;dan&nbsp;<em>pectus carinatum</em>&nbsp;(dada menonjol), serta tumor di rongga dada.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Penyakit pada tulang</strong><strong>,</strong>&nbsp;meliputi: patah tulang, pergeseran sendi, dan tumor tulang.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kelainan darah dan getah bening (sistem limfatik)</strong><strong>,</strong>&nbsp;meliputi: limfangioma, pembesaran kelenjar getah bening, pengambilan (aspirasi) sumsum tulang pada anak dengan leukimia, dan&nbsp;<a href=\"https://www.alodokter.com/splenomegali\" target=\"_blank\">pembesaran limpa (splenomegali)</a>.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Kelainan atau gangguan pada saraf otak</strong><strong>,</strong>&nbsp;meliputi: neuroblastoma, cedera kepala berat, dan pendarahan otak yang perlu dioperasi.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Gangguan pada sistem ginjal dan saluran kemih</strong><strong>,</strong>&nbsp;meliputi:&nbsp;<a href=\"https://www.alodokter.com/hypospadia\">hipospadia</a>&nbsp;dan epispadia, batu ginjal, gangguan pada kandung kemih termasuk batu kandung kemih, cedera pada ginjal, serta infeksi ginjal dan saluran kemih.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Tumor dan kanker</strong><strong>,</strong>&nbsp;meliputi: limfoma, kanker otak,&nbsp;<a href=\"https://www.alodokter.com/kanker-darah\" target=\"_blank\">leukemia</a>, dan tumor jaringan lunak.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Gangguan pada sistem kulit</strong><strong>,</strong>&nbsp;meliputi: luka bakar berat, melanoma atau kanker kulit pada anak.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Perawatan intensif</strong><strong>,</strong>&nbsp;meliputi: resusitasi jantung paru, terapi cairan dan elektrolit, tatalaksana gangguan asam basa, dan memonitor kondisi anak secara intensif.</li>\r\n</ul>\r\n\r\n<p><strong>Kapan Harus Menemui Dokter Spesialis Bedah Anak?</strong></p>\r\n\r\n<p>Umumnya, dokter bedah anak dapat ditemui atas saran atau rujukan dari&nbsp;<a href=\"https://www.alodokter.com/informasi-terkait-dokter-spesialis-anak\" target=\"_blank\">dokter anak</a>&nbsp;atau&nbsp;<a href=\"https://www.alodokter.com/memahami-lebih-jauh-fungsi-dan-tugas-dokter-umum\" target=\"_blank\">dokter umum</a>&nbsp;yang menangani penyakit pasien. Berikut ini beberapa keadaan yang mengharuskan Anda untuk menemui atau berkonsultasi ke dokter bedah anak, yaitu:</p>\r\n\r\n<ul>\r\n	<li>Anak memiliki kelainan, penyakit, atau kondisi yang memerlukan tindakan medis bedah.</li>\r\n	<li>Anak mengalami rasa nyeri yang memerlukan tindakan bedah segera untuk menghilangkan rasa nyeri</li>\r\n	<li>Anak memiliki kelainan bawaan lahir atau&nbsp;<a href=\"https://www.alodokter.com/ragam-kelainan-genetik-yang-tidak-dapat-dicegah\" target=\"_blank\">kelainan genetik</a>&nbsp;yang memerlukan pembedahan.</li>\r\n	<li>Mendapat saran rujukan dari dokter anak atau dokter umum untuk berkonsultasi ke dokter bedah anak terkait penyakit dan langkah penanganan lebih lanjut.</li>\r\n</ul>\r\n\r\n<p><strong>Persiapan Menemui Dokter Spesialis Bedah Anak</strong></p>\r\n\r\n<p>Berikut beberapa persiapan yang perlu dilakukan sebelum menemui dokter bedah anak:</p>\r\n\r\n<ul>\r\n	<li>Membuat catatan tentang keluhan dan gejala yang diderita pasien anak secara detail, serta riwayat kesehatan dan tumbuh kembang anak sejak dalam kandungan.</li>\r\n	<li>Membawa hasil pemeriksaan sebelumnya, seperti tes darah, Rontgen, CT scan, atau biopsi jika ada.</li>\r\n	<li>Menginformasikan pada dokter terkait obat (medis maupun herbal) dan suplemen yang sedang dikonsumsi.</li>\r\n	<li>Menanyakan pilihan perawatan yang tersedia dan tingkat keberhasilannya, serta risiko dari masing-masing perawatan.</li>\r\n	<li>Memastikan fasilitas dan pelayanannya bercitra baik, lengkap, dan ramah.</li>\r\n	<li>Jika ingin memanfaatkan BPJS atau asuransi, pastikan rumah sakit tersebut berafiliasi dengan BPJS atau provider asuransi.</li>\r\n	<li>Mintalah rekomendasi beberapa dokter spesialis bedah anak dari dokter yang menangani penyakit anak.</li>\r\n</ul>\r\n\r\n<p>Terkecuali operasi darurat, orang tua disarankan mempersiapkan kondisi mental anak sebelum menjalani operasi yang telah dijadwalkan. Persiapan yang baik dapat membantu mengurangi ketakutan dan kekhawatiran anak saat menjalani prosedur anestesi dan tindakan operasi&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/dokter-bedah-anak\" target=\"_blank\">dokter bedah anak</a>, serta membantu anak melewati masa pemulihan dengan cepat.</p>\r\n', 'Penyakit'),
(7, 'Penyakit Urine Sirup Mapel Bersifat Genetik, Jadi Tidak Bisa Dicegah', '2018-12-19', 'dr. Kevin Andrian', '<p><strong><em>Maple syrup urine disease</em></strong><strong>&nbsp;(MSUD) atau penyakit urine sirup mapel adalah salah satu penyakit&nbsp;</strong><strong>genetik (keturunan)&nbsp;</strong><strong>dan sangat serius. Penyakit yang sangat jarang terjadi ini membuat tubuh tidak dapat memroses asam amino sehingga menyebabkan penumpukan zat berbahaya&nbsp;</strong><strong>di dalam&nbsp;</strong><strong>urine dan darah.</strong></p>\r\n\r\n<p>Dalam kondisi normal, tubuh manusia dapat mengolah protein dari ikan dan daging menjadi asam amino serta membuang zat yang tidak dibutuhkan oleh tubuh. Asam amino sendiri adalah substansi yang diproduksi setelah tubuh mencerna protein dari makanan yang dikonsumsi.</p>\r\n\r\n<p><strong><img alt=\"Penyakit Urine Sirup Mapel Bersifat Genetik, Jadi Tidak Bisa Dicegah - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1470640506/attached_image/penyakit-urine-sirup-mapel-bersifat-genetik-jadi-tidak-bisa-dicegah-alodokter.jpg\" style=\"height:430px; width:650px\" /></strong></p>\r\n\r\n<p>Pada pengidap penyakit urine sirup mapel,&nbsp;<a href=\"https://www.alodokter.com/kenali-fungsi-dan-sumber-makanan-asam-amino-esensial\" target=\"_blank\">asam amino</a>&nbsp;jenis leusin, isoleusin, dan valin tidak dapat diolah dengan normal. Padahal asam amino dalam kadar tinggi dapat membahayakan tubuh. Ketidakmampuan tubuh mencerna asam amino pada penyakit ini disebabkan oleh kelainan genetik yang membuat terhambatnya produksi&nbsp;<a href=\"https://www.alodokter.com/enzim-kelenjar-pencernaan-yang-penting-bagi-tubuh-manusia\" target=\"_blank\">enzim pencernaan</a>&nbsp;protein.</p>\r\n\r\n<p><strong>Mutasi Gen Penyebab Penyakit</strong></p>\r\n\r\n<p>Anak yang mengidap penyakit urine sirup mapel mewarisi dua salinan mutasi gen masing-masing dari ayah dan ibunya. Jika hanya memiliki satu gen, maka anak hanya akan menjadi pembawa penyakit MSUD. Jika calon ayah membawa gen MSUD dan calon ibu membawa gen MSUD juga, maka anak mereka berkemungkinan 25% untuk menderita MSUD, serta 50% menjadi pembawa gen penyakit MSUD. Di sinilah pentingnya menginformasikan jika ada anggota keluarga yang memiliki riwayat penyakit tersebut.</p>\r\n\r\n<p>Meski tidak ada cara untuk mencegah kelahiran bayi dengan MSUD, tetapi dokter dapat melakukan pemeriksaan apakah kondisi gen Anda dan pasangan berisiko untuk memiliki bayi dengan penyakit urine sirup mapel atau gangguan turunan lainnya melalui&nbsp;<a href=\"https://www.alodokter.com/mendeteksi-kelainan-kromosom-pada-bayi-dalam-kandungan\" target=\"_blank\">pemeriksaan genetik</a>.</p>\r\n\r\n<p>Setelah bayi lahir, penyakit urine sirup mapel dapat dikenali dari gejala-gejala yang muncul pada hari atau minggu-minggu awal pascakelahirannya. Oleh sebab itu, waspadai jika Si Kecil mengalami kondisi-kondisi berikut ini:</p>\r\n\r\n<ul>\r\n	<li>Urine dan keringat beraroma manis</li>\r\n	<li>Berat badan tidak bertambah</li>\r\n	<li>Tidak mau menyusu</li>\r\n	<li>Muntah</li>\r\n	<li>Otot kaku atau lunglai</li>\r\n	<li><a href=\"https://www.alodokter.com/kejang\" target=\"_blank\">Kejang</a></li>\r\n	<li>Rewel</li>\r\n	<li>Sering terlihat lemas</li>\r\n	<li>Sesak napas</li>\r\n	<li>Pola tidur yang tidak normal</li>\r\n</ul>\r\n\r\n<p>Makin cepat kondisi bayi diperiksakan ke dokter, maka makin cepat dan akurat penanganan yang akan diberikan. Penanganan yang tepat juga dapat menghindarkan bayi yang sakit terkena komplikasi penyakit MSUD, seperti koma, kerusakan otak, kebutaan, asidosis metabolik, gangguan mental, hambatan tumbuh kembang, hingga kematian. Untuk memastikan diagnosis, dokter akan melakukan pemeriksaan fisik ditambah serangkaian pemeriksaan penunjang dengan&nbsp;<a href=\"https://www.alodokter.com/cari-rumah-sakit/laboratorium-klinik/pemeriksaan-darah\" target=\"_blank\">tes darah</a>, urine, dan pemeriksaan genetik.</p>\r\n\r\n<p><strong>Mendampingi Anak dengan Penyakit Urine Sirup Mapel</strong></p>\r\n\r\n<p>Pada anak yang terdiagnosis mengidap MSUD, diperlukan evaluasi kondisi secara berkala ke&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/dokter-anak\" target=\"_blank\">dokter anak</a>. Dokter akan memastikan tumbuh kembangnya sesuai, serta memantau status gizi Si Kecil. Perawatan untuk menangani penyakit urine sirup mapel sendiri harus dilakukan terus-menerus seumur hidup, seperti pemeriksaan darah untuk terus memantau kadar asam amino tubuh.</p>\r\n\r\n<p>Berikut beberapa panduan dalam pendampingan anak dengan penyakit urine sirup mapel.</p>\r\n\r\n<ul>\r\n	<li><strong>Pola makan dan tatalaksana gizi</strong></li>\r\n</ul>\r\n\r\n<p>Anak dengan MSUD perlu didampingi&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/ahli-gizi\" target=\"_blank\">dokter spesialis gizi klinik</a>&nbsp;untuk menjalani diet rendah protein demi mengurangi kadar asam amino, terutama isoleusin, valin, dan leusin.</p>\r\n\r\n<ol>\r\n	<li>Secara umum, para pengidap penyakit sirup mapel perlu membatasi konsumsi&nbsp;<a href=\"https://www.alodokter.com/ketahui-makanan-berprotein-tinggi-dan-manfaatnya-di-sini\" target=\"_blank\">makanan tinggi protein</a>, seperti telur ayam, ikan, daging, keju, kacang, meski bahan-bahan ini dibutuhkan untuk perkembangannya.</li>\r\n	<li>Sebagian anak mungkin perlu mengonsumsi suplemen valin dan isoleucin.</li>\r\n	<li>Pemberian ASI dan susu bayi perlu dipantau karena umumnya susu formula mengandung asam amino. Bayi dengan penyakit urine sirup mapel biasanya diberikan susu formula khusus yang rendah protein tapi mengandung mineral, vitamin, dan asam amino lain yang dibutuhkan si Kecil.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Menangani kondisi gawat darurat</strong></li>\r\n</ul>\r\n\r\n<p>Bayi dengan penyakit sirup mapel perlu segera dibawa ke rumah sakit jika mengalami gejala-gejala krisis metabolik, seperti badan yang terlihat lemas, sesak napas, kejang, hingga penurunan kesadaran. Gejala-gejala ini juga bisa muncul di saat umur si bayi sudah memasuki masa kanak-kanak.</p>\r\n\r\n<p>Dokter mungkin akan menyarankan untuk mengganti makanan dan susu yang umumnya mengandung protein dengan suplemen asam amino dan minuman dengan kadar gula yang tinggi. Pada sisi lain, bayi dengan MSUD yang terus mengalami diare perlu segera dirujuk ke unit gawat darurat untuk kemudian diinfus demi menghindarkannya terkena&nbsp;<a href=\"https://www.alodokter.com/kenali-tanda-tanda-bayi-mengalami-dehidrasi\" target=\"_blank\">dehidrasi</a>.</p>\r\n\r\n<p>Orangtua sebaiknya membawa catatan atau&nbsp;<em>leaflet&nbsp;</em>tentang penanganan kondisi ini ketika ke unit gawat darurat, karena mungkin saja dokter yang menangani si Kecil belum pernah mengobati pasien MSUD sebelumnya.</p>\r\n\r\n<ul>\r\n	<li><strong>Transplantasi hati</strong></li>\r\n</ul>\r\n\r\n<p>Pasien penyakit urine sirup mapel yang menjalani transplantasi hati dapat menjalani hidup dengan normal tanpa&nbsp;<a href=\"https://www.alodokter.com/gangguan-metabolik.html\" target=\"_blank\">gangguan metabolik</a>. Meski demikian,&nbsp;<a href=\"https://www.alodokter.com/ketahui-tahap-tahap-prosedur-transplantasi-hati\" target=\"_blank\">prosedur transplantasi hati</a>juga memiliki risiko tersendiri sehingga pasien yang menjalaninya perlu mengonsumsi obat untuk menekan sistem imun seumur hidup.</p>\r\n\r\n<p>Mengasuh dan mendampingi anak dengan gangguan MSUD atau gangguan metabolik lainnya memang membutuhkan ketelatenan. Tanpa perawatan, pasien MSUD akan mengalami gejala yang membahayakan nyawa, seperti kerusakan otak, keterlambatan perkembangan, kejang, atau bahkan&nbsp;<a href=\"https://www.alodokter.com/koma.html\" target=\"_blank\">koma</a>&nbsp;dan kematian. Namun dengan pendampingan yang tepat dan berkala, anak dengan penyakit urine sirup mapel dapat hidup aktif dan normal.</p>\r\n', 'Penyakit'),
(8, 'Menyelamatkan Bayi Mencret dari Risiko Berbahaya', '2018-12-19', 'dr. Kevin Andrian', '<p><strong>Bayi mencret cenderung lebih berisiko&nbsp;</strong><strong>mengalami komplikasi&nbsp;</strong><strong>dibanding</strong><strong>kan</strong><strong>&nbsp;orang dewasa yang sedang mengalami diare. Bayi mencret dapat mengalami dehidrasi dengan cepat, bahkan dalam waktu dua jam setelah diare bermula. Kondisi ini bisa sangat berbahaya, terutama pada bayi baru lahir.</strong></p>\r\n\r\n<p>Bayi baru lahir, terutama yang mengonsumsi ASI, memang mengeluarkan tinja yang lebih encer dibandingkan bayi yang mengonsumsi susu formula. Ini membuat ibu terkadang bingung menentukan apakah tinja yang dikeluarkannya normal atau tidak.</p>\r\n\r\n<p><img alt=\"Menyelamatkan Bayi Mencret dari Risiko Berbahaya - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1542783369/attached_image/menyelamatkan-bayi-mencret-dari-risiko-berbahaya-alodokter.jpg\" style=\"height:472px; width:650px\" /></p>\r\n\r\n<p>Tinja normal pada bayi yang mengonsumsi ASI umumnya berwarna kekuningan, bertekstur lembut, dan cair. Meski tidak selalu terjadi, bayi baru lahir yang disusui ASI dapat buang air besar hingga lima kali sehari. Terkadang karena perutnya penuh, ASI merangsang saluran pencernaan sehingga bayi akan langsung buang air besar setelah disusui.</p>\r\n\r\n<p>Ketika usianya melewati satu bulan, bayi dapat buang air besar sebanyak satu hingga dua kali per hari. Sementara, bayi yang mengonsumsi susu formula hanya buang air besar sekali sehari dengan tinja yang lebih keras dan lebih berbau.</p>\r\n\r\n<p>Terkadang ibu sulit membedakan apakah bayi mengalami diare atau hanya buang air besar yang lebih lunak dari biasanya. Curigai bayi Anda mengalami&nbsp;diare&nbsp;bilamana terjadi perubahan frekuensi buang air besar, seperti tiba-tiba menjadi jauh lebih sering dengan jumlah yang banyak, bayi tampak lemas, dan tinja berubah jauh lebih lunak atau lebih cair dari biasanya.</p>\r\n\r\n<h3><strong>Kenali Penyebab Diare pada Bayi</strong></h3>\r\n\r\n<p>Diare menjadi penyebab utama malnutrisi pada balita di negara-negara berkembang akibat polusi air dan pencemaran makanan. Rotavirus sebagai penyebab penyakit&nbsp;gastroenteritis&nbsp;adalah salah satu alasan utama bayi mencret. Infeksi ini menyebabkan&nbsp;gangguan pada saluran pencernaan bayi, sehingga nutrisi pada makanan tidak terserap secara sempurna dan keluar cairan secara berlebihan.</p>\r\n\r\n<p>Selain itu, bayi juga dapat terjangkit oleh bakteri, parasit, ataupun virus lain dari benda-benda kotor di sekitarnya, dan dari lantai saat dia memasukkan tangannya yang kotor ke mulut. Bayi mencret juga dapat disebabkan oleh alergi, susu formula yang tidak diolah dengan tepat,&nbsp;intoleransi laktosa,&nbsp;keracunan makanan, flu, konsumsi antibiotik, serta kekurangan enzim.</p>\r\n\r\n<p>Bayi mencret dapat kehilangan banyak air dan elektrolit dari tubuh. Hal inilah yang dapat menyebabkan dehidrasi. Bayi yang mengalami dehidrasi&nbsp;dapat dikenali dari tanda-tanda berikut:</p>\r\n\r\n<ul>\r\n	<li>Mata cekung.</li>\r\n	<li>Tampak lemah.</li>\r\n	<li>Bibir kering dan pecah-pecah.</li>\r\n	<li>Tidak keluar air mata ketika menangis.</li>\r\n	<li>Jarang buang air kecil.</li>\r\n	<li>Urine berwarna lebih gelap dan bau dari biasanya.</li>\r\n	<li>Tidak mau makan atau minum.</li>\r\n	<li>Gelisah atau rewel.</li>\r\n</ul>\r\n\r\n<p>Pada dehidrasi berat, bayi dapat terlihat mengantuk karena kesadaran yang menurun, tangan dan kaki menjadi dingin, serta napas menjadi cepat. Bila tidak segera ditangani, dehidrasi dapat berujung pada kerusakan ginjal, kejang-kejang, bahkan syok hingga kematian.</p>\r\n\r\n<h3><strong>Menc</strong><strong>egah Dehidrasi pada Bayi Mencret</strong></h3>\r\n\r\n<p>Kenali gejala-gejala utama yang menandakan bayi mencret, yaitu jika bayi terus-menerus mengeluarkan tinja cair atau tinja, terlebih jika tinjanya disertai darah atau lendir. Demam dan muntah juga dapat menyertai mencret.</p>\r\n\r\n<p>Segera lakukan hal-hal berikut jika bayi Anda mengalami salah satu atau beberapa gejala di atas:</p>\r\n\r\n<ul>\r\n	<li>Untuk mencegah dehidrasi, pastikan dia mendapat asupan cairan yang</li>\r\n	<li>Pada bayi berusia di bawah 6 bulan, berikan ASI seperti biasa dengan tambahan pemberian ASI setiap kali ia mencret atau muntah. Untuk anak dan bayi berusia lebih dari 6 bulan, dapat diberikan&nbsp;larutan oralit&nbsp;setiap kali mencret atau muntah. Gunakan air bersih ketika membuat larutan oralit.</li>\r\n	<li>Dosis pemberian cairan oralit adalah setengah cangkir untuk anak berusia di bawah 2 tahun, dan satu cangkir untuk anak berusia di atas 2 tahun, berikan setiap kali mencret atau muntah.</li>\r\n	<li>Hindari memberikan obat antidiare pada bayi, karena obat ini dapat menyebabkan efek samping serius. Obat jenis ini baru boleh diberikan apabila anak sudah berusia 12 tahun ke atas.</li>\r\n	<li>Tetap berikan makanan padat jika bayi Anda sudah berusia enam bulan ke atas. Anda dapat mencoba memberikan nasi, pisang,&nbsp;<em>puree</em>&nbsp;(bubur) apel, roti kering, pasta, atau kentang tumbuk. Namun, hindari makanan padat jika dia muntah terus-menerus. Tidak masalah jika bayi tidak ingin makan, tapi pastikan untuk memberikannya cukup cairan agar tidak terjadi</li>\r\n	<li>Pemberian&nbsp;probiotik&nbsp;mungkin bermanfaat untuk membantu mengatasi bayi mencret. Akan tetapi, penelitian menunjukkan hanya dua jenis bakteri baik yang bermanfaat untuk diare pada anak, yaitu&nbsp;<em>Lactobacillus rhamnosus</em>&nbsp;dan&nbsp;<em>Saccharomyces boulardii.</em></li>\r\n	<li>Berikan syrup atau tablet zinc pada anak selama 10 hari berturut-turut. Dosis pemberian zinc bisa mengikuti resep dokter.</li>\r\n</ul>\r\n\r\n<p>Pemberian antibiotik tidak selalu diperlukan dalam mengobati bayi diare. Jika disebabkan oleh virus, antibiotik tidak akan memberi manfaat. Karena itu, dokter hanya akan memberikan antibiotik jika diare disebabkan oleh bakteri.</p>\r\n\r\n<p>Sebagai langkah pencegahan, sebisa mungkin berikan ASI dibandingkan susu formula. Bayi yang disusui ASI cenderung lebih tidak berisiko mengalami diare, karena kandungan tertentu dalam ASI ternyata dapat menghambat perkembangan bakteri penyebab mencret dan memperkuat sistem kekebalan tubuhnya.</p>\r\n\r\n<p>Selain itu, kebersihan adalah kunci utama mencegah bayi mencret. Selalu cuci tangan sebelum menyiapkan makanan dan sebelum berinteraksi dengan bayi, terutama setelah Anda buang air. Selain itu, cuci tangan Anda sendiri tiap kali selesai mengganti popoknya untuk menghindari penyebaran bakteri ke anggota keluarga lain.</p>\r\n\r\n<p>Pastikan juga bayi Anda telah divaksinasi untuk mencegah&nbsp;infeksi rotavirus&nbsp;penyebab diare.&nbsp;Vaksinasi rotavirus&nbsp;umumnya diberikan pertama kali saat bayi berusia 6-14 minggu, kemudian yang kedua setelah 4-8 minggu dari pemberian pertama, dan terakhir ketika bayi berusia 8 bulan.</p>\r\n\r\n<p>Bunda tidak perlu panik, karena umumnya kondisi bayi mencret dapat mereda dengan sendirinya. Namun segera periksakan ke&nbsp;dokter anak&nbsp;jika mencret bertambah parah, terutama jika terdapat tanda-tanda dehidrasi. Periksakan juga ke dokter bila Si Kecil demam dan/atau muntah lebih dari 24 jam, ada darah pada tinjanya, serta bila perutnya terlihat atau teraba kembung.</p>\r\n', 'Penyakit'),
(9, 'manfaat suplemen zinc dalam mengatasi diare pada balita', '2018-12-19', 'dr. Allert Noya', '<p><strong>Diare merupakan salah satu masalah kesehatan yang sering dialami oleh anak usia di bawah lima tahun (balita). Selain asupan cairan yang memadai, suplemen zinc diketahui dapat membantu mengatasi kondisi tersebut.</strong></p>\r\n\r\n<p>Secara global, angka kematian anak balita akibat&nbsp;<a href=\"https://www.alodokter.com/diare.html\">diare</a>&nbsp;masih tergolong tinggi. Indonesia termasuk negara berkembang yang masih bergulat dengan hal tersebut. Berdasarkan survei dan riset kesehatan dasar yang dilakukan Kementrian Kesehatan, diketahui diare masih menjadi penyebab utama kematian balita dengan penyebab utama penanganan yang tidak tepat.<img alt=\"Manfaat Suplemen Zinc dalam Mengatasi Diare pada Balita - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1538988425/attached_image/manfaat-suplemen-zinc-dalam-mengatasi-diare-pada-balita-alodokter.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<h3><strong>Mengurangi Tingkat Keparahan&nbsp;</strong><strong>Diare</strong></h3>\r\n\r\n<p>Tanpa penanganan yang tepat, diare dapat mengakibatkan&nbsp;<a href=\"https://www.alodokter.com/11-tanda-tubuh-kamu-kekurangan-gizi.html\">kekurangan nutrisi</a>, daya tahan tubuh terhadap infeksi menurun dan gangguan tumbuh kembang pada anak. Pada balita, diare yang parah berisiko menyebabkan&nbsp;<a href=\"https://www.alodokter.com/dehidrasi-berat-jangan-diremehkan-pahami-gejala-dan-risikonya.html\">dehidrasi</a>&nbsp;hingga kematian. Terutama pada penderita diare dengan daya tahan tubuh yang rendah ataupun kekurangan nutrisi di dalam tubuh.</p>\r\n\r\n<p>Pemberian&nbsp;<a href=\"https://www.alodokter.com/zinc-sulphate.html\">suplemen zinc</a>&nbsp;merupakan salah satu cara yang dimanfaatkan untuk membantu mengatasi diare pada balita, bersama dengan pemberian cairan untuk rehidrasi.</p>\r\n\r\n<p>Rekomendasi yang diberikan oleh Organisasi Kesehatan Dunia (WHO) dan UNICEF untuk balita yang mengalami diare akut yaitu pemberian suplemen zinc selama 10-14 hari. Untuk bayi di bawah 6 bulan, pemberian suplemen zinc sekitar 10 mg per hari. &nbsp;Sementara itu, untuk balita yaitu 20 mg suplemen zinc per hari.</p>\r\n\r\n<p>Selain itu, Ikatan Dokter Anak Indonesia (IDAI) menyarankan pemberian suplementasi zinc dapat diberikan secara rutin pada bayi usia 6-23 bulan, setidaknya selama 2 bulan, tiap 6 bulan sekali.</p>\r\n\r\n<p>Menurut penelitian, pemberian suplemen zinc pada balita menunjukkan hasil yang positif. Balita yang diberikan suplemen zinc lebih sedikit mengalami diare, disentri dan infeksi saluran pernapasan. Pemberian suplemen zinc juga dinilai mampu memberi efek positif dalam menurunkan angka kematian bayi terkait penyakit infeksi.</p>\r\n\r\n<h3><strong>Mendukung Pertumbuhan Sel dan Metabolisme</strong></h3>\r\n\r\n<p>Sebenarnya dalam kondisi normal pun, tubuh tetap membutuhkan zinc sebagai mineral untuk menjaga kesehatan. Zinc diketahui bermanfaat untuk pertumbuhan sel dan menjaga&nbsp;<a href=\"https://www.alodokter.com/meningkatkan-metabolisme-tubuh-untuk-menurunkan-berat-badan\">metabolisme tubuh</a>.</p>\r\n\r\n<p>Kekurangan zinc akan menurunkan daya tahan tubuh terhadap infeksi dan tumbuh kembang anak. Sayangnya, tubuh tidak memiliki kemampuan untuk menyimpan zinc, itu sebabnya asupan mineral tersebut dibutuhkan setiap hari.</p>\r\n\r\n<p>Anak usia 1-3 tahun membutuhkan sekitar 3 mg per hari, sedangkan usia 4-8 tahun sekitar 5 mg per hari. Pada orang dewasa kondisi normal, zinc dibutuhkan sekitar 8 mg. Sementara itu, untuk wanita hamil sekitar 11 mg dan wanita menyusui 12 mg per hari.</p>\r\n\r\n<p>Selain memanfaatkan suplemen zinc, Anda juga bisa memberikan beberapa jenis makanan yang kaya kandungan zinc seperti daging, ayam, tiram, lobster, kepiting, keju, oatmeal,&nbsp;<a href=\"https://www.alodokter.com/7-manfaat-kacang-mete-yang-segurih-rasanya\">kacang mete</a>, dan sereal yang difortifikasi zinc.</p>\r\n\r\n<p>Untuk mengatasi diare, langkah pertama yang harus dilakukan yaitu memberikan asupan cairan yang mencukupi. Penggunaan suplemen zinc atau obat untuk mengatasi diare pada balita, sebaiknya melalui&nbsp;<a href=\"https://www.alodokter.com/cari-dokter/dokter-anak\">konsultasi dokter anak</a>.</p>\r\n', 'Penyakit'),
(10, 'ini daftar bahan makanan sehat untuk mpasi bayi bunda', '2018-12-19', 'dr. Allert Noya', '<p><strong>Setelah Si Kecil berusia 6 bulan, maka ia bisa mulai mengonsumsi makanan padat atau makanan pendamping air susu ibu (MPASI). Yuk Bunda, cari tahu apa saja bahan makanan yang tepat dikonsumsi.&nbsp;</strong></p>\r\n\r\n<p>Selain memperkenalkan anak pada berbagai tekstur dan rasa, memberikan beragam jenis makanan akan memberikan berbagai nutrisi yang dibutuhkannya. Membiasakan pola makan sehat sejak dini sangat dianjurkan, termasuk mengonsumsi sayur dan buah. Nah, bahan makanan apa saja sehat yang sesuai dijadikan&nbsp;<a href=\"https://www.alodokter.com/mpasi-diberikan-setelah-bayi-berusia-6-bulan\" target=\"_blank\">MPASI</a>?</p>\r\n\r\n<p><img alt=\"Ini Daftar Bahan Makanan Sehat untuk MPASI Bayi Bunda - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1541409870/attached_image/ini-daftar-bahan-makanan-sehat-untuk-mpasi-bayi-bunda-alodokter.jpg\" style=\"height:434px; width:650px\" /></p>\r\n\r\n<h3><strong>Beragam Pilihan Makanan Kaya Nutrisi</strong></h3>\r\n\r\n<p>Ada berbagai bahan makanan segar penuh nutrisi yang dapat memenuhi kebutuhan gizi Si Kecil untuk mendukung tumbuh kembangnya, antara lain:</p>\r\n\r\n<ul>\r\n	<li><strong>Alpukat</strong></li>\r\n</ul>\r\n\r\n<p>Kandungan lemak tak jenuh dalam&nbsp;<a href=\"https://www.alodokter.com/tidak-cuma-enak-manfaat-alpukat-juga-banyak.html\" target=\"_blank\">alpukat</a>, membuatnya sebagai buah yang tepat untuk diperkenalkan pertama kali pada Si Kecil. Dengan tekstur dan rasanya yang lembut, Si Kecil akan menyukainya. Agar mudah dicerna, alpukat dapat dicampur dengan&nbsp;<a href=\"https://www.alodokter.com/memilih-susu-formula-untuk-bayi\" target=\"_blank\">susu formula</a>&nbsp;atau ASI.</p>\r\n\r\n<ul>\r\n	<li><strong>Ubi</strong></li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.alodokter.com/manisnya-nutrisi-di-dalam-manfaat-ubi-jalar.html\" target=\"_blank\">Ubi</a>&nbsp;kaya akan betakaroten atau vitamin A yang baik untuk mata, melindungi dari infeksi, membantu pertumbuhan, dan menjaga kesehatan kulit bayi. Rasanya yang manis juga akan disukai Si Kecil.</p>\r\n\r\n<ul>\r\n	<li><strong>Pisang</strong></li>\r\n</ul>\r\n\r\n<p>Selain dijadikan bubur,&nbsp;<a href=\"https://www.alodokter.com/sehat-tiap-hari-berkat-manfaat-pisang.html\" target=\"_blank\">pisang</a>&nbsp;juga bisa dijadikan&nbsp;<em>smoothies&nbsp;</em>untuk Si Kecil. Kandungan kalium, vitamin B6, vitamin C, kalsium, dan zat besi dari pisang membantu pertumbuhan anak.</p>\r\n\r\n<ul>\r\n	<li><strong>Buah beri</strong></li>\r\n</ul>\r\n\r\n<p>Buah beri dapat diblender menjadi jus atau bubur, kemudian dipadukan dengan yoghurt tanpa rasa. Antioksidan dan flavonoid didalamnya bermanfaat untuk otak, mata, dan saluran kemih bayi.</p>\r\n\r\n<ul>\r\n	<li><strong>Brokoli</strong></li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.alodokter.com/ini-manfaat-brokoli-hijau-untuk-anda\" target=\"_blank\">Brokoli</a>&nbsp;yang kaya serat, kalsium, dan folat ini bisa menjadi pembuka perkenalan anak pada sayuran-sayuran hijau lain. Kukus hingga lembut, dinginkan, kemudian potong-potong kecil.</p>\r\n\r\n<ul>\r\n	<li><strong>Bubur beras</strong></li>\r\n</ul>\r\n\r\n<p>Sebenarnya MPASI tidak harus selalu dimulai dengan bubur beras. Tapi jika Bunda memilih bubur beras, Encerkan bubur dengan ASI atau susu formula agar mudah dicerna bayi. Kekentalan bubur dapat ditambah jika Si Kecil sudah semakin besar. Selain bubur beras, Bunda juga bisa memberikan&nbsp;<a href=\"https://www.alodokter.com/manfaat-oatmeal-untuk-kesehatan\" target=\"_blank\">oatmeal</a>.</p>\r\n\r\n<ul>\r\n	<li><strong>Daging ayam dan sapi</strong></li>\r\n</ul>\r\n\r\n<p>Daging yang dihaluskan kemudian dicampur dengan ASI dan bubur sayuran juga dapat menjadi pilihan untuk bayi. Selain kaya akan protein, daging ayam dan sapi juga mengandung zat besi,&nbsp;<em>niacin</em>, vitamin B6,&nbsp;<em>riboflavin</em>, dan seng. Jangan lupa haluskan daging hingga lembut ya, Bun, agar bayi tidak tersedak.</p>\r\n\r\n<ul>\r\n	<li><strong>Ikan</strong></li>\r\n</ul>\r\n\r\n<p>Ikan yang kaya protein, mineral, vitamin dan asam lemak omega-3, seperti makarel dan salmon, penting untuk perkembangan otak Si Kecil. Saat memberikan ikan, pastikan bebas dari duri dan sudah dimasak hingga matang. Pemberian ikan juga perlu ditunda jika Si Kecil kemungkinan memiliki alergi.</p>\r\n\r\n<ul>\r\n	<li><strong><em>Finger foods</em></strong></li>\r\n</ul>\r\n\r\n<p><em><a href=\"https://www.alodokter.com/8-pilihan-finger-food-untuk-bayi\" target=\"_blank\">Finger foods</a>&nbsp;</em>biasanya dapat diberikan saat bayi berusia sekitar 9 bulan. Mereka dapat mencoba mengambil sendiri potongan pisang, wortel, pasta ataupun telur rebus. Tapi, disarankan untuk menghindari makanan-makanan yang dapat membuatnya tersedak seperti permen, anggur atau biskuit.</p>\r\n\r\n<p>Meski banyak pilihan, tapi bayi yang sudah mulai makan makanan padat tidak berarti langsung makan banyak&nbsp;<em>lho,&nbsp;</em>Bun. Awalnya mungkin Si Kecil hanya akan makan 1-2 sendok teh saja.</p>\r\n\r\n<p>Selain itu, kalau ekspresi wajahnya berubah menjadi tidak senang ketika pertama kali mencicipi makanan baru, bukan berarti ia tidak suka. Mungkin ia hanya terkejut dengan rasa yang baru. Coba untuk memberikannya lagi beberapa hari kemudian.</p>\r\n\r\n<p>Jadi, sudah tidak bingung lagi memilih bahan makanan sehat untuk MPASI kan, Bunda? Yuk mulai susun menu untuk Si Kecil yang kaya nutrisi.</p>\r\n', 'Tips'),
(11, 'bunda, ini dia cara mengatasi biang keringat pada bayi', '2018-12-19', 'dr. Kevin Andrian', '<p><strong>Muncul biang keringat di leher, ketiak, selangkangan atau pangkal paha, dada bagian atas, kepala, dahi, perut, atau lipatan kulit bayi lainnya?&nbsp;<em>Yuk</em>, Bunda, terapkan cara mengatasi biang keringat pada bayi berikut ini.</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/biang-keringat\" target=\"_blank\">Biang keringat</a>&nbsp;bisa muncul akibat cuaca yang lembap dan panas atau jika Si Kecil&nbsp;<a href=\"https://www.alodokter.com/tidak-perlu-panik-hadapi-demam-pada-bayi\" target=\"_blank\">demam</a>&nbsp;dan banyak berkeringat. Selain itu, bisa juga karena pori-pori kulit bayi tersumbat dan keringat tidak bisa keluar. Bayi dan anak-anak sangat rentan terkena biang keringat karena pori-pori kulit mereka lebih kecil dibandingkan pori-pori orang dewasa. Selain itu, kelenjar dan saluran keluar keringat pada bayi dan anak-anak juga belum sepenuhnya berkembang.</p>\r\n\r\n<p><img alt=\"Bunda, Ini Dia Cara Mengatasi Biang Keringat Pada Bayi - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1503570480/attached_image/bunda-ini-dia-cara-mengatasi-biang-keringat-pada-bayi-alodokter.jpg\" style=\"height:503px; width:650px\" /></p>\r\n\r\n<p>Biang keringat kebanyakan bisa sembuh dan hilang sendiri dalam beberapa hari, kecuali jika biang keringat mengalami infeksi. Bunda bisa mengurangi rasa gatal dan rasa tidak nyaman yang dialami Si Kecil akibat biang keringat. Berikut beberapa cara mengatasi biang keringat pada bayi yang bisa Bunda terapkan:</p>\r\n\r\n<p><strong>Hindari&nbsp;</strong><strong>U</strong><strong>dara&nbsp;</strong><strong>P</strong><strong>anas dan&nbsp;</strong><strong>L</strong><strong>emba</strong><strong>p</strong></p>\r\n\r\n<p>Cara mengatasi biang keringat pada bayi bisa Bunda mulai dengan memindahkan Si Kecil ke ruangan yang sejuk dan teduh. Jika Bunda menggunakan AC atau kipas angin, disarankan untuk tidak mengarahkan angin langsung ke tubuh Si Kecil.</p>\r\n\r\n<p>Selain itu, apabila hendak keluar rumah, jangan lupa membawa kipas dan topi untuknya.&nbsp;<em>Oh iya</em>Bunda, pastikan juga Si Kecil minum cukup air putih. Gunanya, untuk mengganti semua cairan yang hilang melalui keringat agar bayi tidak mengalami&nbsp;<a href=\"https://www.alodokter.com/kenali-tanda-tanda-bayi-mengalami-dehidrasi\" target=\"_blank\">dehidrasi</a>.</p>\r\n\r\n<p><strong>Pakaian</strong></p>\r\n\r\n<p>Disarankan untuk memilih pakaian dari serat alami untuk Si Kecil, misalnya yang berbahan katun. Hindari memakaikan pakaian dari kain sintetis, seperti poliester dan nilon, karena kain jenis ini dapat memerangkap panas. Selain itu, pakaikanlah pakaian yang longgar kepada Si Kecil, atau sesekali biarkan Si Kecil tanpa pakaian dan&nbsp;<a href=\"https://www.alodokter.com/popok-bayi-sekali-pakai-vs-popok-kain\">popok</a>&nbsp;selama beberapa waktu. Namun, tetap pastikan ia tidak kedinginan.</p>\r\n\r\n<p><strong>Jangan&nbsp;</strong><strong>S</strong><strong>ering&nbsp;</strong><strong>D</strong><strong>igendong</strong></p>\r\n\r\n<p><a href=\"https://www.alodokter.com/ini-cara-menggendong-bayi-baru-lahir\" target=\"_blank\">Menggendong bayi</a>&nbsp;ketika cuaca panas tidak disarankan apabila ingin mengatasi biang keringat pada bayi. Ketika digendong, Si Kecil harus berhadapan dengan dua sumber panas, yaitu cuaca dan suhu tubuh Bunda. Sebaiknya tidurkan Si Kecil di ranjang dan membiarkan ia berbaring, merangkak, atau berjalan-jalan sendiri ketika bangun.</p>\r\n\r\n<p><strong>Menjaga&nbsp;</strong><strong>K</strong><strong>ulit&nbsp;</strong><strong>B</strong><strong>ayi&nbsp;</strong><strong>T</strong><strong>etap&nbsp;</strong><strong>S</strong><strong>ejuk</strong></p>\r\n\r\n<p>Salah satu cara mengatasi biang keringat pada bayi adalah mendinginkan kulit bayi yang terkena biang keringat menggunakan kain basah yang sejuk. Atau, bisa juga dengan memandikannya, lalu membiarkan kulit bayi kering dengan sendirinya, tanpa menggunakan handuk.</p>\r\n\r\n<p><strong>Gunakan&nbsp;</strong><strong><em>L</em></strong><strong><em>otion</em></strong><strong>&nbsp;dan&nbsp;</strong><strong>K</strong><strong>rim</strong>&nbsp;<strong>Hanya Bila Diperlukan</strong></p>\r\n\r\n<p>Jika Si Kecil menangis ketika Bunda menyentuh kulitnya, oleskan&nbsp;<em>lotion&nbsp;</em><em>calamine</em>&nbsp;&nbsp;pada kulitnya. Namun, jangan sampai mengoleskan&nbsp;<em>lotion</em>&nbsp;pada kulit di dekat mata bayi. Jika biang keringat yang dialami Si Kecil sangat parah, gunakan&nbsp;<a href=\"https://www.alodokter.com/hydrocortisone\" target=\"_blank\">krim hidrokortison</a>&nbsp;sesuai saran dokter. Disarankan untuk tidak menggunakan salep dan&nbsp;<em>lotion</em>&nbsp;jenis lainnya, karena dapat membuat ruam menjadi parah.</p>\r\n\r\n<p>Cara mengatasi biang keringat pada bayi di atas bisa Bunda coba sendiri di rumah. Biang keringat biasanya dapat hilang dengan sendirinya. Namun, jangan ragu-ragu untuk segera menemui dokter apabila suhu tubuh Si Kecil lebih dari 37-38 derajat Celcius dan ruam tidak hilang setelah tiga atau empat hari, tampak semakin parah, atau terinfeksi.</p>\r\n', 'Tips'),
(12, 'rambu-rambu makanan bayi 6 bulan: apa yang boleh dan tidak boleh diberikan', '2018-12-19', 'dr. Kevin Andrian', '<p><strong>Meski siap untuk makanan padat, tetapi makanan bayi 6 bulan tentu saja berbeda dengan makanan untuk orang dewasa. Mengolah sendiri makanan bayi dapat menjadi cara terbaik untuk memberikan nutrisi sehat dan segar dan memantau kemungkinan alergi.</strong></p>\r\n\r\n<p>Pada usia 6 bulan, tubuh bayi telah dapat menyangga kepalanya sendiri dan mulai tertarik dengan makanan yang dikonsumsi orang yang lebih dewasa. Inilah saat yang direkomendasikan untuk memberikan makanan pendamping ASI (<a href=\"https://www.alodokter.com/MPASI-diberikan-setelah-bayi-berusia-6-bulan\" target=\"_blank\">MPASI</a>) kepada bayi.</p>\r\n\r\n<p><img alt=\"Rambu-rambu Makanan Bayi 6 Bulan:  Apa yang Boleh dan Tidak Boleh Diberikan - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1539316455/attached_image/rambu-rambu-makanan-bayi-6-bulan-apa-yang-boleh-dan-tidak-boleh-diberikan-alodokter.jpg\" style=\"height:451px; width:650px\" /></p>\r\n\r\n<p>Sayangnya produk makanan bayi 6 bulan berjenis instan yang banyak dijual di supermarket umumnya tidak banyak mengandung nutrisi dan vitamin karena sebelumnya melalui proses pengolahan yang terlalu panjang. Oleh sebab itu, disarankan untuk mengolah sendiri makanan bayi 6 bulan agar bayi mendapat nutrisi dan vitamin terbaik.</p>\r\n\r\n<p>Makanan bayi 6 bulan dapat terdiri dari:</p>\r\n\r\n<ul>\r\n	<li>Sereal, lebih baik pilih yang bebas gluten.</li>\r\n	<li>Buah dan sayuran yang dihaluskan, seperti avokad, pisang, pir, kentang, wortel, brokoli, kol, bayam, apel, stroberi, wortel, anggur, tomat, timun.</li>\r\n	<li><a href=\"https://www.alodokter.com/memperkenalkan-bubur-bayi-kepada-buah-hati-anda\" target=\"_blank\">Bubur yang dibuat khusus untuk bayi</a>&nbsp;atau daging yang dihaluskan, seperti ayam atau sapi.</li>\r\n	<li>Bubur tahu.</li>\r\n	<li>Bubur kacang-kacangan: edamame, kacang merah, kacang hijau.</li>\r\n</ul>\r\n\r\n<p>Semua bahan-bahan di atas kemudian dicampur dengan ASI atau susu formula untuk kemudian diberikan kepada bayi.</p>\r\n\r\n<p>Pada awalnya, bayi 6 bulan hanya mampu mengonsumsi sekitar satu sendok teh sayur dan satu sendok teh buah dalam sekali makan. Tetapi lama-kelamaan porsi ini akan bertambah seiring waktu. Setelah buah dan sayuran, makanan bayi 6 bulan dapat divariasikan dengan kelompok makanan lain, seperti pasta, nasi, roti, telur, atau ikan.</p>\r\n\r\n<h3><strong>Panduan Makanan Bayi 6 Bulan</strong></h3>\r\n\r\n<p>Oleh karena baru pertama kali mencoba makanan padat, maka Anda perlu mencermati apakah Si Kecil mengalami alergi terhadap makanan tertentu. Untuk memudahkan pengamatan, tunggu hingga tiga hari sebelum beralih memperkenalkan jenis makanan lain. Tiga hari adalah waktu yang umumnya diperlukan untuk melihat reaksi alergi, terutama bila ada anggota keluarga dengan riwayat alergi.</p>\r\n\r\n<p>Telur, kedelai, ikan, susu sapi, kerang, dan gandum adalah beberapa contoh bahan makanan pemicu alergi. Waspadai juga bahan makanan yang bisa menghasilkan gas di dalam lambung, seperti kacang, produk olahan susu,&nbsp;<a href=\"https://www.alodokter.com/membedakan-jenis-dan-manfaat-gandum\" target=\"_blank\">gandum</a>, bawang. Bahan-bahan makanan ini mungkin dapat membuat bayi tidak nyaman.</p>\r\n\r\n<p>Selain itu hindari memberikan madu untuk bayi berusia kurang dari setahun untuk mengurangi risiko botulisme. Sementara produk yang terbuat dari susu sapi, seperti keju, umumnya aman untuk diberikan kepada bayi. Tetapi tunda dulu memberikan susu sapi hingga anak berusia lebih dari setahun.</p>\r\n\r\n<p>Sebagai langkah awal, Anda dapat menggunakan satu jenis bahan untuk dibuat bubur. Berikut adalah beberapa bubur yang dapat dicoba.</p>\r\n\r\n<p><strong>Bubur pisang</strong></p>\r\n\r\n<p>Pisang adalah buah yang kaya serat dan kalium yang aman bagi perut bayi. Namun jangan terlalu sering memberikan pisang karena berisiko menyebabkan konstipasi.</p>\r\n\r\n<p>Cara membuat: lumat pisang dengan garpu, kemudian tambahkan ASI atau susu formula untuk mengencerkannya.</p>\r\n\r\n<p><strong>Bubur beras merah</strong></p>\r\n\r\n<p>Sebagai bahan makanan pokok yang tidak menyebabkan alergi, beras merah yang mudah dicerna bayi adalah pilihan yang tepat. Anda dapat mem-<em>blender&nbsp;</em>beras merah hingga halus. Kemudian tambahkan air dan masak dengan api sedang hingga mendidih. Setelah mendidih, kecilkan api, dan masak kurang lebih hingga 20 menit. Anda dapat menambahkan air hingga konsistensi bubur sesuai dengan yang Anda harapkan.</p>\r\n\r\n<p><strong>Bubur avokad</strong></p>\r\n\r\n<p>Avokad mengandung lemak baik yang bermanfaat untuk perkembangan fisik dan otak bayi. Lumat avokad dengan garpu, kemudian tambahkan ASI atau susu formula. Sisa avokad yang belum digunakan dapat disimpan di dalam wadah dan tersimpan di lemari pendingin.</p>\r\n\r\n<p>Jika anak Anda tampak tidak suka terhadap beberapa jenis makanan, bukan berarti seterusnya dia tidak akan menyukainya. Tunggu beberapa hari kemudian untuk menyajikan makanan yang sama. Selera bayi dapat berubah-ubah seiring waktu.</p>\r\n\r\n<p>Memperkenalkan berbagai macam makanan dan rasa dapat membuat bayi menyukai beragam makanan dan mendapat banyak manfaat nutrisi.</p>\r\n', 'Hiburan');
INSERT INTO `artikel` (`id_artikel`, `judul`, `tanggal`, `penulis`, `isi`, `jenis`) VALUES
(13, 'inilah pentingnya asi untuk kesehatan jantung bayi prematur', '2018-12-19', 'dr. Marianti', '<p><strong>Air Susu Ibu (ASI) diketahui memiliki segudang manfaat kesehatan untuk bayi, terlebih bagi bayi yang lahir lebih cepat atau prematur.&nbsp;</strong><strong>Perut bayi lebih mudah mencerna ASI ketimbang susu formula. Selain itu, ASI mengandung hormon pertumbuhan yang membantu buah hati tumbuh dan menjadi lebih kuat. ASI juga akan membantu pencernaan bayi yang rentan untuk menjadi lebih sempurna serta membantu melawan infeksi.</strong></p>\r\n\r\n<p>Tidak sampai di situ saja, cairan yang kerap dijuluki dengan sebutan &lsquo;emas cair&rsquo; karena manfaatnya ini, terbukti di dalam&nbsp;<a href=\"http://www.medicalnewstoday.com/articles/310948.php\">penelitian</a>&nbsp;terbaru bahwa kegunaannya dapat membuat fungsi dan struktur jantung bayi prematur menjadi lebih baik untuk jangka panjang.</p>\r\n\r\n<p><img alt=\"Inilah Pentingnya ASI untuk Kesehatan Jantung Bayi Prematur - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1472015903/attached_image/inilah-pentingnya-asi-untuk-kesehatan-jantung-bayi-prematur-alodokter.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>Seorang&nbsp;<a href=\"http://www.manhattanwomenshealth.net/team-member/dr-jennifer-wu/\" target=\"_blank\">ginekolog</a>&nbsp;mengatakan bahwa manfaat ASI untuk bayi prematur sangat besar. Dalam jangka pendek, ASI memberikan antibodi pelindung dan membantu produksi flora usus yang penting. Sementara dalam jangka panjang, ASI efektif dalam memperbaiki kesempurnaan struktur dan fungsi jantung. Terlebih lagi, banyak bayi prematur yang dihadapkan kepada risiko gangguan perkembangan&nbsp; jantung yang terjadi dalam beberapa bulan pertama kehidupan. Masalah tersebut menyebabkan penurunan fungsi jantung di kemudian hari, bilik jantung lebih kecil, dan penebalan otot jantung.</p>\r\n\r\n<p>Para peneliti menemukan bahwa dibandingkan dengan mereka yang lahir tepat waktu, bayi prematur diketahui memiliki fungsi jantung yang lebih buruk dan volume jantung yang menurun ketika dewasa. Namun, bila anak-anak yang lahir prematur ini senantiasa mendapatkan ASI eksklusif, fungsi dan volume jantung mereka bisa lebih baik daripada anak-anak lahir prematur yang diberi susu formula.</p>\r\n\r\n<p>Hasil&nbsp;<a href=\"http://www.medicalnewstoday.com/articles/310948.php\" target=\"_blank\">penelitian</a>&nbsp;menyatakan bahwa walaupun kelahiran prematur secara pasti berdampak kepada keterlambatan perkembangan anak, kandungan gizi ASI tampaknya mampu meningkatkan perkembangan jantung. Bahkan susu formula bayi yang terbaik sekalipun masih memiliki banyak kekurangan, antara lain kurangnya beberapa faktor gizi pertumbuhan, enzim, serta antibodi untuk perkembangan bayi sebagaimana semuanya itu sudah terkandung secara lengkap di dalam ASI.</p>\r\n\r\n<p>Temuan yang luar biasa ini membuat para pakar terkejut karena sebelumnya benar-benar tidak diketahui bahwa ASI akan memberikan efek perlindungan tertentu pada pengembangan jantung bayi. Para peneliti sudah menduga bahwa hal itu mungkin terjadi, tetapi mereka terkejut dengan ukuran efek yang dihasilkan oleh ASI.</p>\r\n\r\n<p>Menurut temuan di dalam&nbsp;<a href=\"http://www.webmd.com/parenting/baby/news/20160614/breast-feeding-a-boon-to-preemies-hearts-study?page=2\" target=\"_blank\">penelitian</a>, meskipun ASI eksklusif tidak mengubah ketebalan dinding jantung, namun pemberian ASI eksklusif kepada bayi prematur dapat membantunya tumbuh menjadi orang dewasa yang memiliki ukuran dan fungsi jantung mendekati jantung orang dewasa ideal yang lahir secara normal.</p>\r\n\r\n<h3><strong>Tips Memberi ASI untuk Bayi Prematur</strong></h3>\r\n\r\n<p>Menyusui bayi prematur bisa menjadi tantangan tersendiri bagi Bunda, jadi sewajarnya Bunda akan membutuhkan dukungan lebih intens atau mungkin juga konsultasi menyusui secara khusus dengan dokter. Beberapa tips berikut mungkin bisa membantu merawat bayi prematur Bunda.</p>\r\n\r\n<ul>\r\n	<li>Habiskan sebanyak mungkin waktu untuk berdekatan bersama bayi, bahkan walau Bunda atau bayi belum berkondisi cukup baik. Namun justru hal ini cukup penting untuk membantu Bunda meningkatkan produksi ASI dan mulai membangun rutinitas menyusui.</li>\r\n	<li>Bersabar dan terus berusaha. Pada awalnya, bayi mungkin hanya menjilati payudara Bunda, selanjutnya mulai melakukan beberapa kali isapan sampai akhirnya bayi telah percaya diri untuk benar-benar menyusu. Seiring waktu, proses alami ini akan mendorong refleks bayi dalam mengisap dan membantunya terbiasa menyusu secara rutin.</li>\r\n	<li>Bila bayi masih belum siap untuk menyusu, berarti Bunda perlu memerah ASI untuk memperlancar pasokan ASI. Bunda direkomendasikan untuk memerah sebanyak 8-10 kali sehari, termasuk sekali di malam hari.</li>\r\n	<li>Bila Bunda memiliki halangan untuk memproduksi ASI sendiri, coba konsultasikan dengan dokter spesialis anak. Selain itu, Bunda bisa memberikan ASI donor kepada buah hati, setidaknya sampai produksi ASI Bunda sudah lancar. Namun,&nbsp;<a href=\"https://www.alodokter.com/Perhatikan-3-Hal-Ini-Sebelum-Memberi-atau-Menerima-Donor-ASI\" target=\"_blank\">sebelumnya pastikan donor ASI berasal dari sumber yang jelas</a>.</li>\r\n</ul>\r\n\r\n<p>Bunda, sebisa mungkin berikan ASI eksklusif kepada buah hati. ASI sangat penting, terutama bagi bayi prematur dan bayi yang sedang sakit. Terlepas dari itu, menyusui memiliki berbagai manfaat kesehatan bagi bayi, termasuk mengurangi risiko asma, obesitas, leukimia, eksim, dan infeksi telinga.</p>\r\n', 'Tips'),
(14, 'katanya, makanan sehat untuk bayi harus organik', '2018-12-19', 'dr. Marianti', '<p><strong>Orang tua tentu sering membaca informasi mengenai beragam saran makanan sehat untuk bayi, tak terkecuali yang berasal dari bahan organik. Ada beberapa alasan pemilihan makanan organik, meski tidak berarti kandungan nutrisinya lebih baik dibanding makanan konvensional.</strong></p>\r\n\r\n<p>Makanan organik semakin banyak menjadi pilihan karena tidak menggunakan pupuk sintetis ataupun pestisida untuk pertumbuhannya. Hingga kini, pestisida masih banyak digunakan petani u ntuk melindungi tanaman dari beragam jamur, serangga, dan penyakit. Sayangnya,&nbsp;<a href=\"https://www.alodokter.com/sedekat-inilah-pestisida-dengan-kita\" target=\"_blank\">pestisida dapat meninggalkan residu pada produk makanan</a>.</p>\r\n\r\n<p><img alt=\"Katanya, Makanan Sehat untuk Bayi Harus Organik - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1539251381/attached_image/katanya-makanan-sehat-untuk-bayi-harus-organik-alodokter.jpg\" style=\"height:447px; width:650px\" /></p>\r\n\r\n<h3>Alasan yang Banyak Diungkapkan</h3>\r\n\r\n<p>Sebuah studi yang masih memerlukan penelitian lebih lanjut menunjukkan, kandungan nutrisi makanan organik tidak jauh berbeda. Sementara itu, studi lain yang dilakukan terhadap anak-anak yang mengonsumi makanan organik, tampak memiliki tingkat pestisida yang sangat rendah pada urine.</p>\r\n\r\n<p>Namun, tak perlu terburu-buru memutuskan&nbsp;<a href=\"https://www.alodokter.com/makanan-organik-sudah-pasti-lebih-sehat\" target=\"_blank\">konsumsi organik</a>, sebab makanan organik ataupun non organik, jumlah residunya diatur oleh pemerintah agar tidak melebihi batas yang diperbolehkan. Apalagi, harga makanan organik lebih mahal dibanding makanan konvensional, sehingga perlu pertimbangan lebih lanjut.</p>\r\n\r\n<p>Berikut beberapa alasan yang banyak diungkapkan orang tua yang memilih menu organik sebagai makanan sehat untuk bayi :</p>\r\n\r\n<ul>\r\n	<li>Makanan bayi disarankan dari bahan organik karena sistem imunitas atau daya tahan tubuh bayi yang belum sempurna, sehingga lebih berisiko terhadap paparan pestisida dibanding orang dewasa.</li>\r\n	<li>Memberikan makanan organik bagi bayi akan memastikan bayi memperoleh nutrisi awal yang baik.</li>\r\n	<li>Sebagian orang tua memilih makanan organik untuk bayi karena alasan lingkungan.</li>\r\n	<li>Ada juga orang tua yang memberi alasan memilih makanan organik karena rasa yang lebih enak.</li>\r\n</ul>\r\n\r\n<p>Yang tidak kalah penting dari menyediakan makanan sehat untuk bayi, tidak sekedar organik atau tidak, namun membiasakan pola makan seimbang yang akan terbawa hingga dewasa.</p>\r\n\r\n<p><strong>Pilihan Makanan Organik Terbaik</strong></p>\r\n\r\n<p>Beberapa jenis makanan diketahui memiliki kadar pestisida tinggi, dibandingkan yang lain. Untuk itu, sebaiknya pilih makanan organik untuk jenis makanan berikut :</p>\r\n\r\n<ul>\r\n	<li><strong>Apel, pir, anggur dan stroberi</strong></li>\r\n</ul>\r\n\r\n<p>Saat mengonsumsi apel yang kaya serat, banyak orang yang mengupas kulitnya. Padahal tidak sedikit nutrisi di bagian kulit tersebut. Pada produk konvensional, kulit memang sebaiknya dibuang karena pestisida seringkali masih tertinggal di sana. Demikian juga pir yang lebih banyak menyerap pestisida dibandingkan buah lainnya.</p>\r\n\r\n<p>Sementara itu, dianjurkan memilih stroberi di lokasi yang paling dekat dengan kota Anda agar lebih segar. Sebuah studi menyatakan, stroberi organik mengandung antioksidan lebih banyak dibandingkan non organik. Untuk anggur jenis organik, merupakan pilihan terbaik untuk anak dan ibu hamil. Meski demikian, disarankan tetap mencuci buah sebelum mengonsumsinya termasuk buah organik</p>\r\n\r\n<ul>\r\n	<li><strong>Seledri, bayam dan daun selada</strong></li>\r\n</ul>\r\n\r\n<p>Beberapa jenis sayur seperti bayam, daun selada dan seledri yang kaya vitamin dan mineral serta rendah kalori, namun berisiko memiliki residu pestisida lebih tinggi. Jika perlu memberikan makanan sehat untuk bayi, orang tua dapat memilih jenis organik. Selalu cuci bersih sayur-sayuran tersebut di bawah air mengalir.</p>\r\n\r\n<ul>\r\n	<li><strong>Kentang</strong></li>\r\n</ul>\r\n\r\n<p>Kentang dengan kandungan serat serta berbagai vitamin dan mineral, merupakan salah satu pilihan jenis makanan organik yang disarankan. Sebab, kandungan pestisidanya jauh lebih rendah.</p>\r\n\r\n<ul>\r\n	<li><strong>Susu dan daging</strong></li>\r\n</ul>\r\n\r\n<p>Sapi penghasil susu secara konvensional banyak diberikan hormon pertumbuhan untuk merangsang produksi susu. Meski hingga kini, belum ada hasil penelitian yang menyatakan risiko hormon tersebut. Namun, bayi atau anak ada baiknya diberikan susu organik dari sapi tanpa tambahan hormon ataupun antibiotik. Demikian juga saat membeli daging dari sapi atau ternak lainnya.</p>\r\n\r\n<p>Jika Anda ingin menyediakan makanan sehat untuk bayi dari jenis non organik, dianjurkan memilih dari beberapa jenis makanan ini yang diketahui memiliki residu pestisida yang rendah seperti bawang bombay, nanas, jagung manis, alpkukat, kol, asparagus, terong, kiwi, semangka, jeruk bali, dan jamur. Konsultasikan dengan dokter atau ahli gizi untuk pilihan terbaik bagi bayi Anda.</p>\r\n', 'Tips'),
(15, 'bentuk-bentuk keisengan pada perkembangan anak 1 tahun', '2018-12-19', 'dr. Kevin Andrian', '<p><strong>Setiap tahap perkembangan anak merupakan hal krusial yang sayang untuk dilewatkan oleh orang tua. Biasanya, ketika anak mencapai usia tertentu, akan diikuti oleh kemunculan kemampuan-kemampuan baru. Mari cari tahu perkembangan anak 1 tahun berikut ini</strong>.</p>\r\n\r\n<p>Saat anak menginjak usia 1 tahun, ada beberapa kemampuan dasar yang akan semakin terlihat jelas, misalnya saja keinginan untuk bermain akan meningkat, ingin mempelajari hal baru di sekitarnya, hingga mencoba untuk mengucapkan sesuatu. Tidak hanya itu, ada pula perkembangan lain yang terjadi pada anak 1 tahun, seperti perkembangan emosi, kemampuan&nbsp;<a href=\"https://www.alodokter.com/benarkah-bayi-belum-dapat-berkomunikasi\" target=\"_blank\">berkomunikasi</a>, bersosialisasi, bergerak, dan&nbsp;<a href=\"https://www.alodokter.com/perkembangan-kognitif-pada-anak-1-6-tahun\" target=\"_blank\">kognitif</a>.</p>\r\n\r\n<p><img alt=\"Bentuk-bentuk Keisengan pada Perkembangan Anak 1 Tahun - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1539770418/attached_image/bentuk-bentuk-keisengan-pada-perkembangan-anak-1-tahun-alodokter.jpg\" style=\"height:434px; width:650px\" /></p>\r\n\r\n<h3><strong>Kemampuan yang Kini Dimiliki Anak Usia 1 Tahun</strong></h3>\r\n\r\n<p>Pada usia 1 tahun, anak mungkin akan segera bisa berjalan secara bertahap. Hal ini dikarenakan kekuatan tulangnya telah mampu menopang&nbsp;<a href=\"https://www.alodokter.com/lebih-teliti-memerhatikan-berat-badan-anak\" target=\"_blank\">berat badannya</a>, sehingga anak menjadi lebih aktif untuk bergerak. Tak hanya itu, anak juga lebih sering berceloteh dan mungkin akan lebih berisik daripada sebelumnya.</p>\r\n\r\n<p>Selain aktivitasnya yang meningkat, perkembangan anak 1 tahun juga ditandai dengan kemampuan merespons ucapan orang di sekitar. Di usianya tersebut, Si Kecil akan lebih mudah diajak berkomunikasi dua arah, misalnya sudah mulai bisa menunjuk benda yang Anda ucapkan. Selain itu, anak usia satu tahun sudah bisa diajari&nbsp;<a href=\"https://www.alodokter.com/tidak-sulit-ini-cara-mengajarkan-sopan-santun-pada-anak\" target=\"_blank\">sopan santun</a>, seperti mengucapkan terima kasih dan tolong.</p>\r\n\r\n<p>Perilaku mereka juga akan lebih mudah diarahkan oleh orang tua atau pengasuh. Anak-anak seusia ini akan lebih mudah dibujuk, misalnya untuk membantu orang tua atau pengasuh merapikan&nbsp;<a href=\"https://www.alodokter.com/memilih-mainan-anak-sesuai-usia\" target=\"_blank\">mainan</a>. Tapi orang tua jangan kaget bila anak memiliki perkembangan perilaku yang lebih impulsif, seperti suka memberantakkan mainan.</p>\r\n\r\n<p>Bentuk kenakalan lainnya dari anak adalah melempar, mendorong, dan memukul-mukul benda yang ada di dekatnya. Mereka juga dengan senang hati membuka lemari hanya untuk mengeluarkan semua benda di dalamnya untuk kemudian dijadikan mainan. Bahkan, membentur-benturkan benda-benda yang ada di dekatnya, seperti panci dan wajan, mungkin akan menjadi kebiasaannya yang baru. Pada masa ini, tumbuh kesenangan di dalam diri mereka saat mendengarkan suara.</p>\r\n\r\n<h3><strong>Perkembangan Anak secara Emosional</strong></h3>\r\n\r\n<p>Ketika menginjak usia 1 tahun, anak Anda tidak hanya lebih aktif untuk bergerak dari sebelumnya, tapi juga diikuti oleh perkembangan emosional yang semakin jelas terlihat. Berikut adalah perkembangan&nbsp;<a href=\"https://www.alodokter.com/kecerdasan-emosional-dan-pengaruhnya-terhadap-prestasi\" target=\"_blank\">emosional</a>&nbsp;pada diri anak usia 1 tahun:</p>\r\n\r\n<ul>\r\n	<li>Si Kecil akan&nbsp;<a href=\"https://www.alodokter.com/orang-tua-cerdas-harus-paham-alasan-bayi-menangis\" target=\"_blank\">menangis</a>&nbsp;saat ditinggal ayah atau ibu.</li>\r\n	<li>Merasa gugup atau malu saat bertemu orang yang baru dikenal atau dilihatnya.</li>\r\n	<li>Memiliki kedekatan pada orang-orang tertentu, misalnya ibu dan ayahnya.</li>\r\n	<li>Untuk mendapatkan perhatian dari orang-orang di sekitarnya, anak biasanya akan mengulang tindakan atau membuat suara tertentu.</li>\r\n	<li>Dalam menghadapi situasi tertentu, anak usia 1 tahun akan menunjukkan rasa takut.</li>\r\n	<li>Sudah pandai saat diajak bermain cilukba.</li>\r\n	<li>Anak mulai bersedia mengulurkan tangan atau kaki saat dipakaikan baju dan celana.</li>\r\n</ul>\r\n\r\n<p>Melihat perkembangan anak 1 tahun mungkin kadang menimbulkan&nbsp;<a href=\"https://www.alodokter.com/cara-positif-mengelola-rasa-frustasi-dan-emosi\" target=\"_blank\">rasa frustrasi</a>, mengingat tingkah mereka yang kini sering membuat rumah berantakan. Selain itu, orang tua juga jadi merasa khawatir saat pergi atau bekerja, karena anak usia 1 tahun mulai sering menangis saat ditinggal. Namun, tetaplah menikmati tahapan yang sedang dialami Si Kecil ini. Suatu hari nanti, momen ini akan terkenang dan Anda akan merindukannya sebagai saat-saat yang berharga.</p>\r\n', 'Hiburan'),
(16, 'yuk bunda, lakukan gerakan olahraga ini bersama bayi', '2018-12-19', 'dr. Allert Noya', '<p><strong>Bunda yang baru melahirkan, siapa bilang setelah punya bayi tidak bisa berolahraga? Jangan khawatir, Si Kecil tidak perlu dititipkan&nbsp;<em>kok.&nbsp;</em>Ajak olahraga bersama saja. Ada banyak gerakan olahraga yang bisa dilakukan di rumah atau&nbsp;</strong><strong>di&nbsp;</strong><strong>taman bersama bayi.</strong></p>\r\n\r\n<p>Berbagai hal yang harus dihadapi Bunda setiap hari, seperti sulit tidur, pekerjaan rumah menumpuk dan tangisan Si Kecil, mungkin membuat olahraga menjadi hal terakhir yang ingin Bunda lakukan. Tenang saja, olahraga tidak harus dilakukan dengan pergi keluar rumah atau bergabung di klub kebugaran kok, Bun!</p>\r\n\r\n<p><img alt=\"Yuk Bunda, Lakukan Gerakan Olahraga Ini Bersama Bayi - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1544562562/attached_image/yuk-bunda-lakukan-gerakan-olahraga-ini-bersama-bayi-alodokter.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<h3><strong>Bergerak Bersama Si Kecil</strong></h3>\r\n\r\n<p>Gerakan-gerakan sederhana di rumah bisa membantu mengencangkan otot, menurunkan berat badan, sekaligus membuat Bunda bisa bersenang-senang tanpa meninggalkan anak. Ini beberapa gerakan yang dapat dicoba:</p>\r\n\r\n<ul>\r\n	<li><strong><em>Squat&nbsp;</em></strong><strong>bersama bayi</strong></li>\r\n</ul>\r\n\r\n<p>Gendong Si Kecil dengan gendongan di depan tubuh. Berdiri dan buka kaki selebar bahu. Sambil tarik napas, turunkan badan seperti hendak duduk, hingga lutut menekuk 90 derajat. Masukkan perut, punggung lurus, pusatkan berat badan pada tumit. Buang napas sambil berdiri kembali ke posisi semula. Ulang dalam 3 sesi, masing-masing sebanyak 12 kali.</p>\r\n\r\n<ul>\r\n	<li><strong>Memindahkan bayi</strong></li>\r\n</ul>\r\n\r\n<p>Duduk dengan bayi di pangkuan, menghadap Bunda. Kemudian, tekuk lutut ke arah dada dan letakkan telapak kaki di lantai. Sedikit condongkan badan ke belakang sehingga tubuh membentuk menyerupai huruf V. Perlahan pindahkan bayi ke sisi kanan pinggang. Tahan beberapa saat, kemudian pindahkan ke sisi kiri badan.</p>\r\n\r\n<ul>\r\n	<li><strong>Mengangkat bayi</strong></li>\r\n</ul>\r\n\r\n<p>Ulang posisi di atas, tapi kali ini dengan menekuk dan mengangkat tungkai membentuk sudut 90 derajat. Perlahan angkat bayi dan biarkan ia duduk di lutut Bunda. Tahan hingga lima kali menarik napas dan dan mengembuskannya. Kemudian ulang 2 kali lagi setelah istirahat 30 detik.</p>\r\n\r\n<ul>\r\n	<li><strong>Berjalan dengan mendorong&nbsp;<em>stroller&nbsp;</em>bayi</strong></li>\r\n</ul>\r\n\r\n<p>Berjalan kaki di taman sambil mendorong&nbsp;<em>stroller</em>&nbsp;dengan Si Kecil di dalamnya termasuk olahraga juga&nbsp;<em>lho,&nbsp;</em>Bunda<em>.&nbsp;</em>Agar lebih membakar kalori, Bunda bisa berhenti tiap beberapa menit sekali. Kemudian setelah mengunci rem&nbsp;<em>stroller</em>, Bunda dapat melakukan beberapa gerakan, seperti&nbsp;<em>jumping jacks&nbsp;</em>atau lompat sambil membuka kaki selebar bahu dan tangan ke atas. Lakukan kurang lebih 30 detik. Lanjutkan berjalan sambil mendorong&nbsp;<em>stroller,&nbsp;</em>kemudian berhenti dan lakukan gerakan lain, misalnya&nbsp;<em>squats.</em></p>\r\n\r\n<ul>\r\n	<li><strong>Senam Kegel sambil memangku bayi</strong></li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.alodokter.com/manfaat-dan-cara-melakukan-senam-kegel\" target=\"_blank\">Senam Kegel</a>&nbsp;dapat dilakukan bahkan saat sedang memangku bayi<em>.&nbsp;</em>Sambil duduk, kencangkan otot panggul bawah. Gerakan ini dapat dilakukan dengan posisi seakan-akan Bunda ingin menghentikan aliran urine saat buang air kecil. Tahan 3 detik, kemudian kembali relaks 3 detik. Ulang hingga 10 kali, sebanyak 3 kali sehari.</p>\r\n\r\n<ul>\r\n	<li><strong>Tengkurap dengan bayi di hadapan Bunda</strong></li>\r\n</ul>\r\n\r\n<p>Berbaringlah tengkurap. Posisikan Si Kecil di hadapan Bunda. Lipat kedua tangan di depan, letakkan di bawah dagu. Angkat kaki dan tungkai bawah ke atas, hingga lutut membentuk sudut 90 derajat. Perlahan, angkat paha dari lantai, dengan lutut masih ditekuk. Tahan hingga 20 detik. Ulang 3-5 kali.</p>\r\n\r\n<p>Namun harus Bunda ingat, gerakan-gerakan tersebut dapat Bunda lakukan bersama Si Kecil apabila ia sudah dapat duduk dengan tegak ya, Bun.</p>\r\n\r\n<p>Selain berolahraga sendiri bersama Si Kecil, Bunda bisa juga mencoba olahraga bersama pasangan atau para ibu-ibu lain. Dengan begitu, Bunda bisa bergantian dengan pasangan atau teman untuk menjaga bayi. Jika bayi sudah cukup umur, berenang juga bisa menjadi olahraga yang menyenangkan untuk Bunda dan pengalaman baru untuk Si Kecil.</p>\r\n\r\n<p>Ada beragam manfaat olahraga bagi ibu yang baru melahirkan, termasuk membantu mengurangi risiko&nbsp;<a href=\"https://www.alodokter.com/mengenal-depresi-pasca-melahirkan\" target=\"_blank\">depresi setelah melahirkan</a>. Selain itu, ibu yang bugar dan kuat akan memiliki lebih banyak energi untuk mengasuh anak. Jadi, jangan tunda lagi untuk berolahraga bersama bayi agar tetap sehat ya, Bunda.</p>\r\n', 'Hiburan'),
(17, 'mengajari bayi berenang sejak usia dini adalah langkah yang tepat', '2018-12-19', 'dr. Marianti', '<p><strong>Mengajarkan bayi berenang sejak dini memiliki beberapa manfaat</strong><strong>,</strong>&nbsp;<strong>d</strong><strong>i antaranya&nbsp;</strong><strong>menikmati waktu&nbsp;</strong><strong>bersenang-senang sambil meningkatkan kedekatan antara bayi dan orang</strong>&nbsp;<strong>tua, serta membekali bayi dengan kemampuan yang sangat mungkin kelak dapat menyelamatkan diri sendiri&nbsp;</strong><strong>atau</strong>&nbsp;<strong>orang lain.</strong></p>\r\n\r\n<p>Pada dasarnya, bayi sudah bisa belajar berenang meski belum bisa merangkak atau berjalan sekalipun. Sifat alamiah ini mungkin disebabkan pada saat masih di dalam kandungan, bayi mengapung di dalam cairan ketuban.</p>\r\n\r\n<p><img alt=\"Mengajari Bayi Berenang sejak Usia Dini adalah Langkah yang Tepat - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1539233234/attached_image/mengajari-bayi-berenang-sejak-usia-dini-adalah-langkah-yang-tepat-alodokter.jpg\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p>Saat membawa bayi berenang, hendaknya Anda pastikan dulu tingkat&nbsp;<a href=\"https://www.alodokter.com/tips-memilih-kolam-renang-bayi-yang-aman\">keamanan kolam renang</a>yang digunakan dan sudah memahami&nbsp;<a href=\"https://www.alodokter.com/6-Tips-Aman-Berenang-Bersama-Bayi-Tercinta\">cara berenang yang aman bagi bayi</a>. Setelah dua hal tersebut telah terpenuhi, barulah Anda dapat memulai mengajari bayi berenang.</p>\r\n\r\n<p>Mengajari bayi berenang tentu saja membutuhkan trik khusus. Anda dapat mengajarinya dengan dasar penyesuaian usia bayi melalui tips-tips yang bisa bermanfaat seperti berikut ini.</p>\r\n\r\n<p><strong>Untuk bayi beru</strong><strong>sia 6</strong><strong>&nbsp;bulan</strong><strong>&nbsp;hingga 18 bulan</strong></p>\r\n\r\n<p>Mengajari bayi berenang bisa dilakukan sedini mungkin, namun waktu yang paling disarankan adalah ketika usianya sudah menginjak enam bulan. Sebagai awalan, coba percik-percikkan dulu air kolam renang ke tubuh bayi untuk membuatnya beradaptasi dengan air. Biarkan bayi mengeksplorasi air dan merasa nyaman berada di dalam air.</p>\r\n\r\n<p>Ajari bayi melakukan gerakan menendang dan menarik kaki sebagai gerakan-gerakan dasar. Selanjutnya, Anda dapat mengenalkan gerakan mulut meniup-niup gelembung udara. Kegiatan mengasyikkan lain untuk usia ini adalah membuatnya meluncur dan mengapungkannya di air dengan posisi telentang. Agar bayi makin menikmati bermain-main di air, ajaklah melakukan aktivitas gerakan meluncur ke beberapa arah yang berbeda-beda.</p>\r\n\r\n<p><strong>Untuk bayi beru</strong><strong>sia 18 bulan hingga 3 tahun</strong></p>\r\n\r\n<p>Pada usia ini, bayi sudah dapat diajarkan menendang dan gerakan-gerakan dasar berenang untuk lengan. Ketika usianya sudah mendekati tiga tahun, Anda dapat mengajarinya menahan napas, membiarkannya masuk dan keluar sendiri dari kolam renang khusus balita yang dangkal, serta melakukan permainan yang lebih variatif.</p>\r\n\r\n<p>Contoh permainan yang cocok dilakukan oleh bayi pada usia ini adalah bermain lempar tangkap bola dan berpura-pura menjadi kereta api dengan berjalan di dalam air di sepanjang tepi kolam. Permainan-permainan ini efektif dalam membantu bayi membuat gerakan-gerakan lengan sambil berusaha berenang. Ajak juga bayi berenang sambil bermain mengambil benda di dasar kolam agar dia berlatih menyelam.</p>\r\n\r\n<p><strong>U</strong><strong>ntuk bayi beru</strong><strong>sia 3</strong><strong>&nbsp;tahun</strong>&nbsp;<strong>hingga 5 tahun</strong></p>\r\n\r\n<p>Ketika bayi Anda sudah lebih besar atau sudah memasuki kisaran usia batita hingga balita, aktivitas yang dapat dilakukan dalam berlatih renang menjadi lebih bervariasi. Ajari dia menggerak-gerakkan kaki dan tangan untuk mendorong tubuhnya bergerak maju di dalam air. Ajari juga dia cara mengambang, baik mengambang di atas punggung maupun di atas perut.</p>\r\n\r\n<p>Pada usia ini, anak Anda sudah bisa diajari untuk berhati-hati di kolam renang. Beri pengertian bahwa berjalan di tepi kolam renang tanpa pengawasan orang dewasa adalah hal yang berbahaya.</p>\r\n\r\n<p>Saat ini sudah mulai ada yang membuka kelas pengajaran bayi berenang. Anda bisa mengajari bayi secara langsung maupun mendaftarkannya ke kelas belajar berenang. Satu hal lagi sebagai pengingat, meski sejak awal Anda sudah tidak sabar membawa bayi berenang, tetap ingat untuk hindari melakukannya saat usia bayi belum mencapai enam minggu. Pada usia tersebut, bayi masih rentan terhadap infeksi kuman atau virus yang ada di lingkungan, termasuk kolam renang.</p>\r\n', 'Hiburan'),
(18, 'jangan hanya membuat, ayah juga harus pandai merawat bayi', '2018-12-19', 'dr. Marianti', '<p><strong>Salah satu kunci kesuksesan bayi di masa depan adalah keterlibatan sang ayah selama masa pengasuhan anak. Hal ini bukanlah isapan jempol belaka sebab ratusan penelitian yang dilakukan selama empat dekade mengonfirmasi hal tesebut.</strong></p>\r\n\r\n<p>Para ayah yang terlibat dalam pengasuhan bayi sejak dini akan ikut menentukan kesuksesan di masa depan, kehidupan sosial, dan nilai akademik di sekolah. Bahkan sebuah tinjauan penelitian mengemukakan bahwa para bayi yang memiliki kedekatan lebih dengan ayahnya kemungkinan akan memiliki emosi lebih stabil, percaya diri dalam menghadapi situasi, dan lebih bersemangat mengeksplorasi lingkungan.</p>\r\n\r\n<p><a href=\"https://www.alodokter.com/wp-content/uploads/2016/01/jangan-hanya-membuat-ayah-juga-harus-pandai-merawat-bayi-alodokter.jpg\"><img alt=\"Jangan Hanya Membuat, Ayah Juga Harus Pandai Merawat Bayi - Alodokter\" src=\"https://res.cloudinary.com/dk0z4ums3/image/upload/v1470382564/attached_image/jangan-hanya-membuat-ayah-juga-harus-pandai-merawat-bayi-alodokter.jpg\" style=\"height:434px; width:650px\" /></a></p>\r\n\r\n<p>Melihat fakta di atas, maka sudah sepantasnya para ayah merevisi pandangan bahwa mengurus bayi hanya layak dilakukan oleh ibunya. Mulai sekarang, segeralah terlibat lebih dalam kehidupan buah hati Anda. Beberapa hal di bawah ini bisa diterapkan demi mewujudkan kedekatan ayah dengan bayi.</p>\r\n\r\n<p><strong>Bangunlah kedekatan sejak dini</strong></p>\r\n\r\n<p>Membangun ikatan awal dengan bayi cukup dilakukan sesaat setelah si Kecil lahir dengan cara menyentuhnya. Hal ini bermakna banyak sebab studi menunjukkan bahwa seorang ayah yang menghadiri kelahiran bayi dan menyentuhnya sesaat setelah dilahirkan dapat memiliki ikatan yang sangat mirip dengan bayi dan ibunya selama minggu-minggu pertama kelahiran bayi.</p>\r\n\r\n<p>Makin cepat ayah membangun kedekatan dengan bayi, maka efeknya akan makin baik untuk masa depan keduanya. Kedekatan yang terbangun akan membentuk rasa percaya bayi kepada ayahnya. Selanjutnya seiring pertambahan usia bayi, ayah bisa mempererat hubungan dengan aneka permainan fisik, seperti menggendong di punggung atau mengangkat bayi.</p>\r\n\r\n<p><strong>Malam hari milik ayah</strong></p>\r\n\r\n<p>Bekerja di siang hari bukanlah alasan tidak memiliki kedekatan dengan bayi. Malam hari adalah waktu yang tepat membuat bayi menjadi makin dekat dengan ayah. Selain memberi kesempatan pada sang istri untuk beristirahat, peran sebagai pengasuh di malam hari akan memberikan waktu berharga bagi ayah dan bayinya. Caranya mudah saja, cukup dengan membuatkan susu saat bayi menangis.</p>\r\n\r\n<p><strong>Jadilah ayah yang pandai mengganti popok</strong></p>\r\n\r\n<p>Mengganti popok sudah lama dianggap sebagai monopoli kaum ibu, padahal melakukan hal ini akan membantu kedekatan antara ayah dan bayi. Saat mengganti popok, ayah bisa melakukan komunikasi verbal dengan bayinya. Bisa juga ayah berbicara dengan suara-suara khas hingga si Kecil bisa tersenyum atau tertawa. Kegiatan semacam ini, selain dapat membantu memperkuat ikatan ayah dan anak, dapat juga menghindarkan fokus ayah dari bau tidak sedap popok bayi.</p>\r\n\r\n<p><strong>Pandai menghilangkan tangis anak</strong></p>\r\n\r\n<p>Para ayah yang ikut serta dalam pengasuhan bayi mungkin akan cepat frustrasi mendapati bayi yang terus menangis. Bahkan, tidak sedikit yang langsung menyerahkan kepada sang ibu demi menghilangkan tangisan mereka. Padahal, beberapa cara bisa dilakukan ayah untuk mendiamkan bayi.</p>\r\n\r\n<p>Bernyanyi, mengajak bayi berjalan-jalan, menggoyangkan bayi, hingga memberikan dot bayi adalah beberapa cara yang bisa dilakukan. Hal ini selain mempererat ikatan ayah dan bayi juga membuat para ayah belajar bahwa mereka juga bisa memberikan yang bayi butuhkan. Tentu saja hal ini berlaku jika si Kecil menangis bukan karena lapar.</p>\r\n\r\n<p><strong>Jangan ragu cuti saat bayi sakit</strong></p>\r\n\r\n<p>Menjadi ayah siaga bukan saja berlaku saat istri hendak melahirkan. Hal tersebut bisa juga disikapi ketika bayi sakit. Ikut memeriksakan bayi yang sakit ke rumah sakit penting dilakukan oleh para ayah. Hal ini sekaligus menjadi ajang bagi ayah untuk mendengar dari dokter tentang perkembangan dan pertumbuhan sang buah hati. Tentu saja hal tersebut juga akan kian mempertebal ikatan antara ayah dan anak.</p>\r\n\r\n<p>Meski keterlibatan ayah dalam pengasuhan dan perawatan bayi seperti hal-hal di atas terlihat sepele, namun dampaknya bisa signifikan bagi bayi di masa depan. Studi menunjukkan bahwa kenakalan remaja pada anak yang memiliki hubungan yang baik dengan ayah dan ibu mereka lebih sedikit dibandingkan dengan remaja yang hanya memiliki hubungan baik dengan ibu mereka. Artinya, kehadiran ayah memberi perbedaan besar dalam kehidupan bayi.</p>\r\n', 'Hiburan'),
(19, 'aa', '2019-11-01', 'aa', '<p>aa</p>\r\n', 'Hiburan'),
(20, 'aa', '2019-11-01', 'aa', '<p>aa</p>\r\n', 'Hiburan'),
(21, 'aa', '2019-11-01', 'aa', '<p>aa</p>\r\n', 'Hiburan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comodity`
--

CREATE TABLE `comodity` (
  `id` int(5) NOT NULL,
  `month` varchar(20) NOT NULL,
  `sugar` int(11) NOT NULL,
  `rice` int(11) NOT NULL,
  `wheat_flour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik`
--

CREATE TABLE `grafik` (
  `id_grafik` int(11) NOT NULL,
  `nama_anak` varchar(30) DEFAULT NULL,
  `tinggi` decimal(11,0) DEFAULT NULL,
  `berat` decimal(11,0) DEFAULT NULL,
  `bulan` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','15','16','17','18','19','20','21','24') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `grafik`
--

INSERT INTO `grafik` (`id_grafik`, `nama_anak`, `tinggi`, `berat`, `bulan`) VALUES
(19, 'nduty', '23', '1', '0'),
(20, 'nduty', '54', '1', '1'),
(21, 'nduty', '55', '22', '2'),
(22, 'nduty', '25', '56', '3'),
(23, 'nduty', '26', '44', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_ppi`
--

CREATE TABLE `jadwal_ppi` (
  `id_ppi` int(3) NOT NULL,
  `bulan` varchar(30) DEFAULT NULL,
  `nama_ppi` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_ppi`
--

INSERT INTO `jadwal_ppi` (`id_ppi`, `bulan`, `nama_ppi`, `deskripsi`) VALUES
(1, '0 bulan', '-Hepatitis B-0', ' vaksin yang mencegah hepatitis B. Dosis pertama dianjurkan dalam 24 jam kelahiran dengan dua atau tiga dosis lagi diberikan setelahnya. Vaksin ini juga diberikan kepada mereka yang memiliki fungsi kekebalan tubuh buruk seperti HIV/AIDS dan mereka ya'),
(2, '0 bulan', 'OPV-1', 'vaksin trivalen yang berupa cairan berwarna kuning yang dikemas dengan vial gelas.'),
(3, '1 bulan', 'BCG', 'vaksin untuk tuberkulosis yang dibuat dari baksil tuberkulosis (Mycobacterium bovis) yang dilemahkan dengan dikulturkan di medium buatan selama bertahun-tahun. Vaksin BCG 80% efektif dapat mencegah selama 15 tahun'),
(4, '2 bulan', 'DPT 1-Hepatitis B 1-Hib 1', 'Penyakit difteri, pertusis, dan tetanus adalah tiga penyakit berbeda yang masing-masing memiliki risiko tinggi dan bahkan bisa menyebabkan kematian. Ketiga penyakit ini adalah penyakit serius yang disebabkan oleh bakteri. Oleh karena itu, pemberian i'),
(5, '2 bulan', 'OPV-2', 'vaksin trivalen yang berupa cairan berwarna kuning yang dikemas dengan vial gelas.'),
(6, '3 bulan', 'DPT 2-Hepatitis B 2-Hib 2', 'Penyakit difteri, pertusis, dan tetanus adalah tiga penyakit berbeda yang masing-masing memiliki risiko tinggi dan bahkan bisa menyebabkan kematian. Ketiga penyakit ini adalah penyakit serius yang disebabkan oleh bakteri. Oleh karena itu, pemberian i'),
(7, '3 bulan', 'OPV-3', 'vaksin trivalen yang berupa cairan berwarna kuning yang dikemas dengan vial gelas.'),
(8, '4 bulan', 'DPT 3-Hepatitis B 3-Hib 3', 'Penyakit difteri, pertusis, dan tetanus adalah tiga penyakit berbeda yang masing-masing memiliki risiko tinggi dan bahkan bisa menyebabkan kematian. Ketiga penyakit ini adalah penyakit serius yang disebabkan oleh bakteri. Oleh karena itu, pemberian i'),
(9, '4 bulan', 'OPV-4', 'vaksin trivalen yang berupa cairan berwarna kuning yang dikemas dengan vial gelas.'),
(10, '4 bulan', 'IPV', 'vaksin polio yang diberikan secara suntikan. Vaksin ini berbeda dari OPV (oral polio vaccine) yang berisi virus hidup yang dilemahkan, IPV berisi virus yang sudah tidak aktif lagi sehingga aman untuk diberikan pada anak yang memiliki gangguan sistem '),
(11, '9 bulan', 'Campak 1', ' vaksin yang sangat efektif untuk mencegah penyakit campak[1] Setelah menerima satu dosis, 85% anak usia sembilan bulan dan 95% anak usia di atas dua belas bulan akan menjadi imun'),
(12, '18 bulan', 'Campak 2', ' vaksin yang sangat efektif untuk mencegah penyakit campak[1] Setelah menerima satu dosis, 85% anak usia sembilan bulan dan 95% anak usia di atas dua belas bulan akan menjadi imun'),
(13, '18 bulan', 'OPV', 'vaksin trivalen yang berupa cairan berwarna kuning yang dikemas dengan vial gelas.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_vaksin`
--

CREATE TABLE `jadwal_vaksin` (
  `id_vaksin` int(3) NOT NULL,
  `bulan` enum('0 bulan','1 bulan','2 bulan','3 bulan','4 bulan','5 bulan','6 bulan','7 bulan','8 bulan','9 bulan','10 bulan','11 bulan','12 bulan','13 bulan','14 bulan','15 bulan','16 bulan','17 bulan','18 bulan','19 bulan','20 bulan','21 bulan','22 bulan','23 bulan','24 bulan') DEFAULT NULL,
  `nama_vaksin` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_vaksin`
--

INSERT INTO `jadwal_vaksin` (`id_vaksin`, `bulan`, `nama_vaksin`, `deskripsi`) VALUES
(1, '0 bulan', 'Hepatitis B-1, OPV-0', 'Vaksinasasi Hepatitis: Menangkal infeksi organ hati\r\nVaksinasasi OPV(Oral Polio Vaccin): Mencegah kelumpuhan permanen'),
(3, '1 bulan', 'BCG', 'Menyegah penyakit Tuberkulosis (TBC)'),
(4, '2 bulan', 'Hepatitis-2, OPV-1, DPT-1, HiB-1, PCV-1, Rotavirus', 'Hepatitis: Menangkal infeksi organ hati\r\nOPV: Menghindari kelumpuhan permanen\r\nDPT: Mencegah penyakit Difteri, Pertutis dan Tetanus\r\nHiB(Haemophilus influenzae type b): Mencegah infeksi penyakit Hib\r\nPCV: Mencegah pneumonia, septikemia (sejenis kerac'),
(10, '3 bulan', 'Hepatitis-3, OPV-2, DPT-2, HIB-2', 'Hepatitis: Menangkal infeksi organ hati\r\nOPV: Menghindari kelumpuhan permanen\r\nDPT: Mencegah penyakit Difteri, Pertutis dan Tetanus\r\nHiB(Haemophilus influenzae type b): Mencegah infeksi penyakit Hib\r\n'),
(33, '4 bulan', 'Hepatitis-4, OPV-3, IPV, DPT-3, HIB-3, PCV-2, Rota', 'Hepatitis: Menangkal infeksi organ hati\r\nOPV(oral polio vaccine): Menghindari kelumpuhan permanen\r\nIPV(inactivated polio vaccine): Mencegah virus disaluran pencernaan dan tenggorokan\r\nDPT: Mencegah penyakit Difteri, Pertutis dan Tetanus\r\nHiB(Haemophi'),
(34, '6 bulan', 'PCV-3, Rotavius-3, Influenza', 'PCV: Mencegah pneumonia, septikemia (sejenis keracunan darah), dan meningitis\r\nRotavirus: Mencegah penyakit gastroenteritis (radang pada lambung dan usus)\r\nInfluenza: Mencegah infeksi virus akut dan menular saluran pernapasan'),
(35, '9 bulan', 'Campak-1', 'Campak: Mencegah campak, gondongan, dan juga rubella'),
(36, '12 bulan', 'PCV-4, Varisela, Japanesse Ensefalitis', 'PCV: Mencegah pneumonia, septikemia (sejenis keracunan darah), dan meningitis\r\nVaricella: Mencegah cacar air\r\nJapanese encephalitis: Mencegah infeksioleh nyamuk Culex tritaeniorhynchus'),
(37, '18 bulan', 'Campak-2, OPV-4, DPT-4, HIB-4', 'Campak: Mencegah campak, gondongan, dan juga rubella\r\nOPV(oral polio vaccine): Menghindari kelumpuhan permanen\r\nDPT: Mencegah penyakit Difteri, Pertutis dan Tetanus\r\nHiB(Haemophilus influenzae type b): Mencegah infeksi penyakit Hib'),
(38, '24 bulan', 'Japanesse Ensefalitis-2, Tifoid-1, Hepatitis A-1', 'Japanese encephalitis: Mencegah infeksioleh nyamuk Culex tritaeniorhynchus\r\nTifoid: Mencegah demam tifoid\r\nHepatitis: Menangkal infeksi organ hati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `telpon`, `pesan`, `tanggal`) VALUES
(4, 'aaaa', 'qiiqhw', '090909', 'iknjjind', '2018-12-18'),
(5, 'a', 'a', 'a', 'a', '2019-11-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpsp`
--

CREATE TABLE `kpsp` (
  `id_kpsp` int(4) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `gerak` varchar(30) DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kpsp`
--

INSERT INTO `kpsp` (`id_kpsp`, `umur`, `gerak`, `isi`) VALUES
(8, '3-6', 'bicara dan bahasa', 'anak melek'),
(11, '12-18', 'gerak halus', 'Lengan dan tungkai bergerak dengan mudah'),
(12, '0-3', 'sosialisasi dan kemandirian', 'Bayi dapat mengeluarkan suara-suara lain (mengoceh) di samping menangis'),
(15, '0-3', 'gerak kasar', 'mengangkat kepala tinggi 45'),
(16, '0-3', 'gerak kasar', 'menggerakan kepala dari kiri/kanan ke tengah'),
(17, '0-3', 'gerak halus', 'melihat dan menatap wajah anda'),
(18, '0-3', 'gerak halus', 'merespon dengan senyum'),
(19, '0-3', 'bicara dan bahasa', 'merespon dengan suara dan tersenyum'),
(20, '0-3', 'sosialisasi dan kemandirian', 'mengenal orang terdekat melalui penglihatan, penciuman, dan pendengaran, kontak'),
(21, '3-6', 'gerak kasar', 'berbalik dari telentang ke telungkup dan sebaliknya'),
(22, '3-6', 'gerak kasar', 'mengangkat kepala setinggi 90'),
(23, '3-6', 'gerak kasar', 'mempertahankan posisi kepala tetap tegak dan stabil'),
(24, '3-6', 'gerak halus', 'menggenggam jari orang lain'),
(25, '3-6', 'gerak halus', 'meraih benda yang ada dalam jangkauan'),
(26, '3-6', 'deteksi keterlambatan', 'memegang tangannya sendiri'),
(27, '3-6', 'gerak halus', 'menengok ke kanan dan kiri serta ke atas dan bawah'),
(28, '3-6', 'gerak halus', 'berusaha memperluas pandangannya, mengarahkan matanya pada benda-benda kecil'),
(29, '3-6', 'bicara dan bahasa', 'mengeluarkan suara gembira bernada tinggi atau memekik'),
(30, '3-6', 'sosialisasi dan kemandirian', 'tersenyum ketika melihat mainan/gambar yang menarik saat bermain sendiri'),
(31, '6-9', 'gerak kasar', 'duduk sendiri dengan kedua tangan menyangga tubuhnya'),
(32, '6-9', 'gerak kasar', 'belajar berdiri, kedua kakinya menyanggah sebagian berat badan'),
(33, '6-9', 'gerak kasar', 'merangkak , meraih mainan atau mendekati  seseorang'),
(34, '6-9', 'gerak halus', 'memindahkan dari satu tangan ke tangan lainnya'),
(35, '6-9', 'gerak halus', 'memungut dua benda masing-masing tangan pegang satu benda pada saat bersamaan, memungut benda sebesar kacang dengan cara meraup'),
(36, '6-9', 'bicara dan bahasa', 'bersuara tanpa arti, mamama, bababa, dadada, tatata'),
(37, '6-9', 'sosialisasi dan kemandirian', 'mencari mainan/benda yang dijatuhkan, bermain tepuk tangan/ciluk ba, makan kue sendiri'),
(38, '9-12', 'gerak kasar', 'mengangkat badannya pada posisi berdiri, belajar berdiri selama 30 detik atau berpegangan pada kursi/meja, dapat berjalan dengan dituntun'),
(39, '9-12', 'gerak halus', 'memasukan benda ke mulut, menggengam erat pensil'),
(40, '9-12', 'bicara dan bahasa', 'mengulang/menirukan bunyi yang didengar, menyebut 2-3 suku kata yang sama tanpa arti, bereaksi terhadap suara perlahan atau bisikan'),
(41, '9-12', 'sosialisasi dan kemandirian', 'mengulurkan lengan/badan untuk meraih mainan yang diinginkan, senang diajak main ciluk ba, Mengenal anggota keluarga, takut pada orang yang belum dikenal, Mengeksporasi sekitar, ingin tahu,ingin menyentuh siapa saja'),
(42, '12-18', 'gerak halus', 'berdiri sendiri tanpa pegangan, berjalan mundur 5 langkah, Membungkuk memungut mainan kemudian berdiri kembali'),
(43, '12-18', 'gerak halus', 'menumpuk 2 kubus'),
(44, '12-18', 'bicara dan bahasa', 'memanggil ayah dengan kata \'\'papa\'\' memanggil ibu dengan kata \'\'mama\'\''),
(45, '12-18', 'sosialisasi dan kemandirian', 'menunjuk apa yang diinginkan tanpa menagis/merengek, anak bisa mengeluarkan suara yang menyenangkan atau menarik tangan ibu, Memperlihatkan rasa cemburu/bersaing'),
(46, '18-24', 'gerak kasar', 'berdiri sendiri tanpa pegangan 30 detik'),
(47, '18-24', 'gerak halus', 'menumpuk 4 buah kubus, memungut benda kecil dengan ibu jari dan jari telunjuk, menggelinding bola kearah sasaran'),
(48, '18-24', 'bicara dan bahasa', 'menyebut 3-6 kata yang mempunyai arti'),
(49, '18-24', 'sosialisasi dan kemandirian', 'memegang cangkir sendiri, belajar makan-minum, bertepuk tangan, melambai-lambai, Membantu/menirukan pekerjaan rumah tangga, Mengetahui jenis kelamin diri sendiri permpuan aau laki-laki'),
(50, '24-36', 'gerak halus', 'naik tangga sendir, dapat bermain dan menendang bola kecil'),
(51, '24-36', 'gerak halus', 'mencoret-coret pensil kertas'),
(52, '24-36', 'bicara dan bahasa', 'bicara dengan baik, menggunakan 2 kata. Dapat menunjuk 1 atau lebih bagian tubuhnya ketika diminta. Melihat gambar dan menyebut benar nama  2 benda atau lebih. Membantu memungut mainan dan piringnya sendiri'),
(53, '24-36', 'sosialisasi dan kemandirian', 'makan sendiri tanpa banyak tumpah, Melepas pakaian sendiri'),
(54, '36-48', 'gerak kasar', 'berdiri 1 kaki 2 detik, Melompat kedua kaki diangkat, Mengayuh speda roda tiga'),
(55, '36-48', 'gerak halus', 'menggambar garis lurus'),
(56, '36-48', 'bicara dan bahasa', 'menyebut nama, umur, tempat. Mengenal 2-4 warna. Mengerti arti kata di atas, bawah, depan. Mendengarkan cerita'),
(57, '36-48', 'sosialisasi dan kemandirian', 'mencuci dan mengeringkan tangan sendiri. Bermain bersama teman, mengikuti aturan permainan. Mengenakan sepatu sendiri. Mengethaui anggota tubuh yang tidak boleh disentuh /pegang orang lain kecuali orangtua/dokter'),
(58, '48-60', 'gerak kasar', 'berdiri 1 kaki 6 detik, Melompat-lompat 1 kaki'),
(59, '48-60', 'gerak halus', 'menari, Menggambar tanda silang, lingkaran, orang dengan bagian tubuh, menganjing baju/pakaian boneka'),
(60, '48-60', 'bicara dan bahasa', 'menyebut nama lengkap tanpa bantuan, senang menyebut kata-kata baru, senang bertanya sesuatu, menjawab pertanyaan dengan kata-kata benar, bicara mudah dimengerti, dapat membedekan ukuran benda, menyebut angka, menghitung hari, menyebut nama-nama hari'),
(61, '48-60', 'sosialisasi dan kemandirian', 'berpakaian sendiri tanpa dibantu, Bereaksi tenang dan tidak rewel ketika ditinggal ibu'),
(62, '60-72', 'gerak kasar', 'berjalan lurus, berdiri dengan 1 kaki selama 11 detik'),
(63, '60-72', 'gerak halus', 'menggambar dengan 6 bagian tubuh, menggambar orang lengkap'),
(64, '60-72', 'bicara dan bahasa', 'mengerti lawan kata, mengenal warna-warni, Mengerti pembicaraan menggunakan 7 kata/lebih, mengenal angka, bisa menghitung 5-10'),
(65, '60-72', 'sosialisasi dan kemandirian', 'mengungkapkan simpati, Mengikuti aturan permainan, Berpakaian sendiri tanpa dibantu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(3) NOT NULL,
  `makan_pagi` varchar(75) DEFAULT NULL,
  `makan_siang` varchar(75) DEFAULT NULL,
  `makan_sore` varchar(75) DEFAULT NULL,
  `makanan_pendamping` varchar(75) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kelompok_umur` enum('0-6','6-12','Diatas 1 tahun') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `makan_pagi`, `makan_siang`, `makan_sore`, `makanan_pendamping`, `deskripsi`, `kelompok_umur`) VALUES
(3, 'ASI Exclusive', 'ASI Exclusive', 'ASI Exclusive', '-', 'Pemberian ASI Exlusive pada bayi baru lahir sampai balita berusia 6 bulan', '0-6'),
(4, 'ASI Exclusive', 'ASI Exclusive', 'ASI Exclusive', '-', 'Pemberian ASI Exlusive pada bayi baru lahir sampai balita berusia 6 bulan', '0-6'),
(5, 'ASI Exclusive', 'ASI Exclusive', 'ASI Exclusive', 'Avocad', 'Ubah tekstur buah avocad menjadi lebih halus', '6-12'),
(6, 'Bubur 1 sdm', 'ASI Exclusive', 'ASI Exclusive', '1 sdt Apel', 'jangan berikan camilan 1 jam sebelum makan. Olah textur buah Apel menjadi lebih halus.', '6-12'),
(7, 'ASI Exclusive', '1 sdm Kentang', 'ASI Exclusive', '1 bilah Jeruk', 'Berikan kentang sebagai ganti karbohidrat. Perkenalkan rasa buah-buahan sedikit demi sedikit kepada balita.', '6-12'),
(8, 'ASI Exclusive', 'Dada ayam', 'ASI', '1-2 butir Anggur', 'Dada ayam bisa Moms sajikan dengan sedikit Bubur beras. Masak secara terpisah agar nutrisi terjaga. Jangan berikan camilan 1 jam sebelum makan.', '6-12'),
(9, 'Sereal', 'ASI', '1/2 mangkuk sup', 'Mangga', 'Jangan berikan camilan 1 jam sebelum makan kepada balita agar tidak mengurangi nafsu makan', 'Diatas 1 tahun'),
(10, 'Tumis kangkung', 'ASI', 'Eotmeal', 'Melon', 'Jangan berikan camilan 1 jam sebelum makan. Hindari penggunaan micin berlebih.', 'Diatas 1 tahun'),
(11, 'ASI', 'Oseng-oseng udang', '1 mangkuk Bayam', 'Semangka', 'Variasi menu makan si kecil, agar moms mengetahui kesukaan anak.', 'Diatas 1 tahun'),
(12, 'Salmon saus', 'Susu Formula, Bubur tahu', 'Telor dada', 'Manggis', 'Variasi menu makanan agar menambah nafsu makan anak. Hindari cemilan 1 jam sebelum makan agar anak tidak terlalu kenyang.', 'Diatas 1 tahun'),
(13, 'Sawi putih, Wortel', 'ASI, telur dadar', 'Makaroni', 'Pepaya', 'Tambahkan Susu formula di menu makan pagi/siang untuk memenuhi kebutuhan nutrisi harian', 'Diatas 1 tahun'),
(14, 'Telur ceplok, Susu', 'Buncis dan Paha ayam', 'Dadar jagung', 'Pepaya', 'Pemberian ASI Exclusive bisa terus Ibu berikan dengan tambahan Susu formula, untuk memenuhi nutrisi harian', 'Diatas 1 tahun'),
(15, 'ASI Exclusive', 'Sereal dan Susu segar', 'Bubur ayam', 'Kiwi, Marie biskuit', 'Perkenalkan berbagai jenis rasa dari buah-buahan untuk variasi camilan', '6-12'),
(16, 'Telur rebus, Bubur', 'ASI Exclusive', 'Bubur beras merah', 'Marie biskuit, Anggur', 'Tambahkan protein nabati, sebagai pendukung pemberian ASI', '6-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `sandi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `no_hp`, `email`, `alamat`, `sandi`) VALUES
(9, 'alifia', '085674738121', 'alifia@gmail.com', 'jember', '12345'),
(18, 'nava', '087625353532', 'nava@gmail.com', 'banyuwangi', '12345'),
(19, 'nadia', '087621535626', 'nadia@gmail.com', 'banyuwangi', 'nadia123'),
(20, 'mareta', '081762536276', 'mareta@gmail.com', 'jember', 'mareta000'),
(21, 'anisa', '089876567465', 'anisa@gmail.com', 'jember', 'anisaca'),
(22, 'risma', '081665243654', 'risma@gmail.com', 'jember', 'akurisma'),
(23, 'sarah', '098766265515', 'ajip2116@gmail.com', 'bws', '123'),
(24, 'asasas', 'saaad', 'asasas', 'asas', '12345'),
(25, 'mega', '12121212', 'alifia@gmail.com', 'asas', '12345'),
(26, 'museh', '098877', 'arrumzakiyah@gmail.com', 'SsSas', '123'),
(27, 'jbh', '98886', 'arrumzakiyah@gmail.com', 'SsSas', '123'),
(28, 'dfr', 'ddfgg', 'dd', 'dd', '123'),
(29, 'slasklaskl', '1201902', 'laslasj', 'sakskl', '111');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `comodity`
--
ALTER TABLE `comodity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id_grafik`);

--
-- Indeks untuk tabel `jadwal_ppi`
--
ALTER TABLE `jadwal_ppi`
  ADD PRIMARY KEY (`id_ppi`);

--
-- Indeks untuk tabel `jadwal_vaksin`
--
ALTER TABLE `jadwal_vaksin`
  ADD PRIMARY KEY (`id_vaksin`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `kpsp`
--
ALTER TABLE `kpsp`
  ADD PRIMARY KEY (`id_kpsp`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anak`
--
ALTER TABLE `anak`
  MODIFY `id_anak` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `comodity`
--
ALTER TABLE `comodity`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id_grafik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `jadwal_ppi`
--
ALTER TABLE `jadwal_ppi`
  MODIFY `id_ppi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jadwal_vaksin`
--
ALTER TABLE `jadwal_vaksin`
  MODIFY `id_vaksin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kpsp`
--
ALTER TABLE `kpsp`
  MODIFY `id_kpsp` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
