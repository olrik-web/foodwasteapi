<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");
    header("Access-Control-Allow-Methods: *");
    header("Content-Type: application/json; charset=UTF-8");
    include_once("../classes/MySQL.php");
    $mySQL = new MySQL(true);

    $action = $_GET['action'];

// +----------------------------------------------------+
// | GET Methods being called with identifier "action" |
// +----------------------------------------------------+

    if ($action == "logout") {
        session_destroy();
        $response['authenticated'] = FALSE;
        echo json_encode($response);
    }

// +----------------------------------------------------+
// | POST Methods being called with identifier "action" |
// +----------------------------------------------------+


    // LOGIN
    if ($action == "login") {
        $loginObject = json_decode(file_get_contents('php://input'));
        $mail = $loginObject->mail;
        $password = $loginObject->password;

        // Get the users login information
        $sql = "SELECT * FROM users WHERE mail = '$mail' LIMIT 1";
        $result = $mySQL->Query($sql, false);

        // Check if the usernam exists
        if ($result->num_rows == 1) {
            $user = $result->fetch_object();
            // Check if it is the right password for that username
            if (password_verify($password, $user->password)) {
                $sql = "SELECT id, image, title, mail, name, phone FROM users WHERE id = '$user->id'";
                $user = $mySQL->Query($sql, false)->fetch_object();
                $response['authenticated'] = TRUE;
                $response['user'] = $user;
                echo json_encode($response);
            } else {
                $response['authenticated'] = FALSE;
                $response['error'] = "Wrong password";
                echo json_encode($response);
            }
        } else {
            $response['authenticated'] = FALSE;
            $response['error'] = "User doesn't exist";
            echo json_encode($response);
        }
    }


    // SIGN UP
    if ($action == "signup") {
        $newUser = json_decode(file_get_contents('php://input'));
        $mail = $newUser->mail;
        $password = $newUser->password;
        $passwordCheck = $newUser->passwordCheck;

        if (!empty($mail) && !empty($password)) {
            // Check if passwords are the same
            if ($password == $passwordCheck) {

                // Check if username already exists
                $sql = "SELECT id FROM users WHERE mail = '$mail'";
                $result = $mySQL->Query($sql, false);

                // If the username does not exist, then create a new user
                if ($result->num_rows == 0) {
                    $passEncrypt = password_hash($newUser->password, PASSWORD_DEFAULT);

                     $sql = "INSERT INTO users
                            (mail, name, password)
                            VALUES
                                ('$newUser->mail', '$newUser->name', '$passEncrypt')
                            ";
                    if ($mySQL->Query($sql, false) === TRUE) {
                        $sql = "SELECT id, image, title, mail, name, phone FROM users WHERE mail = '$mail'";
                        $user = $mySQL->Query($sql, false)->fetch_object();
                        $response['signupSuccess'] = TRUE;
                        $response['user'] = $user;
                        echo json_encode($response);
                    } else {
                        $response['signupSuccess'] = FALSE;
                        $response['error'] = "Signup failed. Please try again.";
                        echo json_encode($response);
                    }
                } else {
                    $response['signupSuccess'] = FALSE;
                    $response['error'] = "Signup failed. Username taken.";
                    echo json_encode($response);
                }
            } else {
                $response['signupSuccess'] = FALSE;
                $response['error'] = "Signup failed. Passwords not the same.";
                echo json_encode($response);
            }
        } else {
            $response['signupSuccess'] = FALSE;
            $response['error'] = "Signup failed. Please fill out all fields.";
            echo json_encode($response);
        }
    }



    ?>