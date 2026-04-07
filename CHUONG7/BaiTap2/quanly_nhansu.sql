-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2026 lúc 05:30 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanly_nhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_kinhte_luat`
--

CREATE TABLE `khoa_kinhte_luat` (
  `manv` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `luongcb` decimal(10,2) DEFAULT NULL,
  `hesoluong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_kinhte_luat`
--

INSERT INTO `khoa_kinhte_luat` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `chucvu`, `dienthoai`, `luongcb`, `hesoluong`) VALUES
('NV007', 'Đặng Tuấn Anh', '1982-01-30', 'Nam', 'Trưởng khoa', '0966777888', 9500000.00, 4.4),
('NV016', 'Lâm Gia Huy', '1988-07-25', 'Nam', 'Giảng viên', '0944555666', 7000000.00, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_ktcn`
--

CREATE TABLE `khoa_ktcn` (
  `manv` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `luongcb` decimal(10,2) DEFAULT NULL,
  `hesoluong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_ktcn`
--

INSERT INTO `khoa_ktcn` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `chucvu`, `dienthoai`, `luongcb`, `hesoluong`) VALUES
('NV001', 'Nguyễn Văn An', '1985-03-15', 'Nam', 'Giảng viên', '0901234567', 8000000.00, 3),
('NV004', 'Phạm Thanh Thảo', '1992-05-12', 'Nữ', 'Giảng viên', '0933444555', 6500000.00, 2.67),
('NV008', 'Lý Hải Đăng', '1989-12-05', 'Nam', 'Phó khoa', '0977888999', 8500000.00, 3.66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_nnts`
--

CREATE TABLE `khoa_nnts` (
  `manv` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `luongcb` decimal(10,2) DEFAULT NULL,
  `hesoluong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_nnts`
--

INSERT INTO `khoa_nnts` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `chucvu`, `dienthoai`, `luongcb`, `hesoluong`) VALUES
('NV006', 'Vũ Thị Ngọc', '1995-10-10', 'Nữ', 'Chuyên viên', '0955666777', 5500000.00, 2.34),
('NV014', 'Trần Văn Hoàng', '1980-04-05', 'Nam', 'Trưởng khoa', '0933444555', 9500000.00, 4.4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_supham`
--

CREATE TABLE `khoa_supham` (
  `manv` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `luongcb` decimal(10,2) DEFAULT NULL,
  `hesoluong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_supham`
--

INSERT INTO `khoa_supham` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `chucvu`, `dienthoai`, `luongcb`, `hesoluong`) VALUES
('NV005', 'Bùi Hoàng Lĩnh', '1988-08-22', 'Nam', 'Giảng viên', '0944555666', 7000000.00, 3),
('NV009', 'Trần Kim Oanh', '1994-04-18', 'Nữ', 'Giảng viên', '0988999000', 6000000.00, 2.67),
('NV012', 'Võ Trọng Nghĩa', '1982-02-28', 'Nam', 'Phó khoa', '0922333444', 8500000.00, 3.66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` varchar(10) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(5) DEFAULT NULL,
  `donvi` varchar(100) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `luongcb` decimal(10,2) DEFAULT NULL,
  `hesoluong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `ngaysinh`, `gioitinh`, `donvi`, `chucvu`, `dienthoai`, `luongcb`, `hesoluong`) VALUES
('NV001', 'Nguyễn Văn An', '1985-03-15', 'Nam', 'Khoa CNTT', 'Giảng viên', '0901234567', 8000000.00, 3),
('NV002', 'Trần Thị Bình', '1990-07-20', 'Nữ', 'Phòng Kế toán', 'Kế toán viên', '0912345678', 6000000.00, 2.5),
('NV003', 'Lê Văn Cường', '1980-11-05', 'Nam', 'Ban Giám hiệu', 'Trưởng phòng', '0923456789', 10000000.00, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khoa_kinhte_luat`
--
ALTER TABLE `khoa_kinhte_luat`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `khoa_ktcn`
--
ALTER TABLE `khoa_ktcn`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `khoa_nnts`
--
ALTER TABLE `khoa_nnts`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `khoa_supham`
--
ALTER TABLE `khoa_supham`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
