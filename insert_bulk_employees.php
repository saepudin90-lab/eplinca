<?php
require_once 'config/database.php';

$employees = [
    ['nik' => '1', 'nama' => 'Alvy Zelvya', 'posisi' => 'Nutritionist', 'unit' => 'wayang_windu'],
    ['nik' => '2', 'nama' => 'Feri Aryanto', 'posisi' => 'Supervisor Catering & Function Services', 'unit' => 'wayang_windu'],
    ['nik' => '3', 'nama' => 'Anwar M', 'posisi' => 'Sous Chef', 'unit' => 'wayang_windu'],
    ['nik' => '4', 'nama' => 'Asep Dedi', 'posisi' => 'Senior Cook', 'unit' => 'wayang_windu'],
    ['nik' => '5', 'nama' => 'Usin', 'posisi' => 'Cook', 'unit' => 'wayang_windu'],
    ['nik' => '6', 'nama' => 'Nandang', 'posisi' => 'Cook', 'unit' => 'wayang_windu'],
    ['nik' => '7', 'nama' => 'Suparman', 'posisi' => 'Cook', 'unit' => 'wayang_windu'],
    ['nik' => '8', 'nama' => 'Riki S', 'posisi' => 'Cook', 'unit' => 'wayang_windu'],
    ['nik' => '9', 'nama' => 'Eden Saripudin', 'posisi' => 'Head Waiter', 'unit' => 'wayang_windu'],
    ['nik' => '10', 'nama' => 'Juliyanti', 'posisi' => 'Waiter/ess', 'unit' => 'wayang_windu'],
    ['nik' => '11', 'nama' => 'Sahman', 'posisi' => 'Waiter/ess', 'unit' => 'wayang_windu'],
    ['nik' => '12', 'nama' => 'Ali G', 'posisi' => 'Waiter/ess', 'unit' => 'wayang_windu'],
    ['nik' => '13', 'nama' => 'Dea Rosaliana', 'posisi' => 'Waiter/ess', 'unit' => 'wayang_windu'],
    ['nik' => '14', 'nama' => 'Dian S', 'posisi' => 'Pastry - Baker', 'unit' => 'wayang_windu'],
    ['nik' => '15', 'nama' => 'Rukmana Boby', 'posisi' => 'Pastry - Baker', 'unit' => 'wayang_windu'],
    ['nik' => '16', 'nama' => 'Yoga', 'posisi' => 'Steward', 'unit' => 'wayang_windu'],
    ['nik' => '17', 'nama' => 'Yudha', 'posisi' => 'Steward', 'unit' => 'wayang_windu'],
    ['nik' => '18', 'nama' => 'Budiman', 'posisi' => 'Steward', 'unit' => 'wayang_windu'],
    ['nik' => '19', 'nama' => 'Asep Suryana', 'posisi' => 'Administration', 'unit' => 'wayang_windu'],
    ['nik' => '20', 'nama' => 'Wawan', 'posisi' => 'Store keeper', 'unit' => 'wayang_windu'],
    ['nik' => '21', 'nama' => 'Dedi SH', 'posisi' => 'Technician', 'unit' => 'wayang_windu'],
    ['nik' => '22', 'nama' => 'Depi', 'posisi' => 'Driver', 'unit' => 'wayang_windu']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit) VALUES (?, ?, ?, ?)");
    foreach ($employees as $employee) {
        $stmt->execute([$employee['nik'], $employee['nama'], $employee['posisi'], $employee['unit']]);
    }
    echo "All employees inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
