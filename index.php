<?php
include 'koneksi.php';

$sql = "SELECT siswa.*, 
CASE 
    WHEN siswa.id_kelas = 1 THEN 'XI TKJ 1'
    WHEN siswa.id_kelas = 2 THEN 'XI TKJ 2'
    WHEN siswa.id_kelas = 3 THEN 'XI TKJ 3'
    ELSE 'Kelas Tidak Dikenal'
END AS nama_kelas,
CASE
    WHEN siswa.id_alamat = 1 THEN 'PUNCU'
    WHEN siswa.id_alamat = 2 THEN 'PARE'
    WHEN siswa.id_alamat = 3 THEN 'BADAS'
END AS alamat
FROM siswa
";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>indexs</title>
</head>
<body>
    <h2>Daftar Siswa</h2>
    <a href="create.php">Tambah Siswa</a>
    <table border="1" cellpadding="10">
        <tr>    
            <th>nama</th>
            <th>no_absen</th>
            <th>alamat</th>
            <th>kelas</th>
            <th>hobi</th>
        </tr>
        <?php if ($result->num_rows > 0) : ?>
            <?php $no = 1; while ($row = $result->fetch_assoc()) : ?>
                <tr>
                    <td><?= htmlspecialchars($row['nama']) ?></td>
                    <td><?= htmlspecialchars($row['no_absen']) ?></td>
                    <td><?= htmlspecialchars($row['alamat']) ?></td>
                    <td><?= htmlspecialchars($row['nama_kelas']) ?></td>
                    <td><?= htmlspecialchars($row['hobi']) ?></td>
                </tr>
            <?php endwhile; ?>
        <?php ealse : ?>
        <?php endif;?>
    </table>
</body>
</html>