<?php
require_once 'config/database.php';

try {
    $stmt = $pdo->query("SELECT nip, nama, posisi, unit FROM employees ORDER BY unit, nip");
    $employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo "<h2>Daftar Karyawan</h2>";
    echo "<table border='1'>";
    echo "<tr><th>NIP</th><th>Nama</th><th>Posisi</th><th>Unit</th></tr>";
    foreach ($employees as $emp) {
        echo "<tr><td>{$emp['nip']}</td><td>{$emp['nama']}</td><td>{$emp['posisi']}</td><td>{$emp['unit']}</td></tr>";
    }
    echo "</table>";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
