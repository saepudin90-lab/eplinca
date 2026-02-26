<?php
require_once 'config/database.php';

$employees = [
    ['nik' => '0850121083', 'nama' => 'CECEP NUR SAEPUDIN', 'posisi' => 'DRIVER'],
    ['nik' => '0850121084', 'nama' => 'CECEP SUBHAN MUTAKIN', 'posisi' => 'NUTRITIONIST'],
    ['nik' => '0850824001', 'nama' => 'DHILA GATRIA FADHILA', 'posisi' => 'CAMPBOSS'],
    ['nik' => '0850121087', 'nama' => 'HELMI NURJAMAN', 'posisi' => 'SENIOR COOK'],
    ['nik' => '0850121088', 'nama' => 'JUJUN MULYANA', 'posisi' => 'COOK HELPER'],
    ['nik' => '0850121089', 'nama' => 'KURNIADI', 'posisi' => 'DRIVER'],
    ['nik' => '0850121090', 'nama' => 'MELAN MAOLANA', 'posisi' => 'ROOM BOY'],
    ['nik' => '0850121091', 'nama' => 'NURMAN SAEPUL BAHRI', 'posisi' => 'STOREMAN'],
    ['nik' => '0850122001', 'nama' => 'RIKI DIANA', 'posisi' => 'HSE OFFICER'],
    ['nik' => '0850121093', 'nama' => 'ROSADI', 'posisi' => 'ROOM BOY LEADER'],
    ['nik' => '0850121094', 'nama' => 'TAOPIK HIDAYAT', 'posisi' => 'COOK'],
    ['nik' => '0850121096', 'nama' => 'TITO', 'posisi' => 'STEWARD'],
    ['nik' => '0850121097', 'nama' => 'UJANG MULYANA', 'posisi' => 'ROOM BOY'],
    ['nik' => '0850123002', 'nama' => 'WAWAN SUJANA', 'posisi' => 'BAKER']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit) VALUES (?, ?, ?, 'darajat')");
    foreach ($employees as $employee) {
        $stmt->execute([$employee['nik'], $employee['nama'], $employee['posisi']]);
    }
    echo "New Darajat employees inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
