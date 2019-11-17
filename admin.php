<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles.css">
    <title>Citrus Admin</title>

</head>

<body>
    <?php

    include('connect.php');

    $stm = $pdo->query("SELECT * FROM `comments` WHERE status = \"new\"");
    $comments = $stm->fetchAll();

    ?>
    <table class="tg">
        <tr>
            <th class="tg-0lax">Name</th>
            <th class="tg-0lax">Email</th>
            <th class="tg-0lax">Message</th>
            <th class="tg-0lax">Date</th>
            <th class="tg-0lax">Status</th>
            <th class="tg-0lax">Action</th>
        </tr>
        <?php
        foreach ($comments as $comment) {
            echo "<tr>
            <td class='tg-0lax'>{$comment["name"]}</td>
            <td class='tg-0lax'>{$comment["email"]}</td>
            <td class='tg-0lax'>{$comment["message"]}</td>
            <td class='tg-0lax'>{$comment["date"]}</td>
            <td class='tg-0lax'>{$comment["status"]}</td>
            <td class='tg-0lax'>
                <form action='approve_comment.php' method='post'>
                    <input type='submit' value='Approve' />
                    <input type='hidden' name='comment_id' value='{$comment["id"]}' />
                </form>
            </td>
        </tr>";
        }
        ?>

    </table>
</body>

</html>