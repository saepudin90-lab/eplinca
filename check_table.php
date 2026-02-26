<?php
require_once 'config/database.php';

try {
    $stmt = $pdo->query("SHOW TABLES LIKE 'peraturan_perusahaan'");
    $result = $stmt->fetch();
    if ($result) {
        echo "Table 'peraturan_perusahaan' exists.";
    } else {
        echo "Table 'peraturan_perusahaan' does not exist.";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
