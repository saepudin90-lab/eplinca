<?php
require_once 'config/database.php';

try {
    // Remove UNIQUE constraint from nip column to allow duplicates across units
    $pdo->exec("ALTER TABLE employees DROP INDEX nip");
    echo "UNIQUE constraint removed from nip column successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
