<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Input Data Siswa</title>
</head>
<body>
    <h2>Form Input Data Siswa</h2>
    <form action="db.php" method="POST">
        <label for="nama">Nama:</label><br>
        <input type="text" id="nama" name="nama" required><br><br>

        <label for="no_absen">No Absen:</label><br>
        <input type="number" id="no_absen" name="no_absen" required><br><br>

        <label for="id_kecamatan">Kecamatan:</label><br>
        <select id="alamat" name="alamat" required>
            <!-- Kecamatan di Kediri, bisa disesuaikan -->
            <option value="1">PUNCU</option>
            <option value="2">PARE</option>
            <option value="3">BADAS</option>
        </select><br><br>

        <label for="id_jurusan">Jurusan:</label><br>
        <select id="jurusan" name="jurusan" required>
            <option value="1">XI TKJ 1</option>
            <option value="2">XI TKJ 2</option>
            <option value="3">XI TKJ 3</option>
        </select><br><br>

        <label for="hobi">Hobi:</label><br>
        <input type="text" id="hobi" name="hobi"><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>