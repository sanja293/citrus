<?php

// saving new comment
if (!empty($_POST['name']) and !empty($_POST['email']) and !empty($_POST['message'])) {

    include('connect.php');


    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["message"];

    $stm = $pdo->prepare("INSERT INTO `comments`( `name`, `email`, `message`) VALUES (?, ?, ?)");
    $save_result = $stm->execute([$name, $email, $message]);


    header("Location: index.php");
} else {
    echo 'Invalid data!';

    echo '<a style="
    display: block;
    width: 80px;
    height: 20px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    text-decoration: none;
    margin-top: 10px;
    font-weight: bold;" 
    href="index.php"
    >Back</a>';
}
