<?php
require_once 'config/database.php';

try {
    $stmt = $pdo->query('SELECT COUNT(*) as count FROM employees WHERE unit = "wayang_windu"');
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    echo 'Number of employees in wayang_windu: ' . $result['count'];
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
