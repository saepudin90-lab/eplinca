<?php
require_once 'config/database.php';

$employees = [
    ['nik' => '1', 'nama' => 'Cecep Subhan', 'posisi' => 'Nutritionist', 'unit' => 'darajat'],
    ['nik' => '2', 'nama' => 'Siti Fauziah Choirun Nisa', 'posisi' => 'Supervisor Catering & Function Services', 'unit' => 'darajat'],
    ['nik' => '3', 'nama' => 'Helmi', 'posisi' => 'Sous Chef', 'unit' => 'darajat'],
    ['nik' => '4', 'nama' => 'Taopik', 'posisi' => 'Senior Cook', 'unit' => 'darajat'],
    ['nik' => '5', 'nama' => 'Jujun', 'posisi' => 'Cook', 'unit' => 'darajat'],
    ['nik' => '6', 'nama' => 'Tito', 'posisi' => 'Cook helper', 'unit' => 'darajat'],
    ['nik' => '7', 'nama' => 'Ujang', 'posisi' => 'Waiter/ess', 'unit' => 'darajat'],
    ['nik' => '8', 'nama' => 'Wawan', 'posisi' => 'Pastry - Baker', 'unit' => 'darajat'],
    ['nik' => '9', 'nama' => 'Nurman', 'posisi' => 'Store keeper', 'unit' => 'darajat'],
    ['nik' => '10', 'nama' => 'Cecep Nursaepudin', 'posisi' => 'Driver', 'unit' => 'darajat'],
    ['nik' => '11', 'nama' => 'Kurniadi', 'posisi' => 'Driver', 'unit' => 'darajat']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit) VALUES (?, ?, ?, ?)");
    foreach ($employees as $employee) {
        $stmt->execute([$employee['nik'], $employee['nama'], $employee['posisi'], $employee['unit']]);
    }
    echo "Darajat employee inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
