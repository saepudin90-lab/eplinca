<?php
require_once 'config/database.php';

try {
    // Hash for password 'password' (same as in complete_database.sql)
    $password_hash = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi';

    // Insert admin_darajat
    $stmt = $pdo->prepare("INSERT INTO users (username, password, role, unit) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE password = VALUES(password), role = VALUES(role), unit = VALUES(unit)");
    $stmt->execute(['admin_darajat', $password_hash, 'admin', 'darajat']);
    echo "User admin_darajat inserted/updated successfully.\n";

    // Insert admin_wayangwindu
    $stmt->execute(['admin_wayangwindu', $password_hash, 'admin', 'wayang_windu']);
    echo "User admin_wayangwindu inserted/updated successfully.\n";

    // Insert super_admin (if not exists)
    $stmt_super = $pdo->prepare("INSERT INTO users (username, password, role) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE password = VALUES(password), role = VALUES(role)");
    $stmt_super->execute(['super_admin', $password_hash, 'super_admin']);
    echo "User super_admin inserted/updated successfully.\n";

    // Confirm admin_salak exists (already in database)
    $stmt_check = $pdo->prepare("SELECT COUNT(*) FROM users WHERE username = ?");
    $stmt_check->execute(['admin_salak']);
    $count = $stmt_check->fetchColumn();
    if ($count > 0) {
        echo "User admin_salak already exists.\n";
    } else {
        // Insert if not exists
        $stmt->execute(['admin_salak', $password_hash, 'admin', 'salak']);
        echo "User admin_salak inserted successfully.\n";
    }

} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
