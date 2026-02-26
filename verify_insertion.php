<?php
require_once 'config/database.php';

try {
    $stmt = $pdo->prepare("SELECT id, nip, nama, posisi, unit FROM employees WHERE unit = 'darajat' ORDER BY id DESC LIMIT 20");
    $stmt->execute();
    $employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo "Employees in 'darajat' unit:\n";
    foreach ($employees as $employee) {
        echo "ID: {$employee['id']}, NIP: {$employee['nik']}, Nama: {$employee['nama']}, Posisi: {$employee['posisi']}, Unit: {$employee['unit']}\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
