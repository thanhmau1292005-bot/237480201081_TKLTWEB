<?php include 'Connection.php'; ?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Khoa Sư phạm</title>
</head>
<body>
    <h2>Danh sách nhân sự - Khoa Sư phạm</h2>
    <a href="index.php">← Trang chủ</a><br><br>

    <?php
    // Lấy dữ liệu từ bảng khoa_supham
    $result = mysqli_query($conn, "SELECT * FROM khoa_supham");
    $count = mysqli_num_rows($result);
    
    echo "<p>Tổng số: <b>$count</b> nhân sự</p>";
    
    if ($count > 0) {
        echo "<table border='1' cellpadding='6' style='border-collapse: collapse;'>
        <tr style='background-color: #f0f0f0;'>
            <th>Mã NV</th>
            <th>Họ Tên</th>
            <th>Giới tính</th>
            <th>Chức Vụ</th>
            <th>Điện Thoại</th>
        </tr>";
        
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>
                <td>{$row['manv']}</td>
                <td>{$row['hoten']}</td>
                <td>{$row['gioitinh']}</td>
                <td>{$row['chucvu']}</td>
                <td>{$row['dienthoai']}</td>
            </tr>";
        }
        echo "</table>";
    } else {
        echo "<p>Chưa có dữ liệu nhân sự cho khoa này.</p>";
    }
    ?>
</body>
</html>