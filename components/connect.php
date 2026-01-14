<?php

// Use environment variables on Vercel; fall back to local XAMPP defaults
$db_dsn = getenv('DB_DSN') ?: 'mysql:host=localhost;dbname=kibordo_db';
$db_user = getenv('DB_USER') ?: 'root';
$db_pass = getenv('DB_PASS') ?: '';

try {
	$conn = new PDO($db_dsn, $db_user, $db_pass, [
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
	]);
} catch (PDOException $e) {
	// In production don't echo credentials or stack traces.
	// For local debugging it's useful to see the message.
	http_response_code(500);
	echo 'Database connection failed: ' . $e->getMessage();
	exit;
}

?>