<?php
require_once 'config/database.php';

try {
    // Check what columns exist in employees table
    $stmt = $pdo->query("DESCRIBE employees");
    $columns = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo "Employees table columns:\n";
    foreach ($columns as $column) {
        echo "- " . $column['Field'] . " (" . $column['Type'] . ")\n";
    }

    // Try to fetch one employee
    echo "\nTrying to fetch one employee:\n";
    $stmt = $pdo->query("SELECT * FROM employees LIMIT 1");
    $employee = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($employee) {
        echo "Employee data keys: " . implode(', ', array_keys($employee)) . "\n";
        echo "Sample data:\n";
        foreach ($employee as $key => $value) {
            echo "- $key: $value\n";
        }
    } else {
        echo "No employees found\n";
    }

} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>
