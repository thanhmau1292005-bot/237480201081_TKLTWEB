<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tvt_b6</title>
    <style>
        table {
            width: 15%;
            border-collapse: collapse;
        }
        th, td {
            text-align: center;
            border: 1px solid black;
            padding: 5px;

        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>Số n</th>
            <th>Số n<sup>2</sup></th>
        </tr>
        <?php
            for ($n = 0; $n <= 50; $n++) {
                echo "<tr>";
                echo "<td>" . $n . "</td>";
                echo "<td>" . ($n * $n) . "</td>";
                echo "</tr>";
            }
        ?>
    </table>   
</body>
</html>
