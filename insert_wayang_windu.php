<?php
require_once 'config/database.php';

$employees = [
    ['nip' => '0851022001', 'nama' => 'ALI GOJALI', 'posisi' => 'HOUSEKEEPING'],
    ['nip' => '0850921003', 'nama' => 'ALVY ZELVYA HERYADI', 'posisi' => 'NUTRITIONIST'],
    ['nip' => '0850121099', 'nama' => 'ANWAR MUNAWAR', 'posisi' => 'CHIEF COOK'],
    ['nip' => '0850121059', 'nama' => 'ASEP DEDI SUPRIADI', 'posisi' => 'COOK'],
    ['nip' => '0850121060', 'nama' => 'ASEP SUHERMAN', 'posisi' => 'HOUSEKEEPING'],
    ['nip' => '0850121061', 'nama' => 'ASEP SURYANA', 'posisi' => 'SENIOR STOREKEEPER'],
    ['nip' => '0850121062', 'nama' => 'BUDIMAN', 'posisi' => 'STEWARD'],
    ['nip' => '0850121063', 'nama' => 'CECEP KOSASIH', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121064', 'nama' => 'DEDI SUTRISNA HAPIDIN', 'posisi' => 'MAINTENANCE'],
    ['nip' => '0850121065', 'nama' => 'DEPI KUSMAWAN', 'posisi' => 'DRIVER'],
    ['nip' => '0850121066', 'nama' => 'DIAN SUHERLAN', 'posisi' => 'BAKER'],
    ['nip' => '0850121067', 'nama' => 'EDEN SARIPUDIN', 'posisi' => 'CATERING SUPERVISOR'],
    ['nip' => '0850121068', 'nama' => 'ENJANG WARSA', 'posisi' => 'LAUNDRY ATTENDANT'],
    ['nip' => '0850121078', 'nama' => 'FERI ARYANTO', 'posisi' => 'CAMPBOSS'],
    ['nip' => '0850921004', 'nama' => 'GRAHANA JATI SUNDA', 'posisi' => 'MAINTENANCE'],
    ['nip' => '0850121069', 'nama' => 'JAJANG UMBARAN', 'posisi' => 'WAITER'],
    ['nip' => '0851123001', 'nama' => 'JULLYANTI PUTRI LESTARI', 'posisi' => 'GENERAL SERVICE'],
    ['nip' => '0850121070', 'nama' => 'NANDANG', 'posisi' => 'COOK'],
    ['nip' => '0850223001', 'nama' => 'RIAN IKBAL CANDIKA', 'posisi' => 'GENERAL SERVICE'],
    ['nip' => '0850121071', 'nama' => 'RIKI SUHENDAR', 'posisi' => 'STEWARD'],
    ['nip' => '0850121072', 'nama' => 'RUKMANA', 'posisi' => 'BAKER'],
    ['nip' => '0850121073', 'nama' => 'SAHMAN ABDUL ROHMAN', 'posisi' => 'WAITER'],
    ['nip' => '0850121074', 'nama' => 'SANTANA', 'posisi' => 'HOUSEKEEPING SUPERVISOR'],
    ['nip' => '0851124001', 'nama' => 'SHARA NUR ANNISA FAUZI ARDI', 'posisi' => 'HSE OFFICER'],
    ['nip' => '0850121075', 'nama' => 'SUPARMAN', 'posisi' => 'COOK'],
    ['nip' => '0850121077', 'nama' => 'USIN RUSTENDI', 'posisi' => 'COOK I'],
    ['nip' => '0850121079', 'nama' => 'WAWAN GUNAWAN', 'posisi' => 'STOREMAN'],
    ['nip' => '0850121082', 'nama' => 'YOGA SALIKIN PERMANA', 'posisi' => 'STEWARD'],
    ['nip' => '0850421004', 'nama' => 'YUDA PUTRA PRATAMA', 'posisi' => 'WAITER']
];

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit, created_at) VALUES (?, ?, ?, 'wayang_windu', NOW())");

    foreach ($employees as $employee) {
        $stmt->execute([$employee['nik'], $employee['nama'], $employee['posisi']]);
    }

    echo "All new employee data for Wayang Windu has been inserted successfully.";
} catch (PDOException $e) {
    echo "Error inserting data: " . $e->getMessage();
}
?>
