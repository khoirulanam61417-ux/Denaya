<?php
// Konfigurasi Database
$host = "localhost";
$user = "root"; 
$pass = "";     
$db   = "denaya_db";

// 1. Mengaktifkan pelaporan error mysqli (sangat membantu saat debugging/pengembangan)
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    // 2. Membuat koneksi dengan objek mysqli
    $conn = new mysqli($host, $user, $pass, $db);

    // 3. Mengatur karakter set ke utf8mb4 
    // Penting agar teks di database tidak berantakan jika ada karakter khusus
    $conn->set_charset("utf8mb4");

} catch (mysqli_sql_exception $e) {
    // 4. Jika koneksi gagal, tampilkan pesan error yang rapi
    die("Koneksi database gagal: " . $e->getMessage());
}
?>