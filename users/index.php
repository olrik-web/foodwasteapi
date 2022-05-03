<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");
    header("Access-Control-Allow-Methods: *");
    header("Content-Type: application/json; charset=UTF-8");
    include_once("../classes/MySQL.php");

    $request_method = $_SERVER['REQUEST_METHOD'];
    $mySQL = new MySQL(true);

    if ($request_method === 'GET' && isset($_GET['id'])) {
        $userId = $_GET['id'];
        $sql = "SELECT id, image, title, mail, name, phone FROM users WHERE id = '$userId'";
        echo $mySQL->Query($sql, true);

    } else if ($request_method === 'GET') {
        $sql = "SELECT id, image, title, mail, name, phone FROM users;";
        echo $mySQL->Query($sql, true);
        
    } else if ($request_method === 'PUT' && isset($_GET['id'])){
        $userId = $_GET['id'];
        $user = json_decode(file_get_contents('php://input'));
        $sql = "UPDATE users 
                SET title = '$user->title', name = '$user->name', image = '$user->image', mail = '$user->mail', phone = '$user->phone'
                WHERE id = '$userId'";
        $mySQL->Query($sql, false);
        $sql = "SELECT id, image, title, mail, name, phone FROM users WHERE id = '$userId'";
        echo $mySQL->Query($sql, true);
    }
?>