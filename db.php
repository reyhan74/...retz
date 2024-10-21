
<?php
 include 'koneksi.php';
// Ambil data dari formv
$nama = $_POST['nama'];
$no_absen = $_POST['no_absen'];
$id_alamat = $_POST['alamat'];
$id_kelas = $_POST['jurusan'];
$hobi = $_POST['hobi'];

// Insert data ke tabel siswa
$sql = "INSERT INTO siswa (nama, no_absen, id_alamat, id_kelas, hobi)
        VALUES ('$nama', '$no_absen', '$id_alamat', '$id_kelas', '$hobi')";

if ($conn->query($sql) === TRUE) {
    header('Location: index.php');
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>