<?php
require_once 'config/database.php';

$updates = [
    ['nama' => 'Cecep Nursaepudin', 'posisi' => 'Driver', 'nip' => '0850121083'],
    ['nama' => 'Cecep Subhan', 'posisi' => 'Nutritionist', 'nip' => '0850121084'],
    ['nama' => 'Helmi', 'posisi' => 'Sous Chef', 'nip' => '0850121087'],
    ['nama' => 'Jujun', 'posisi' => 'Cook', 'nip' => '0850121088'],
    ['nama' => 'Kurniadi', 'posisi' => 'Driver', 'nip' => '0850121089'],
    ['nama' => 'Nurman', 'posisi' => 'Store keeper', 'nip' => '0850121091'],
    ['nama' => 'Taopik', 'posisi' => 'Senior Cook', 'nip' => '0850121094'],
    ['nama' => 'Tito', 'posisi' => 'Cook helper', 'nip' => '0850121096'],
    ['nama' => 'Ujang', 'posisi' => 'Waiter/ess', 'nip' => '0850121097'],
    ['nama' => 'Wawan', 'posisi' => 'Pastry - Baker', 'nip' => '0850123002'],
];

foreach ($updates as $update) {
    $stmt = $pdo->prepare("UPDATE employees SET nip = ? WHERE nama = ? AND posisi = ?");
    $stmt->execute([$update['nip'], $update['nama'], $update['posisi']]);
    echo "Updated {$update['nama']} with NIP {$update['nip']}\n";
}

echo "All updates completed.";
?>
