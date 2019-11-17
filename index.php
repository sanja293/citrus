<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
    <meta name="viewport" content="width=C, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Citrus</title>
</head>

<?php

$dsn = "mysql:host=localhost;dbname=citrus";
$user = "root";
$passwd = "";
$pdo = new PDO($dsn, $user, $passwd);
$stm = $pdo->query("SELECT * FROM `products` WHERE 1");

$products = $stm->fetchAll();

?>

<body>
    <div class="wrapper">
        <div class="content">
            <h1 class="title">Catalog</h1>
            <div class="catalog">
                <?php
                foreach ($products as $product) {
                    echo "
                        <div class='card'>
                            <img class='image' src='images/{$product['image']}' />
                            <h3 class='title'>{$product['title']}</h3>
                            <p class='description'>{$product['description']}</p>
                        </div>
                        ";
                }
                ?>
            </div>
            <h1 class="title">Comments</h1>
            <div class="comments">
                <div class="comment">
                    <div class="header">
                        <span class="user">damjan</span>
                        <span class="date">11.11.1999.</span>
                    </div>
                    <p class="message">Ja sam bezobrazan</p>
                </div>
                <div class="comment">
                    <div class="header">
                        <span class="user">damjan</span>
                        <span class="date">11.11.1999.</span>
                    </div>
                    <p class="message">Ja sam bezobrazan</p>
                </div>
                <div class="comment">
                    <div class="header">
                        <span class="user">damjan</span>
                        <span class="date">11.11.1999.</span>
                    </div>
                    <p class="message">Ja sam bezobrazan</p>
                </div>
                <div class="comment">
                    <div class="header">
                        <span class="user">damjan</span>
                        <span class="date">11.11.1999.</span>
                    </div>
                    <p class="message">Ja sam bezobrazan</p>
                </div>
                <div class="comment">
                    <div class="header">
                        <span class="user">damjan</span>
                        <span class="date">11.11.1999.</span>
                    </div>
                    <p class="message">Ja sam bezobrazan</p>
                </div>
            </div>
            <h1 class="title">New Comment</h1>
            <div class="form">
                <div class="element">
                    <label for="name">Name</label>
                    <input class="input" id="name" type="text" placeholder="name" />
                </div>
                <div class="element">
                    <label for="email">Email</label>
                    <input class="input" id="email" type="email" placeholder="email" />
                </div>
                <div class="element">
                    <label for="message">Message</label>
                    <textarea class="input" id="message" rows="10" cols="50" placeholder="message"></textarea>
                </div>
                <div class="element">
                    <input class="" id="btn-submit" type="button" value="Submit" />
                    <input class="" id="btn-clear" type="button" value="Clear" />
                </div>

            </div>
        </div>
    </div>
</body>

</html>