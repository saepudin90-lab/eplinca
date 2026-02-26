<?php
require_once 'config/database.php';

$employees = [
    ['nik' => '1', 'nama' => 'Azis Solehudin', 'posisi' => 'Field Manager', 'unit' => 'salak'],
    ['nik' => '2', 'nama' => 'Adrian Purnama', 'posisi' => 'Executive Chef', 'unit' => 'salak'],
    ['nik' => '3', 'nama' => 'Rahayu Eka', 'posisi' => 'SHE Officer', 'unit' => 'salak'],
    ['nik' => '4', 'nama' => 'Ristya Ayu', 'posisi' => 'Nutritionist', 'unit' => 'salak'],
    ['nik' => '5', 'nama' => 'Wahyudin', 'posisi' => 'Supervisor Catering & Function Services', 'unit' => 'salak'],
    ['nik' => '6', 'nama' => 'Rully A', 'posisi' => 'Sous Chef', 'unit' => 'salak'],
    ['nik' => '7', 'nama' => 'Maman', 'posisi' => 'Senior Cook', 'unit' => 'salak'],
    ['nik' => '8', 'nama' => 'Mulyadi', 'posisi' => 'Senior Cook', 'unit' => 'salak'],
    ['nik' => '9', 'nama' => 'Rizal Fazri', 'posisi' => 'Senior Cook', 'unit' => 'salak'],
    ['nik' => '10', 'nama' => 'Ade Irawan', 'posisi' => 'Cook', 'unit' => 'salak'],
    ['nik' => '11', 'nama' => 'Suryaman', 'posisi' => 'Cook', 'unit' => 'salak'],
    ['nik' => '12', 'nama' => 'Yudhistira', 'posisi' => 'Cook', 'unit' => 'salak'],
    ['nik' => '13', 'nama' => 'Yuli Susanto', 'posisi' => 'Cook helper', 'unit' => 'salak'],
    ['nik' => '14', 'nama' => 'Rohman', 'posisi' => 'Cook helper', 'unit' => 'salak'],
    ['nik' => '15', 'nama' => 'Dadang S', 'posisi' => 'Cook helper', 'unit' => 'salak'],
    ['nik' => '16', 'nama' => 'Iklima Anjar Wulan', 'posisi' => 'Head Waiter', 'unit' => 'salak'],
    ['nik' => '17', 'nama' => 'Ayu Ananda', 'posisi' => 'Waiter/ess', 'unit' => 'salak'],
    ['nik' => '18', 'nama' => 'Femila Suari Dani', 'posisi' => 'Waiter/ess', 'unit' => 'salak'],
    ['nik' => '19', 'nama' => 'Asep Maulana', 'posisi' => 'Waiter/ess', 'unit' => 'salak'],
    ['nik' => '20', 'nama' => 'Anggi Rinaldi', 'posisi' => 'Waiter/ess', 'unit' => 'salak'],
    ['nik' => '21', 'nama' => 'Hendri', 'posisi' => 'Pastry - Baker', 'unit' => 'salak'],
    ['nik' => '22', 'nama' => 'Dodi', 'posisi' => 'Pastry - Baker', 'unit' => 'salak'],
    ['nik' => '23', 'nama' => 'Sandri', 'posisi' => 'Pastry - Baker', 'unit' => 'salak'],
    ['nik' => '24', 'nama' => 'Dadan S', 'posisi' => 'Pastry - Baker', 'unit' => 'salak'],
    ['nik' => '25', 'nama' => 'Yusup Maulana', 'posisi' => 'Janitor', 'unit' => 'salak'],
    ['nik' => '26', 'nama' => 'Rahmat', 'posisi' => 'Steward', 'unit' => 'salak'],
    ['nik' => '27', 'nama' => 'Dimas', 'posisi' => 'Steward', 'unit' => 'salak'],
    ['nik' => '28', 'nama' => 'Pindiansyah', 'posisi' => 'Steward', 'unit' => 'salak'],
    ['nik' => '29', 'nama' => 'Eki Hartani', 'posisi' => 'Administration', 'unit' => 'salak'],
    ['nik' => '30', 'nama' => 'Goenawan', 'posisi' => 'Store keeper', 'unit' => 'salak'],
    ['nik' => '31', 'nama' => 'Saiful Hadi', 'posisi' => 'Store keeper', 'unit' => 'salak'],
    ['nik' => '32', 'nama' => 'Fauzan Irawan', 'posisi' => 'Technician', 'unit' => 'salak'],
    ['nik' => '33', 'nama' => 'Oman', 'posisi' => 'Driver', 'unit' => 'salak'],
    ['nik' => '34', 'nama' => 'Lili Sarli', 'posisi' => 'Driver', 'unit' => 'salak'],
    ['nik' => '35', 'nama' => 'Mulyana', 'posisi' => 'Driver', 'unit' => 'salak']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit) VALUES (?, ?, ?, ?)");
    foreach ($employees as $employee) {
        $stmt->execute([$employee['nik'], $employee['nama'], $employee['posisi'], $employee['unit']]);
    }
    echo "Salak employees inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
