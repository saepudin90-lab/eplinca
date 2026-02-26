<?php
require_once 'config/database.php';

try {
    // Delete all records from employees table
    $stmt = $pdo->prepare("DELETE FROM employees");
    $stmt->execute();

    echo "All employee data has been deleted successfully.";
} catch (PDOException $e) {
    echo "Error deleting data: " . $e->getMessage();
}
?>
