<?php
// Simple router for Vercel PHP serverless function.
// It forwards PHP requests to files in project root and serves static files.

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$path = ltrim($uri, '/');
$projectRoot = dirname(__DIR__);
$target = $projectRoot . DIRECTORY_SEPARATOR . $path;

if ($path === '' || $path === '/') {
    // Serve index-like page if exists
    if (file_exists($projectRoot . DIRECTORY_SEPARATOR . 'home.php')) {
        include $projectRoot . DIRECTORY_SEPARATOR . 'home.php';
        exit;
    }
}

// If file exists and is not a directory, serve it
if (file_exists($target) && !is_dir($target)) {
    $ext = pathinfo($target, PATHINFO_EXTENSION);
    if ($ext === 'php') {
        include $target;
        exit;
    }

    // Serve static file
    $mime = mime_content_type($target) ?: 'application/octet-stream';
    header('Content-Type: ' . $mime);
    readfile($target);
    exit;
}

// Fallback: try to serve requested path + .php
$tryPhp = $target . '.php';
if (file_exists($tryPhp)) {
    include $tryPhp;
    exit;
}

// Last resort: include home.php or 404
if (file_exists($projectRoot . DIRECTORY_SEPARATOR . 'home.php')) {
    include $projectRoot . DIRECTORY_SEPARATOR . 'home.php';
    exit;
}

http_response_code(404);
echo 'Not found';
