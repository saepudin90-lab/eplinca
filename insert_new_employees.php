<?php
require_once 'config/database.php';

$employees = [
    ['nip' => '0850121001', 'nama' => 'ADE IRAWAN', 'posisi' => 'COOK'],
    ['nip' => '0850121002', 'nama' => 'ADE MUSLIH', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850921002', 'nama' => 'ADRIAN PURNAMA MULYANA', 'posisi' => 'EXECUTIVE CHEF'],
    ['nip' => '0850121003', 'nama' => 'AGUS SETIAWAN', 'posisi' => 'MAINTENANCE'],
    ['nip' => '0850121004', 'nama' => 'AHMAD SOPIAN SAURI', 'posisi' => 'ACCOMMODATION SUPERVISOR'],
    ['nip' => '0850121006', 'nama' => 'ANGGI RINALDI', 'posisi' => 'WAITER'],
    ['nip' => '0850121007', 'nama' => 'ASEP MAULANA', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121009', 'nama' => 'ASRUL HAYAT', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121010', 'nama' => 'AYU ANANDA', 'posisi' => 'WAITER'],
    ['nip' => '0850121011', 'nama' => 'AZIS SOLEHUDIN', 'posisi' => 'CAMPBOSS'],
    ['nip' => '0850121012', 'nama' => 'BUDIYANTO', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121013', 'nama' => 'CEP HERI', 'posisi' => 'OFFICE BOY'],
    ['nip' => '0850121014', 'nama' => 'DADAN SUHENDI', 'posisi' => 'BAKER'],
    ['nip' => '0850121015', 'nama' => 'DADANG SUHENDAR', 'posisi' => 'COOK HELPER'],
    ['nip' => '0850121016', 'nama' => 'DIMAS SUHENDAR', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121017', 'nama' => 'DINDIN HARYADI', 'posisi' => 'OFFICE BOY'],
    ['nip' => '0850121018', 'nama' => 'DODI KUSWANDI', 'posisi' => 'CHIEF BAKER'],
    ['nip' => '0850121020', 'nama' => 'EDNIK', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121021', 'nama' => 'EKI HARTANI', 'posisi' => 'ADMIN'],
    ['nip' => '0850121022', 'nama' => 'EMPIN ARIFIN', 'posisi' => 'OFFICE BOY'],
    ['nip' => '0850121024', 'nama' => 'FAUZAN IRAWAN', 'posisi' => 'SENIOR MAINTENANCE TECHNICIAN'],
    ['nip' => '0850121025', 'nama' => 'FEBRI IRAWAN', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850721001', 'nama' => 'FEMILA SUARI DANI', 'posisi' => 'WAITER'],
    ['nip' => '0850121026', 'nama' => 'FIRJAN FIRDAUS', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121027', 'nama' => 'GOENAWAN SETYADI', 'posisi' => 'STOREMAN'],
    ['nip' => '0850121028', 'nama' => 'HENDRI SUHENDRI', 'posisi' => 'BAKER'],
    ['nip' => '0850121030', 'nama' => 'IKLIMA ANJAR WULAN', 'posisi' => 'HEAD WAITER'],
    ['nip' => '0850621002', 'nama' => 'INDI YANI', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121031', 'nama' => 'INSAN AFRISA', 'posisi' => 'FOREMAN ACCOMMODATION'],
    ['nip' => '0850121032', 'nama' => 'LILI SARLI A.R', 'posisi' => 'DRIVER'],
    ['nip' => '0850121034', 'nama' => 'MAMAN SURYAMAN', 'posisi' => 'SENIOR COOK'],
    ['nip' => '0850222002', 'nama' => 'MUHAMAD AMARULLAH', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850725001', 'nama' => 'MUHAMAD SAEFUDIN', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121033', 'nama' => 'MUHAMMAD RIYAN NAJMUDIN', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121035', 'nama' => 'MULYADI', 'posisi' => 'SENIOR COOK'],
    ['nip' => '0850121036', 'nama' => 'MULYANA', 'posisi' => 'DRIVER'],
    ['nip' => '0850121037', 'nama' => 'OMAN SUJANA', 'posisi' => 'DRIVER'],
    ['nip' => '0850121038', 'nama' => 'PINDIANSYAH', 'posisi' => 'OFFICE BOY'],
    ['nip' => '0850121039', 'nama' => 'RAHAYU EKA BUDIYANI', 'posisi' => 'HSE OFFICER'],
    ['nip' => '0850121040', 'nama' => 'RAHMAT', 'posisi' => 'STEWARD'],
    ['nip' => '0850121041', 'nama' => 'RAMLAN', 'posisi' => 'WAITER'],
    ['nip' => '0850323001', 'nama' => 'RISTYA AYU FADHILA', 'posisi' => 'NUTRITIONIST'],
    ['nip' => '0850121042', 'nama' => 'RIZAL FAZRI', 'posisi' => 'SENIOR COOK'],
    ['nip' => '0850625001', 'nama' => 'RIZAL LAMRI', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121043', 'nama' => 'ROHMAN', 'posisi' => 'COOK HELPER'],
    ['nip' => '0850121044', 'nama' => 'RULLY ANDRIAN', 'posisi' => 'CHIEF COOK'],
    ['nip' => '0850121045', 'nama' => 'RUSANDI', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121046', 'nama' => 'SAIFUL HADI', 'posisi' => 'STOREMAN'],
    ['nip' => '0850121047', 'nama' => 'SANDRI', 'posisi' => 'COOK PASTRY'],
    ['nip' => '0850121048', 'nama' => 'SANTI NURYANTI', 'posisi' => 'RECEPTIONIST'],
    ['nip' => '0850121049', 'nama' => 'SUHERLAN', 'posisi' => 'FOREMAN ACCOMMODATION'],
    ['nip' => '0850121050', 'nama' => 'SURYAMAN', 'posisi' => 'COOK'],
    ['nip' => '0850121052', 'nama' => 'UKO KOMARUDIN', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121053', 'nama' => 'WAHYUDIN', 'posisi' => 'CATERING SUPERVISOR'],
    ['nip' => '0850121055', 'nama' => 'YANA HERMAWAN', 'posisi' => 'ROOM BOY'],
    ['nip' => '0850121056', 'nama' => 'YUDHISTIRA ADI NUGRAHA', 'posisi' => 'COOK'],
    ['nip' => '0850121057', 'nama' => 'YULI SUSANTO', 'posisi' => 'COOK HELPER'],
    ['nip' => '0850524001', 'nama' => 'YUSUP MAULANA', 'posisi' => 'WAITER']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nip, nama, posisi, unit, created_at) VALUES (?, ?, ?, 'salak', NOW())");

    foreach ($employees as $employee) {
        $stmt->execute([$employee['nip'], $employee['nama'], $employee['posisi']]);
    }

    echo "All new employee data has been inserted successfully.";
} catch (PDOException $e) {
    echo "Error inserting data: " . $e->getMessage();
}
?>
