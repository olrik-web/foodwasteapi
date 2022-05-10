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
    $sql = "SELECT id, image, mail, name, phone, admin, street, zipcode, city FROM users WHERE id = '$userId'";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'GET') {
    $sql = "SELECT id, image, mail, name, phone, admin, street, zipcode, city FROM users;";
    echo $mySQL->Query($sql, true);
} else if ($request_method === 'PUT' && isset($_GET['id'])) {
    $userId = $_GET['id'];
    $user = json_decode(file_get_contents('php://input'));

    error_log($user->image);
    $base64data = explode(",", $user->image);
    $imageData = base64_decode($base64data[1]);
    $source = imagecreatefromstring($imageData);

    if (is_object($source) && $source instanceof \GdImage) {
        $savePath = $_SERVER["DOCUMENT_ROOT"] . "/../frontend/src/assets/img/";
        $fileName = date("Ymd_His_") . $user->name . ".jpg";
        $imageSave = imagejpeg($source, $savePath . $fileName);
        imagedestroy($source);
        $sql = "UPDATE users 
                SET name = '$user->name', image = '$fileName', mail = '$user->mail', phone = '$user->phone', street = '$user->street', zipcode = '$user->zipcode', city = '$user->city'
                WHERE id = '$userId'";
    } else {
        $sql = "UPDATE users 
                SET name = '$user->name', mail = '$user->mail', phone = '$user->phone', street = '$user->street', zipcode = '$user->zipcode', city = '$user->city'
                WHERE id = '$userId'";
    }

    $mySQL->Query($sql, false);
    $sql = "SELECT id, image, mail, name, phone, admin, street, zipcode, city FROM users WHERE id = '$userId'";
    echo $mySQL->Query($sql, true);
}
