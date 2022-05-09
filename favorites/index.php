<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");
header("Content-Type: application/json; charset=UTF-8");
include_once("../classes/MySQL.php");

$request_method = $_SERVER['REQUEST_METHOD'];
$mySQL = new MySQL(true);

if ($request_method === 'GET' && isset($_GET['uid'])) {
    $userId = $_GET['uid'];
    $sql = "SELECT * FROM favorites WHERE uid = '$userId'";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'GET') {
    $sql = "SELECT * FROM favorites";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'POST') {
    $newFavorite = json_decode(file_get_contents('php://input'));

    $sql = "INSERT INTO favorites
                    (postid, uid)
                VALUES
                    ('$newFavorite->postid', '$newFavorite->uid')
                ";
    echo $mySQL->Query($sql, false);
} else if ($request_method === 'DELETE' && isset($_GET['postid'])) {
    $postId = $_GET['postid'];
    $sql = "DELETE FROM favorites WHERE postid = '$postId'";
    echo $mySQL->Query($sql, false);
} 
