<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");
header("Content-Type: application/json; charset=UTF-8");
include_once("../classes/MySQL.php");

$request_method = $_SERVER['REQUEST_METHOD'];
$mySQL = new MySQL(true);

if ($request_method === 'GET' && isset($_GET['id'])) {
    $postId = $_GET['id'];
    $sql = "SELECT * FROM posts WHERE id = '$postId'";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'GET') {
    $sql = "SELECT * FROM posts ORDER BY created_at DESC";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'POST') {
    $newPost = json_decode(file_get_contents('php://input'));

    $base64data = explode(",", $newPost->image);
    $imageData = base64_decode($base64data[1]);
    $source = imagecreatefromstring($imageData);

    $savePath = $_SERVER["DOCUMENT_ROOT"] . "/../frontend/src/assets/img/";
    $fileName = date("Ymd_His_") . $newPost->title . ".jpg";
    error_log("Save path: " . $savePath );
    $imageSave = imagejpeg($source, $savePath . $fileName);
    error_log("Image save: ". $imageSave);
    imagedestroy($source);

    $sql = "INSERT INTO posts
                    (title, body, image, uid)
                VALUES
                    ('$newPost->title', '$newPost->body', '$fileName', '$newPost->uid')
                ";
    echo $mySQL->Query($sql, false);
} else if ($request_method === 'DELETE' && isset($_GET['id'])) {
    $postId = $_GET['id'];
    $sql = "DELETE FROM POSTS WHERE id = '$postId'";
    echo $mySQL->Query($sql, false);
} else if ($request_method === 'PUT' && isset($_GET['id'])) {
    $postId = $_GET['id'];
    $post = json_decode(file_get_contents('php://input'));
    $sql = "UPDATE posts 
                SET title = '$post->title', body = '$post->body', image = '$post->image'
                WHERE id = '$postId'";
    echo $mySQL->Query($sql, false);
}
