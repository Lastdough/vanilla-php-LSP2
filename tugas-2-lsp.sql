-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2023 pada 11.25
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-2-lsp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `nama`, `admin_id`, `password`) VALUES
('admin', 'Admin User', 0, '$2y$10$F.1GhddF/.6Rv5CXGnGVceHlTMfSB0hhxIXiRvyimyWqoK62/9fI2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `article` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `description`, `article`, `picture`, `status`, `created_at`, `updated_at`, `author`) VALUES
(2, 'Article Loren', 'deskripsi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum sem sit amet nisi egestas, at interdum sapien elementum. Pellentesque cursus blandit nibh, sed aliquet justo consectetur ut. Nullam quis finibus neque. Curabitur facilisis est sit amet tortor sollicitudin malesuada. Aliquam suscipit pretium nisl, ac tempus velit gravida eget. Nulla facilisi. Maecenas lacinia nec lorem eu iaculis. Pellentesque gravida pharetra nibh, vitae imperdiet elit rhoncus vitae.\r\n\r\nProin dignissim nulla at vestibulum vestibulum. Vivamus iaculis mi quis viverra viverra. Donec eleifend odio a posuere mattis. Aliquam malesuada, diam gravida laoreet feugiat, lectus neque sagittis lacus, ornare egestas tortor nisi ac felis. Quisque auctor metus a scelerisque commodo. Phasellus nec varius lectus. Donec iaculis ornare orci. Donec accumsan turpis eget fermentum cursus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut pretium, justo id hendrerit malesuada, mi eros gravida urna, nec scelerisque erat ipsum sed dolor.\r\n\r\nDonec tincidunt porta pharetra. Sed luctus porttitor dolor. Morbi a ligula quam. Sed ligula urna, congue vitae tincidunt sollicitudin, tincidunt at arcu. Suspendisse vitae ante ipsum. Morbi non quam nec nulla volutpat vehicula vel vel leo. Ut vestibulum aliquam massa, ut vulputate diam commodo sit amet. Nunc ac pellentesque massa.\r\n\r\nQuisque nec velit finibus, lobortis lacus et, mollis metus. Sed mollis malesuada egestas. Nullam velit sem, consectetur ut est vitae, euismod aliquet sem. Duis cursus accumsan ligula. In condimentum mollis quam, sed varius sapien tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pretium lacus, sit amet tristique dolor. Aenean feugiat sollicitudin nulla, et ullamcorper eros. Ut cursus ipsum id libero accumsan, id facilisis dui malesuada. Maecenas ut laoreet ipsum. Integer aliquet orci ac enim porta convallis. Donec in mi nibh. Aenean nec arcu id augue malesuada aliquam ut a elit. Morbi viverra malesuada magna vel venenatis. Mauris non urna rutrum, aliquet erat vel, molestie odio. Mauris congue ipsum sit amet nibh auctor, id convallis enim commodo.\r\n\r\nNam vitae odio id libero dictum pellentesque sit amet volutpat nisl. Duis sed metus sit amet nibh elementum aliquet. Nunc dictum leo nec justo hendrerit malesuada. Fusce eleifend, eros at venenatis pretium, ligula massa sodales justo, ac tempor nulla mauris sit amet lorem. Sed neque nisi, fermentum vitae eleifend quis, iaculis ac ante. Suspendisse diam libero, iaculis et lorem vitae, fermentum convallis leo. Curabitur dolor eros, consectetur eu pulvinar ut, scelerisque vitae lorem. Donec feugiat commodo tellus. Proin congue magna id posuere iaculis. Sed pharetra dapibus rutrum. Donec dictum venenatis ultricies. Etiam in lectus vel magna maximus sodales eget sodales risus.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png', 1, '2023-12-28', '2023-12-28', 'saya'),
(4, 'Article 2', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum sem sit amet nisi egestas, at interdum sapien elementum. Pellentesque cursus blandit nibh, sed aliquet justo consectetur ut. Nullam quis finibus neque. Curabitur facilisis est sit amet tortor sollicitudin malesuada. Aliquam suscipit pretium nisl, ac tempus velit gravida eget. Nulla facilisi. Maecenas lacinia nec lorem eu iaculis. Pellentesque gravida pharetra nibh, vitae imperdiet elit rhoncus vitae.\r\n\r\nProin dignissim nulla at vestibulum vestibulum. Vivamus iaculis mi quis viverra viverra. Donec eleifend odio a posuere mattis. Aliquam malesuada, diam gravida laoreet feugiat, lectus neque sagittis lacus, ornare egestas tortor nisi ac felis. Quisque auctor metus a scelerisque commodo. Phasellus nec varius lectus. Donec iaculis ornare orci. Donec accumsan turpis eget fermentum cursus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut pretium, justo id hendrerit malesuada, mi eros gravida urna, nec scelerisque erat ipsum sed dolor.\r\n\r\nDonec tincidunt porta pharetra. Sed luctus porttitor dolor. Morbi a ligula quam. Sed ligula urna, congue vitae tincidunt sollicitudin, tincidunt at arcu. Suspendisse vitae ante ipsum. Morbi non quam nec nulla volutpat vehicula vel vel leo. Ut vestibulum aliquam massa, ut vulputate diam commodo sit amet. Nunc ac pellentesque massa.\r\n\r\nQuisque nec velit finibus, lobortis lacus et, mollis metus. Sed mollis malesuada egestas. Nullam velit sem, consectetur ut est vitae, euismod aliquet sem. Duis cursus accumsan ligula. In condimentum mollis quam, sed varius sapien tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pretium lacus, sit amet tristique dolor. Aenean feugiat sollicitudin nulla, et ullamcorper eros. Ut cursus ipsum id libero accumsan, id facilisis dui malesuada. Maecenas ut laoreet ipsum. Integer aliquet orci ac enim porta convallis. Donec in mi nibh. Aenean nec arcu id augue malesuada aliquam ut a elit. Morbi viverra malesuada magna vel venenatis. Mauris non urna rutrum, aliquet erat vel, molestie odio. Mauris congue ipsum sit amet nibh auctor, id convallis enim commodo.\r\n\r\nNam vitae odio id libero dictum pellentesque sit amet volutpat nisl. Duis sed metus sit amet nibh elementum aliquet. Nunc dictum leo nec justo hendrerit malesuada. Fusce eleifend, eros at venenatis pretium, ligula massa sodales justo, ac tempor nulla mauris sit amet lorem. Sed neque nisi, fermentum vitae eleifend quis, iaculis ac ante. Suspendisse diam libero, iaculis et lorem vitae, fermentum convallis leo. Curabitur dolor eros, consectetur eu pulvinar ut, scelerisque vitae lorem. Donec feugiat commodo tellus. Proin congue magna id posuere iaculis. Sed pharetra dapibus rutrum. Donec dictum venenatis ultricies. Etiam in lectus vel magna maximus sodales eget sodales risus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum sem sit amet nisi egestas, at interdum sapien elementum. Pellentesque cursus blandit nibh, sed aliquet justo consectetur ut. Nullam quis finibus neque. Curabitur facilisis est sit amet tortor sollicitudin malesuada. Aliquam suscipit pretium nisl, ac tempus velit gravida eget. Nulla facilisi. Maecenas lacinia nec lorem eu iaculis. Pellentesque gravida pharetra nibh, vitae imperdiet elit rhoncus vitae.\r\n\r\nProin dignissim nulla at vestibulum vestibulum. Vivamus iaculis mi quis viverra viverra. Donec eleifend odio a posuere mattis. Aliquam malesuada, diam gravida laoreet feugiat, lectus neque sagittis lacus, ornare egestas tortor nisi ac felis. Quisque auctor metus a scelerisque commodo. Phasellus nec varius lectus. Donec iaculis ornare orci. Donec accumsan turpis eget fermentum cursus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut pretium, justo id hendrerit malesuada, mi eros gravida urna, nec scelerisque erat ipsum sed dolor.\r\n\r\nDonec tincidunt porta pharetra. Sed luctus porttitor dolor. Morbi a ligula quam. Sed ligula urna, congue vitae tincidunt sollicitudin, tincidunt at arcu. Suspendisse vitae ante ipsum. Morbi non quam nec nulla volutpat vehicula vel vel leo. Ut vestibulum aliquam massa, ut vulputate diam commodo sit amet. Nunc ac pellentesque massa.\r\n\r\nQuisque nec velit finibus, lobortis lacus et, mollis metus. Sed mollis malesuada egestas. Nullam velit sem, consectetur ut est vitae, euismod aliquet sem. Duis cursus accumsan ligula. In condimentum mollis quam, sed varius sapien tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pretium lacus, sit amet tristique dolor. Aenean feugiat sollicitudin nulla, et ullamcorper eros. Ut cursus ipsum id libero accumsan, id facilisis dui malesuada. Maecenas ut laoreet ipsum. Integer aliquet orci ac enim porta convallis. Donec in mi nibh. Aenean nec arcu id augue malesuada aliquam ut a elit. Morbi viverra malesuada magna vel venenatis. Mauris non urna rutrum, aliquet erat vel, molestie odio. Mauris congue ipsum sit amet nibh auctor, id convallis enim commodo.\r\n\r\nNam vitae odio id libero dictum pellentesque sit amet volutpat nisl. Duis sed metus sit amet nibh elementum aliquet. Nunc dictum leo nec justo hendrerit malesuada. Fusce eleifend, eros at venenatis pretium, ligula massa sodales justo, ac tempor nulla mauris sit amet lorem. Sed neque nisi, fermentum vitae eleifend quis, iaculis ac ante. Suspendisse diam libero, iaculis et lorem vitae, fermentum convallis leo. Curabitur dolor eros, consectetur eu pulvinar ut, scelerisque vitae lorem. Donec feugiat commodo tellus. Proin congue magna id posuere iaculis. Sed pharetra dapibus rutrum. Donec dictum venenatis ultricies. Etiam in lectus vel magna maximus sodales eget sodales risus.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png', 1, '2023-12-28', '2023-12-28', 'saya'),
(5, 'Article 3', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum sem sit amet nisi egestas, at interdum sapien elementum. Pellentesque cursus blandit nibh, sed aliquet justo consectetur ut. Nullam quis finibus neque. Curabitur facilisis est sit amet tortor sollicitudin malesuada. Aliquam suscipit pretium nisl, ac tempus velit gravida eget. Nulla facilisi. Maecenas lacinia nec lorem eu iaculis. Pellentesque gravida pharetra nibh, vitae imperdiet elit rhoncus vitae.\r\n\r\nProin dignissim nulla at vestibulum vestibulum. Vivamus iaculis mi quis viverra viverra. Donec eleifend odio a posuere mattis. Aliquam malesuada, diam gravida laoreet feugiat, lectus neque sagittis lacus, ornare egestas tortor nisi ac felis. Quisque auctor metus a scelerisque commodo. Phasellus nec varius lectus. Donec iaculis ornare orci. Donec accumsan turpis eget fermentum cursus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut pretium, justo id hendrerit malesuada, mi eros gravida urna, nec scelerisque erat ipsum sed dolor.\r\n\r\nDonec tincidunt porta pharetra. Sed luctus porttitor dolor. Morbi a ligula quam. Sed ligula urna, congue vitae tincidunt sollicitudin, tincidunt at arcu. Suspendisse vitae ante ipsum. Morbi non quam nec nulla volutpat vehicula vel vel leo. Ut vestibulum aliquam massa, ut vulputate diam commodo sit amet. Nunc ac pellentesque massa.\r\n\r\nQuisque nec velit finibus, lobortis lacus et, mollis metus. Sed mollis malesuada egestas. Nullam velit sem, consectetur ut est vitae, euismod aliquet sem. Duis cursus accumsan ligula. In condimentum mollis quam, sed varius sapien tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pretium lacus, sit amet tristique dolor. Aenean feugiat sollicitudin nulla, et ullamcorper eros. Ut cursus ipsum id libero accumsan, id facilisis dui malesuada. Maecenas ut laoreet ipsum. Integer aliquet orci ac enim porta convallis. Donec in mi nibh. Aenean nec arcu id augue malesuada aliquam ut a elit. Morbi viverra malesuada magna vel venenatis. Mauris non urna rutrum, aliquet erat vel, molestie odio. Mauris congue ipsum sit amet nibh auctor, id convallis enim commodo.\r\n\r\nNam vitae odio id libero dictum pellentesque sit amet volutpat nisl. Duis sed metus sit amet nibh elementum aliquet. Nunc dictum leo nec justo hendrerit malesuada. Fusce eleifend, eros at venenatis pretium, ligula massa sodales justo, ac tempor nulla mauris sit amet lorem. Sed neque nisi, fermentum vitae eleifend quis, iaculis ac ante. Suspendisse diam libero, iaculis et lorem vitae, fermentum convallis leo. Curabitur dolor eros, consectetur eu pulvinar ut, scelerisque vitae lorem. Donec feugiat commodo tellus. Proin congue magna id posuere iaculis. Sed pharetra dapibus rutrum. Donec dictum venenatis ultricies. Etiam in lectus vel magna maximus sodales eget sodales risus.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png', 1, '2023-12-28', '2023-12-28', 'saya'),
(6, 'baru', 'deskripsi', 'https://github.com/login?client_id=0120e057bd645470c1ed&return_to=%2Flogin%2Foauth%2Fauthorize%3Fclient_id%3D0120e057bd645470c1ed%26code_challenge%3DGhXMz7p7l3fU7-zLdcX5Q1dzwXSRBO3y0IEM-sQzDKw%26code_challenge_method%3DS256%26redirect_uri%3Dhttp%253A%252F%252Flocalhost%253A60361%252F%26response_type%3Dcode%26scope%3Drepo%2Bgist%2Bworkflow%26state%3D112c8e57ade44515b1e7a82cbda7adf8', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png', 0, '2023-12-28', '2023-12-28', 'saya'),
(7, 'tes', 'nyoba', 'nyoba ges', '-', 1, '2023-12-28', '2023-12-28', 'dhiya'),
(8, 'Halo-Halo Bandung', 'nyoba ygy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum cursus porta augue, ac ullamcorper erat. Integer ut iaculis ante, id posuere lacus. Proin sit amet tellus eget leo posuere aliquet at sit amet nisi. Cras non congue velit. Aliquam arcu urna, congue vel urna ac, iaculis tincidunt justo. Aliquam lorem urna, rutrum at mi eget, dapibus porttitor metus. Sed pellentesque at magna efficitur posuere. Donec quam magna, varius vitae porttitor at, iaculis efficitur eros. Sed luctus sapien eget elit lacinia, vel hendrerit mi tincidunt. Suspendisse sit amet orci nec magna maximus mollis. Pellentesque malesuada blandit dolor sit amet mattis. Curabitur quis odio vel tellus venenatis hendrerit id et massa. Etiam efficitur ante semper neque rhoncus accumsan. Sed viverra faucibus ligula, ut ullamcorper libero molestie ut.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyr-llsDQY9JLFVY3y8GFy7p--lNWWalwI4gF24mx7kQ&s', 1, '2023-12-28', '2023-12-28', 'Samantha');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
