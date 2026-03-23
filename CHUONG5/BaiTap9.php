<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tvt_b9</title>
    <style>
        body {
            font-family: Arial;
            background: lightcyan;
            display: flex;
            flex-wrap: wrap;
        }
        h1 {
            width: 100%;
            text-align: center;
            color: red;
        }
        div {
            background-color: lightyellow;
            border: 3px solid #1c92d2;
            border-radius: 15px;
            padding: 20px;
            margin: 10px;
            width: 100px;
           
        }
    </style>
</head>
<body>
    <h1>BẢNG CỬU CHƯƠNG</h1>
    <?php
        for ($i = 1; $i <= 10; $i++) {
            echo "<div>";
            for ($j = 1; $j <= 10; $j++) {
                echo "$i x $j = " . str_pad($i * $j, 4, " ", STR_PAD_LEFT) . "<br>";
            }
            echo "</div>";
        }
    ?>
</body>
</html>
