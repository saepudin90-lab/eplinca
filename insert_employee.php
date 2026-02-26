<?php
require_once 'config/database.php';

try {
    $stmt = $pdo->prepare("INSERT INTO employees (nik, nama, posisi, unit) VALUES (?, ?, ?, ?)");
    $stmt->execute(['0007', 'FEMILA', 'WATRIS', 'salak']);
    echo "Employee inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
