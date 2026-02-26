<?php
require_once 'config/database.php';

$stmt = $pdo->query("SELECT nama, posisi, nip FROM employees WHERE nip IS NOT NULL AND nip != '' ORDER BY nama");
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo "<h2>Employee NIP Check</h2>";
echo "<table border='1'>";
echo "<tr><th>Nama</th><th>Posisi</th><th>NIP</th></tr>";
foreach ($employees as $emp) {
    echo "<tr><td>{$emp['nama']}</td><td>{$emp['posisi']}</td><td>{$emp['nip']}</td></tr>";
}
echo "</table>";
?>
