<?php include 'Connection.php'; ?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Toàn Trường</title>
</head>
<body>
    <h2>Danh Sách Nhân Viên Toàn Trường</h2>
    <a href="index.php">← Trang chủ</a><br><br>

    <?php
    // Dùng UNION ALL để gộp dữ liệu từ 4 bảng lại
    // Tạo thêm một cột ảo 'donvi' để biết người đó từ bảng nào ra
    $sql = "
        SELECT manv, hoten, ngaysinh, gioitinh, chucvu, dienthoai, 'Khoa KT & CN' AS donvi FROM khoa_ktcn
        UNION ALL
        SELECT manv, hoten, ngaysinh, gioitinh, chucvu, dienthoai, 'Khoa Sư phạm' AS donvi FROM khoa_supham
        UNION ALL
        SELECT manv, hoten, ngaysinh, gioitinh, chucvu, dienthoai, 'Khoa NN&TS' AS donvi FROM khoa_nnts
        UNION ALL
        SELECT manv, hoten, ngaysinh, gioitinh, chucvu, dienthoai, 'Khoa Kinh tế và Luật' AS donvi FROM khoa_kinhte_luat
    ";

    $result = mysqli_query($conn, $sql);
    
    if (!$result) {
        die("Lỗi truy vấn: " . mysqli_error($conn));
    }

    $count = mysqli_num_rows($result);
    echo "<p>Tổng số toàn trường: <b>$count</b> nhân viên</p>";
    
    if ($count > 0) {
        echo "<table border='1' cellpadding='6' style='border-collapse: collapse;'>
        <tr style='background-color: #dce6f5;'>
            <th>Mã NV</th>
            <th>Họ Tên</th>
            <th>Ngày sinh</th>
            <th>Đơn vị (Khoa)</th>
            <th>Chức Vụ</th>
            <th>Điện Thoại</th>
        </tr>";
        
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>
                <td>{$row['manv']}</td>
                <td>{$row['hoten']}</td>
                <td>{$row['ngaysinh']}</td>
                <td><b>{$row['donvi']}</b></td>
                <td>{$row['chucvu']}</td>
                <td>{$row['dienthoai']}</td>
            </tr>";
        }
        echo "</table>";
    }
    ?>
</body>
</html>