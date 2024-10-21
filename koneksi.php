<?php
 $host = '127.0.0.1';
 $username = 'root';
 $password = '';
 $dbname = 'rhn';
 // Membuat koneksi
 $conn = new mysqli($host, $username, $password, $dbname);
 
 // Memeriksa koneksi
 if ($conn->connect_error) {
     die("Koneksi gagal: " . $conn->connect_error);
 }

?>