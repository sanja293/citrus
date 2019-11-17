<?php

// saving new comment
if (!empty($_POST['comment_id'])) {

    include('connect.php');

    $comment_id = $_POST['comment_id'];

    $stm = $pdo->prepare("UPDATE `comments` SET `status`=\"approved\" WHERE id=?");
    $save_result = $stm->execute([$comment_id]);


    header("Location: admin.php");
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
