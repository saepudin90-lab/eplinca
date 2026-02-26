<?php
require_once 'config/database.php';

$updates = [
    ['nama' => 'CECEP NUR SAEPUDIN', 'posisi' => 'Driver', 'nip' => '0850121083'],
    ['nama' => 'CECEP SUBHAN MUTAKIN', 'posisi' => 'Nutritionist', 'nip' => '0850121084'],
    ['nama' => 'DHILA GATRIA FADHILA', 'posisi' => 'Campboss', 'nip' => '0850122001'],
    ['nama' => 'HELMI NURJAMAN', 'posisi' => 'Senior Cook', 'nip' => '0850121087'],
    ['nama' => 'JUJUN MULYANA', 'posisi' => 'Cook Helper', 'nip' => '0850121088'],
    ['nama' => 'KURNIADI', 'posisi' => 'Driver', 'nip' => '0850121089'],
    ['nama' => 'MELAN MAOLANA', 'posisi' => 'Room Boy', 'nip' => '0850121090'],
    ['nama' => 'NURMAN SAEPUL BAHRI', 'posisi' => 'Storeman', 'nip' => '0850121091'],
    ['nama' => 'RIKI DIANA', 'posisi' => 'HSE Officer', 'nip' => '0850122001'],
    ['nama' => 'ROSADI', 'posisi' => 'Room Boy Leader', 'nip' => '0850121093'],
    ['nama' => 'TAOPIK HIDAYAT', 'posisi' => 'Cook', 'nip' => '0850121094'],
    ['nama' => 'TITO', 'posisi' => 'Steward', 'nip' => '0850121096'],
    ['nama' => 'UJANG MULYANA', 'posisi' => 'Room Boy', 'nip' => '0850121097'],
    ['nama' => 'WAWAN SUJANA', 'posisi' => 'Baker', 'nip' => '0850123002'],
];

foreach ($updates as $update) {
    $stmt = $pdo->prepare("UPDATE employees SET nip = ? WHERE nama = ? AND posisi = ?");
    $stmt->execute([$update['nip'], $update['nama'], $update['posisi']]);
    echo "Updated {$update['nama']} with NIP {$update['nip']}\n";
}

echo "All updates completed.";
?>
