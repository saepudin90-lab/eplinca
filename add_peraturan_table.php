<?php
require_once 'config/database.php';

try {
    $pdo->exec("CREATE TABLE IF NOT EXISTS peraturan_perusahaan (
        id INT AUTO_INCREMENT PRIMARY KEY,
        judul VARCHAR(255) NOT NULL,
        file_name VARCHAR(255) NOT NULL,
        file_path VARCHAR(500) NOT NULL,
        uploaded_by INT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (uploaded_by) REFERENCES users(id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci");
    echo "Table peraturan_perusahaan created successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
