CREATE DATABASE BTLLTTQ
use BTLLTTQ
-- 1. Bảng Nhân viên
CREATE TABLE NhanVien (
    MaNhanVien INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    SoDienThoai INT,
    Email VARCHAR(100),
    NgayBatDauLamViec DATE,
    MaPhongBan INT,
    MaChucVu INT,
    FOREIGN KEY (MaPhongBan) REFERENCES PhongBan(MaPhongBan),
    FOREIGN KEY (MaChucVu) REFERENCES ChucVu(MaChucVu)
);

-- 2. Bảng Phòng ban
CREATE TABLE PhongBan (
    MaPhongBan INT PRIMARY KEY,
    TenPhongBan NVARCHAR(100),
    SoLuongNhanVien INT,
    TruongPhong NVARCHAR(100)
);

-- 3. Bảng Hợp đồng lao động
CREATE TABLE HopDongLaoDong (
    MaHopDong INT PRIMARY KEY,
    LoaiHopDong NVARCHAR(50),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    LuongHopDong DECIMAL(18, 2),
    MaNhanVien INT,
    NoiDungHopDong NVARCHAR(255),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 4. Bảng Khen thưởng / Kỷ luật
CREATE TABLE KT_KL (
    MaSuKien INT PRIMARY KEY,
    LoaiSuKien NVARCHAR(50),
    NgayDienRa DATE,
    LyDo NVARCHAR(255),
);


-- 5. Bảng Chi tiết khen thưởng / kỷ luật
CREATE TABLE ChiTietKT_KL (
    MaNhanVien INT,
    MaSuKien INT,
    ChiTiet NVARCHAR(255),
    TienThuongPhat DECIMAL(18, 2),
    PRIMARY KEY (MaNhanVien, MaSuKien),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien),
    FOREIGN KEY (MaSuKien) REFERENCES KT_KL(MaSuKien)
);

-- 6. Bảng Chấm công
CREATE TABLE ChamCong (
    MaChamCong INT PRIMARY KEY,
    NgayChamCong DATE,
    GioVao TIME,
    GioRa TIME,
    MaNhanVien INT,
    KetQuaChamCong NVARCHAR(50),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 7. Bảng Dự án
CREATE TABLE DuAn (
    MaDuAn INT PRIMARY KEY,
    TenDuAn NVARCHAR(100),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    NganSach DECIMAL(18, 2),
    TrangThai NVARCHAR(50),
    MoTa NVARCHAR(255)
);

-- 8. Bảng Chi tiết dự án
CREATE TABLE ChiTietDuAn (
    MaNhanVien INT,
    MaDuAn INT,
    ThoiHanDuAn DATE,
    DanhGia NVARCHAR(100),
    VaiTro NVARCHAR(50),
    PRIMARY KEY (MaNhanVien, MaDuAn),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien),
    FOREIGN KEY (MaDuAn) REFERENCES DuAn(MaDuAn)
);

-- 9. Bảng Đào tạo
CREATE TABLE DaoTao (
    MaDaoTao INT PRIMARY KEY,
    TenKhoa NVARCHAR(100),
    NoiDung NVARCHAR(255), 
    NgayBatDau DATE,
    NgayKetThuc DATE,
    ChiPhi DECIMAL(18, 2)
);

-- 10. Bảng Chi tiết khóa đào tạo
CREATE TABLE ChiTietKhoaDaoTao (
    MaNhanVien INT,
    MaDaoTao INT,
    ThoiGianDuKien INT,
    DanhGiaKhoa NVARCHAR(100),
    PRIMARY KEY (MaNhanVien, MaDaoTao),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien),
    FOREIGN KEY (MaDaoTao) REFERENCES DaoTao(MaDaoTao)
);

-- 11. Bảng Bảo hiểm
CREATE TABLE BaoHiem (
    MaBaoHiem INT PRIMARY KEY,
    NgayDong DATE,
    NgayHetHan DATE,
    MucDong DECIMAL(18, 2),
    MaNhanVien INT,
    TenBaoHiem NVARCHAR(100),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 12. Bảng Chức vụ
CREATE TABLE ChucVu (
    MaChucVu INT PRIMARY KEY,
    TenChucVu NVARCHAR(100),
    LuongChucVu DECIMAL(18, 2)
);

-- 13. Bảng Sơ yếu lý lịch
CREATE TABLE SoYeuLyLich (
    MaNhanVien INT PRIMARY KEY,
    TrinhDoHocVan NVARCHAR(255),
    KinhNghiem NVARCHAR(255),
    KyNang NVARCHAR(255),
    ChungChi NVARCHAR(255),
    NgoaiNgu NVARCHAR(100),
    NgayTao DATE,
    GioiTinh NVARCHAR(10),
    QueQuan NVARCHAR(255),
    GiaCanh NVARCHAR(255),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 14. Bảng Phiếu lương
CREATE TABLE PhieuLuong (
    MaPhieuLuong INT PRIMARY KEY,
    NgayTinhLuong DATE,
    LuongCoBan DECIMAL(18, 2),
    LuongNhanDuoc DECIMAL(18, 2),
    TrangThaiTraLuong NVARCHAR(50),
	MaNhanVien INT,
	FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 15. Bảng Thanh toán
CREATE TABLE ThanhToan (
    MaGiaoDich NVARCHAR(100) PRIMARY KEY,
    NgayGiaoDich DATE,
    GiaTri DECIMAL(18, 2),
	NoiDung NVARCHAR(255),
	MaNhanVien INT,
	FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- 16. Bảng Tài khoản
CREATE TABLE TaiKhoan (
    TenDangNhap NVARCHAR(100) PRIMARY KEY,
    MatKhau NVARCHAR(255),
    VaiTro NVARCHAR(50),
    TrangThaiTaiKhoan NVARCHAR(50),
    NgayTao DATE
);

-- 17. Bảng Lịch sử hoạt động
CREATE TABLE LichSuHoatDong (
    MaHoatDong INT IDENTITY(1,1) PRIMARY KEY,
    LoaiHoatDong NVARCHAR(100),
    ThoiGian DATETIME,
    TenDangNhap NVARCHAR(100),
    GhiChu NVARCHAR(255),
    FOREIGN KEY (TenDangNhap) REFERENCES TaiKhoan(TenDangNhap)
);
INSERT INTO PhongBan (MaPhongBan, TenPhongBan, SoLuongNhanVien, TruongPhong) VALUES
(1, N'Nhân sự', 0, N''),
(2, N'Tài chính - kế toán', 0, N''),
(3, N'Marketing', 0, N''),
(4, N'Vận hành', 0, N''),
(5, N'Công nghệ thông tin', 0, N''),
(6, N'Nghiên cứu và phát triển', 0, N''),
(7, N'Chăm sóc khách hàng', 0, N'');
INSERT INTO ChucVu (MaChucVu, TenChucVu, LuongChucVu) VALUES
(101, N'Trưởng phòng nhân sự', 15000000), 
(102, N'Chuyên viên nhân sự', 10000000),  
(103, N'Nhân viên tuyển dụng', 8000000), 
(201, N'Trưởng phòng tài chính', 15000000),
(202, N'Kế toán trưởng', 12000000),   
(203, N'Nhân viên kế toán', 9000000),    
(301, N'Trưởng phòng marketing', 15000000), 
(302, N'Chuyên viên marketing', 11000000),  
(303, N'Nhân viên truyền thông', 8000000), 
(401, N'Trưởng phòng vận hành', 15000000), 
(402, N'Chuyên viên vận hành', 10000000), 
(403, N'Nhân viên logistics', 8000000), 
(501, N'Trưởng phòng CNTT', 18000000),    
(502, N'Kỹ sư phần mềm', 13000000),        
(503, N'Quản trị mạng', 12000000),        
(601, N'Trưởng phòng NC&PT', 15000000),   
(602, N'Chuyên viên nghiên cứu', 11000000), 
(603, N'Kỹ sư phát triển sản phẩm', 12000000), 
(701, N'Trưởng phòng chăm sóc khách hàng', 14000000),
(702, N'Nhân viên chăm sóc khách hàng', 8000000),  
(703, N'Nhân viên hỗ trợ kỹ thuật', 9000000);     
INSERT INTO NhanVien (MaNhanVien, HoTen, NgaySinh, SoDienThoai, Email, NgayBatDauLamViec, MaPhongBan, MaChucVu) VALUES
(1, N'Nguyễn Văn An', '1990-01-15', 0912345678, 'an.nguyen@example.com', '2022-01-10', 1, 102),
(2, N'Trần Thị Bình', '1985-03-22', 0912345679, 'binh.tran@example.com', '2021-06-15', 1, 103),
(3, N'Lê Văn Cường', '1992-05-30', 0912345680, 'cuong.le@example.com', '2023-02-01', 1, 101),
(4, N'Phạm Văn Dũng', '1988-07-12', 0912345681, 'dung.pham@example.com', '2020-08-20', 2, 203),
(5, N'Nguyễn Thị Hoa', '1995-09-05', 0912345682, 'hoa.nguyen@example.com', '2022-11-01', 2, 202),
(6, N'Trần Văn Hùng', '1991-04-20', 0912345683, 'hung.tran@example.com', '2023-03-15', 2, 201),
(7, N'Lê Thị Lan', '1989-12-10', 0912345684, 'lan.le@example.com', '2021-04-25', 3, 302),
(8, N'Nguyễn Văn Minh', '1994-06-30', 0912345685, 'minh.nguyen@example.com', '2022-05-10', 3, 301),
(9, N'Trần Thị Nga', '1993-11-15', 0912345686, 'nga.tran@example.com', '2023-07-05', 3, 303),
(10, N'Phạm Văn Phát', '1987-10-12', 0912345687, 'phat.pham@example.com', '2021-09-20', 4, 401),
(11, N'Lê Thị Quỳnh', '1990-08-19', 0912345688, 'quynh.le@example.com', '2022-01-10', 4, 402),
(12, N'Nguyễn Văn Rồng', '1986-02-05', 0912345689, 'rong.nguyen@example.com', '2023-02-15', 4, 403),
(13, N'Trần Văn Sơn', '1991-07-25', 0912345690, 'son.tran@example.com', '2021-03-30', 5, 503),
(14, N'Nguyễn Thị Thanh', '1995-01-12', 0912345691, 'thanh.nguyen@example.com', '2022-05-20', 5, 502),
(15, N'Phạm Văn Tài', '1988-03-15', 0912345692, 'tai.pham@example.com', '2023-06-01', 5, 501),
(16, N'Lê Thị Út', '1993-12-18', 0912345693, 'ut.le@example.com', '2021-08-25', 6, 603),
(17, N'Nguyễn Văn Vũ', '1992-04-30', 0912345694, 'vu.nguyen@example.com', '2022-02-10', 6, 602),
(18, N'Trần Thị Yến', '1990-11-25', 0912345695, 'yen.tran@example.com', '2023-04-15', 6, 601),
(19, N'Lê Văn Z', '1989-10-12', 0912345696, 'z.le@example.com', '2021-03-10', 7, 702),
(20, N'Nguyễn Thị Bích', '1994-08-30', 0912345697, 'bich.nguyen@example.com', '2022-09-20', 7, 701),
(21, N'Trần Văn Cường', '1986-05-22', 0912345698, 'cuong.tran@example.com', '2023-06-25', 7, 703),
(22, N'Phạm Văn Dương', '1995-01-05', 0912345699, 'duong.pham@example.com', '2021-07-15', 1, 102),
(23, N'Lê Thị Hằng', '1991-03-15', 0912345700, 'hang.le@example.com', '2022-11-01', 1, 103),
(24, N'Nguyễn Văn Kiên', '1987-12-10', 0912345701, 'kien.nguyen@example.com', '2023-08-20', 1, 101),
(25, N'Trần Văn Lợi', '1992-06-15', 0912345702, 'loi.tran@example.com', '2021-04-30', 2, 203),
(26, N'Lê Thị Mai', '1988-10-30', 0912345703, 'mai.le@example.com', '2022-05-15', 2, 202),
(27, N'Nguyễn Văn Nam', '1990-09-05', 0912345704, 'nam.nguyen@example.com', '2023-09-01', 2, 201),
(28, N'Phạm Văn Oanh', '1994-07-20', 0912345705, 'oanh.pham@example.com', '2021-06-10', 3, 302),
(29, N'Lê Thị Phượng', '1993-03-12', 0912345706, 'phuong.le@example.com', '2022-08-25', 3, 301),
(30, N'Nguyễn Văn Quang', '1986-01-15', 0912345707, 'quang.nguyen@example.com', '2023-02-20', 3, 303),
(31, N'Trần Văn Rạng', '1995-11-30', 0912345708, 'rang.tran@example.com', '2021-07-01', 4, 401),
(32, N'Lê Thị Sương', '1992-04-18', 0912345709, 'suong.le@example.com', '2022-03-10', 4, 402),
(33, N'Nguyễn Văn Thịnh', '1989-12-05', 0912345710, 'thinh.nguyen@example.com', '2023-06-15', 4, 403),
(34, N'Phạm Văn Uy', '1990-03-20', 0912345711, 'uy.pham@example.com', '2021-09-10', 5, 503),
(35, N'Nguyễn Thị Vân', '1993-06-15', 0912345712, 'van.nguyen@example.com', '2022-11-20', 5, 502),
(36, N'Trần Văn Vũ', '1988-08-25', 0912345713, 'vu.tran@example.com', '2023-01-10', 5, 501),
(37, N'Lê Thị Xuân', '1991-09-30', 0912345714, 'xuan.le@example.com', '2021-02-15', 6, 603),
(38, N'Nguyễn Văn Y', '1992-03-05', 0912345715, 'y.nguyen@example.com', '2022-06-05', 6, 602),
(39, N'Trần Thị Z', '1986-12-15', 0912345716, 'z.tran@example.com', '2023-07-25', 6, 601),
(40, N'Phạm Văn A1', '1994-05-18', 0912345717, 'a1.pham@example.com', '2021-08-20', 7, 702),
(41, N'Lê Thị B1', '1990-02-10', 0912345718, 'b1.le@example.com', '2022-09-15', 7, 701),
(42, N'Nguyễn Văn C1', '1989-07-22', 0912345719, 'c1.nguyen@example.com', '2023-10-10', 7, 703),
(43, N'Trần Thị D1', '1995-11-05', 0912345720, 'd1.tran@example.com', '2021-11-30', 1, 102),
(44, N'Phạm Văn E1', '1988-06-15', 0912345721, 'e1.pham@example.com', '2022-12-01', 1, 103),
(45, N'Nguyễn Thị F1', '1991-01-30', 0912345722, 'f1.nguyen@example.com', '2023-05-25', 1, 101),
(46, N'Lê Văn G1', '1990-08-15', 0912345723, 'g1.le@example.com', '2021-07-20', 2, 203),
(47, N'Nguyễn Văn H1', '1994-03-25', 0912345724, 'h1.nguyen@example.com', '2022-01-15', 2, 202),
(48, N'Trần Thị I1', '1993-10-05', 0912345725, 'i1.tran@example.com', '2023-02-28', 2, 201),
(49, N'Phạm Văn J1', '1986-04-20', 0912345726, 'j1.pham@example.com', '2021-03-15', 3, 302),
(50, N'Nguyễn Thị K1', '1992-12-30', 0912345727, 'k1.nguyen@example.com', '2022-07-05', 3, 301);
INSERT INTO HopDongLaoDong (MaHopDong, LoaiHopDong, NgayBatDau, NgayKetThuc, LuongHopDong, MaNhanVien, NoiDungHopDong) VALUES
(1, N'Thường', '2020-01-10', '2025-01-10', 10000000.00, 1, N'Hợp đồng lao động chính thức.'),
(2, N'Thường', '2021-06-15', '2024-06-15', 8000000.00, 2, N'Hợp đồng lao động chính thức.'),
(3, N'Thường', '2023-02-01', '2025-02-01', 9000000.00, 3, N'Hợp đồng lao động chính thức.'),
(4, N'Thường', '2019-08-20', '2024-08-20', 12000000.00, 4, N'Hợp đồng lao động chính thức.'),
(5, N'Thường', '2022-11-01', '2025-11-01', 9500000.00, 5, N'Hợp đồng lao động chính thức.'),
(6, N'Thường', '2020-03-15', '2023-03-15', 11000000.00, 6, N'Hợp đồng lao động chính thức.'),
(7, N'Thử việc', '2023-05-10', '2023-11-10', 7000000.00, 7, N'Hợp đồng thử việc 6 tháng.'),
(8, N'Thường', '2021-05-10', '2025-05-10', 9000000.00, 8, N'Hợp đồng lao động chính thức.'),
(9, N'Thường', '2023-07-05', '2025-07-05', 8500000.00, 9, N'Hợp đồng lao động chính thức.'),
(10, N'Thường', '2021-09-20', '2024-09-20', 9500000.00, 10, N'Hợp đồng lao động chính thức.'),
(11, N'Thường', '2022-01-10', '2025-01-10', 7500000.00, 11, N'Hợp đồng lao động chính thức.'),
(12, N'Thường', '2023-02-15', '2025-02-15', 8200000.00, 12, N'Hợp đồng lao động chính thức.'),
(13, N'Thường', '2021-03-30', '2024-03-30', 9000000.00, 13, N'Hợp đồng lao động chính thức.'),
(14, N'Thường', '2022-05-20', '2025-05-20', 7400000.00, 14, N'Hợp đồng lao động chính thức.'),
(15, N'Thường', '2023-06-01', '2025-06-01', 8000000.00, 15, N'Hợp đồng lao động chính thức.'),
(16, N'Thử việc', '2021-08-25', '2022-02-25', 6500000.00, 16, N'Hợp đồng thử việc 6 tháng.'),
(17, N'Thường', '2022-02-10', '2025-02-10', 7200000.00, 17, N'Hợp đồng lao động chính thức.'),
(18, N'Thường', '2023-04-15', '2025-04-15', 7000000.00, 18, N'Hợp đồng lao động chính thức.'),
(19, N'Thường', '2021-03-10', '2024-03-10', 7500000.00, 19, N'Hợp đồng lao động chính thức.'),
(20, N'Thường', '2022-09-20', '2024-09-20', 8200000.00, 20, N'Hợp đồng lao động chính thức.'),
(21, N'Thử việc', '2021-04-30', '2021-10-30', 6000000.00, 21, N'Hợp đồng thử việc 6 tháng.'),
(22, N'Thường', '2022-11-01', '2025-11-01', 7500000.00, 22, N'Hợp đồng lao động chính thức.'),
(23, N'Thường', '2021-07-15', '2024-07-15', 9000000.00, 23, N'Hợp đồng lao động chính thức.'),
(24, N'Thường', '2022-01-15', '2024-01-15', 7000000.00, 24, N'Hợp đồng lao động chính thức.'),
(25, N'Thường', '2021-06-10', '2024-06-10', 6800000.00, 25, N'Hợp đồng lao động chính thức.'),
(26, N'Thường', '2023-09-01', '2025-09-01', 6500000.00, 26, N'Hợp đồng lao động chính thức.'),
(27, N'Thường', '2021-06-25', '2024-06-25', 7600000.00, 27, N'Hợp đồng lao động chính thức.'),
(28, N'Thường', '2022-05-15', '2025-05-15', 7400000.00, 28, N'Hợp đồng lao động chính thức.'),
(29, N'Thường', '2023-06-15', '2024-06-15', 7200000.00, 29, N'Hợp đồng lao động chính thức.'),
(30, N'Thường', '2021-07-20', '2025-07-20', 6800000.00, 30, N'Hợp đồng lao động chính thức.'),
(31, N'Thường', '2021-09-10', '2024-09-10', 7000000.00, 31, N'Hợp đồng lao động chính thức.'),
(32, N'Thường', '2022-03-10', '2025-03-10', 8000000.00, 32, N'Hợp đồng lao động chính thức.'),
(33, N'Thường', '2023-06-15', '2024-06-15', 7500000.00, 33, N'Hợp đồng lao động chính thức.'),
(34, N'Thường', '2021-07-15', '2024-07-15', 7000000.00, 34, N'Hợp đồng lao động chính thức.'),
(35, N'Thường', '2022-06-20', '2025-06-20', 6500000.00, 35, N'Hợp đồng lao động chính thức.'),
(36, N'Thường', '2023-02-15', '2025-02-15', 7200000.00, 36, N'Hợp đồng lao động chính thức.'),
(37, N'Thử việc', '2021-02-15', '2021-08-15', 6000000.00, 37, N'Hợp đồng thử việc 6 tháng.'),
(38, N'Thường', '2022-05-25', '2025-05-25', 6800000.00, 38, N'Hợp đồng lao động chính thức.'),
(39, N'Thường', '2023-07-25', '2025-07-25', 7000000.00, 39, N'Hợp đồng lao động chính thức.'),
(40, N'Thường', '2021-08-20', '2024-08-20', 7800000.00, 40, N'Hợp đồng lao động chính thức.'),
(41, N'Thường', '2022-09-15', '2025-09-15', 8500000.00, 41, N'Hợp đồng lao động chính thức.'),
(42, N'Thường', '2023-10-10', '2025-10-10', 7000000.00, 42, N'Hợp đồng lao động chính thức.'),
(43, N'Thường', '2021-11-30', '2024-11-30', 9000000.00, 43, N'Hợp đồng lao động chính thức.'),
(44, N'Thường', '2022-12-01', '2025-12-01', 6500000.00, 44, N'Hợp đồng lao động chính thức.'),
(45, N'Thường', '2023-05-25', '2024-05-25', 6000000.00, 45, N'Hợp đồng lao động chính thức.'),
(46, N'Thường', '2021-07-20', '2024-07-20', 6600000.00, 46, N'Hợp đồng lao động chính thức.'),
(47, N'Thường', '2022-01-15', '2024-01-15', 7000000.00, 47, N'Hợp đồng lao động chính thức.'),
(48, N'Thường', '2023-02-28', '2025-02-28', 6400000.00, 48, N'Hợp đồng lao động chính thức.'),
(49, N'Thường', '2021-03-15', '2024-03-15', 6800000.00, 49, N'Hợp đồng lao động chính thức.'),
(50, N'Thường', '2022-07-05', '2025-07-05', 6000000.00, 50, N'Hợp đồng lao động chính thức.');
INSERT INTO ChamCong (MaChamCong, NgayChamCong, GioVao, GioRa, MaNhanVien, KetQuaChamCong) VALUES
(1, '2023-10-01', '08:00', '17:00', 1, N'Đúng giờ'),
(2, '2023-10-01', '08:15', '17:05', 2, N'Đúng giờ'),
(3, '2023-10-01', '08:05', '17:00', 3, N'Đúng giờ'),
(4, '2023-10-01', '08:30', '17:30', 4, N'Đúng giờ'),
(5, '2023-10-01', '08:00', '17:00', 5, N'Đúng giờ'),
(6, '2023-10-01', '09:00', '17:30', 6, N'Trách nhiệm'),
(7, '2023-10-01', '08:10', '16:50', 7, N'Đúng giờ'),
(8, '2023-10-01', '08:00', '17:00', 8, N'Đúng giờ'),
(9, '2023-10-01', '08:20', '17:15', 9, N'Đúng giờ'),
(10, '2023-10-01', '08:00', '17:00', 10, N'Đúng giờ'),
(11, '2023-10-01', '08:00', '17:00', 11, N'Đúng giờ'),
(12, '2023-10-01', '08:05', '17:05', 12, N'Đúng giờ'),
(13, '2023-10-01', '08:00', '17:00', 13, N'Đúng giờ'),
(14, '2023-10-01', '08:00', '17:00', 14, N'Đúng giờ'),
(15, '2023-10-01', '08:00', '17:00', 15, N'Đúng giờ'),
(16, '2023-10-01', '08:10', '17:05', 16, N'Đúng giờ'),
(17, '2023-10-01', '08:00', '17:00', 17, N'Đúng giờ'),
(18, '2023-10-01', '08:00', '17:00', 18, N'Đúng giờ'),
(19, '2023-10-01', '08:30', '17:30', 19, N'Đúng giờ'),
(20, '2023-10-01', '08:00', '17:00', 20, N'Đúng giờ'),
(21, '2023-10-01', '09:00', '17:00', 21, N'Đi muộn'),
(22, '2023-10-01', '08:00', '17:00', 22, N'Đúng giờ'),
(23, '2023-10-01', '08:05', '17:00', 23, N'Đúng giờ'),
(24, '2023-10-01', '08:00', '17:00', 24, N'Đúng giờ'),
(25, '2023-10-01', '08:15', '17:00', 25, N'Đúng giờ'),
(26, '2023-10-01', '08:00', '17:00', 26, N'Đúng giờ'),
(27, '2023-10-01', '08:00', '17:00', 27, N'Đúng giờ'),
(28, '2023-10-01', '08:00', '17:00', 28, N'Đúng giờ'),
(29, '2023-10-01', '08:00', '17:00', 29, N'Đúng giờ'),
(30, '2023-10-01', '08:00', '17:00', 30, N'Đúng giờ'),
(31, '2023-10-01', '08:00', '17:00', 31, N'Đúng giờ'),
(32, '2023-10-01', '08:00', '17:00', 32, N'Đúng giờ'),
(33, '2023-10-01', '08:00', '17:00', 33, N'Đúng giờ'),
(34, '2023-10-01', '08:05', '17:05', 34, N'Đúng giờ'),
(35, '2023-10-01', '08:00', '17:00', 35, N'Đúng giờ'),
(36, '2023-10-01', '08:00', '17:00', 36, N'Đúng giờ'),
(37, '2023-10-01', '08:00', '17:00', 37, N'Đúng giờ'),
(38, '2023-10-01', '08:10', '17:05', 38, N'Đúng giờ'),
(39, '2023-10-01', '08:00', '17:00', 39, N'Đúng giờ'),
(40, '2023-10-01', '08:15', '17:00', 40, N'Đúng giờ'),
(41, '2023-10-01', '08:00', '17:00', 41, N'Đúng giờ'),
(42, '2023-10-01', '08:00', '17:00', 42, N'Đúng giờ'),
(43, '2023-10-01', '08:00', '17:00', 43, N'Đúng giờ'),
(44, '2023-10-01', '08:05', '17:05', 44, N'Đúng giờ'),
(45, '2023-10-01', '08:00', '17:00', 45, N'Đúng giờ'),
(46, '2023-10-01', '08:00', '17:00', 46, N'Đúng giờ'),
(47, '2023-10-01', '08:00', '17:00', 47, N'Đúng giờ'),
(48, '2023-10-01', '08:00', '17:00', 48, N'Đúng giờ'),
(49, '2023-10-01', '08:15', '17:00', 49, N'Đúng giờ'),
(50, '2023-10-01', '08:00', '17:00', 50, N'Đúng giờ');
INSERT INTO DuAn (MaDuAn, TenDuAn, NgayBatDau, NgayKetThuc, NganSach, TrangThai, MoTa) VALUES
(1, N'Dự án 1', '2023-01-01', '2023-06-30', 50000000.00, N'Hoàn thành', N'Dự án nhằm nâng cao hệ thống quản lý dữ liệu.'),
(2, N'Dự án 2', '2023-02-15', '2023-08-15', 75000000.00, N'Đang thực hiện', N'Dự án phát triển phần mềm quản lý bán hàng.'),
(3, N'Dự án 3', '2023-03-01', '2023-09-01', 30000000.00, N'Hoàn thành', N'Xây dựng website thương mại điện tử.'),
(4, N'Dự án 4', '2023-04-01', '2024-04-01', 90000000.00, N'Đang thực hiện', N'Dự án nâng cấp hạ tầng CNTT.'),
(5, N'Dự án 5', '2023-05-01', '2023-10-01', 20000000.00, N'Đang thực hiện', N'Triển khai hệ thống CRM cho công ty.'),
(6, N'Dự án 6', '2023-06-01', '2023-12-01', 60000000.00, N'Hoàn thành', N'Dự án nghiên cứu thị trường mới.'),
(7, N'Dự án 7', '2023-07-01', '2024-01-01', 40000000.00, N'Đang thực hiện', N'Dự án mở rộng quy mô kinh doanh.'),
(8, N'Dự án 8', '2023-08-01', '2024-02-01', 50000000.00, N'Đang thực hiện', N'Triển khai hệ thống bảo mật cho dữ liệu.'),
(9, N'Dự án 9', '2023-09-01', '2024-03-01', 80000000.00, N'Hoàn thành', N'Dự án xây dựng ứng dụng di động.'),
(10, N'Dự án 10', '2023-10-01', '2024-04-01', 25000000.00, N'Đang thực hiện', N'Dự án cải tiến quy trình làm việc nội bộ.');
INSERT INTO ChiTietDuAn (MaNhanVien, MaDuAn, ThoiHanDuAn, DanhGia, VaiTro) VALUES
(1, 1, '2023-01-01', N'Hoàn thành xuất sắc', N'Trưởng phòng'),
(2, 1, '2023-01-01', N'Hoàn thành tốt', N'Nhân viên dự án'),
(3, 2, '2023-02-15', N'Đang thực hiện', N'Trưởng phòng'),
(4, 2, '2023-02-15', N'Đang thực hiện', N'Nhân viên dự án'),
(5, 3, '2023-03-01', N'Hoàn thành xuất sắc', N'Nhân viên thiết kế'),
(6, 3, '2023-03-01', N'Hoàn thành tốt', N'Nhân viên phát triển'),
(7, 4, '2023-04-01', N'Đang thực hiện', N'Quản lý dự án'),
(8, 4, '2023-04-01', N'Đang thực hiện', N'Nhân viên IT'),
(9, 5, '2023-05-01', N'Đang thực hiện', N'Nhân viên marketing'),
(10, 5, '2023-05-01', N'Đang thực hiện', N'Nhân viên bán hàng'),
(11, 6, '2023-06-01', N'Hoàn thành xuất sắc', N'Trưởng nhóm phát triển'),
(12, 6, '2023-06-01', N'Hoàn thành tốt', N'Nhân viên kiểm thử'),
(13, 7, '2023-07-01', N'Đang thực hiện', N'Trưởng phòng'),
(14, 7, '2023-07-01', N'Đang thực hiện', N'Nhân viên triển khai'),
(15, 8, '2023-08-01', N'Đang thực hiện', N'Trưởng nhóm'),
(16, 8, '2023-08-01', N'Đang thực hiện', N'Nhân viên hỗ trợ'),
(17, 9, '2023-09-01', N'Hoàn thành xuất sắc', N'Nhân viên phát triển'),
(18, 9, '2023-09-01', N'Hoàn thành tốt', N'Nhân viên thiết kế'),
(19, 10, '2023-10-01', N'Đang thực hiện', N'Quản lý dự án'),
(20, 10, '2023-10-01', N'Đang thực hiện', N'Nhân viên hỗ trợ'),
(21, 1, '2023-01-01', N'Hoàn thành tốt', N'Nhân viên marketing'),
(22, 2, '2023-02-15', N'Đang thực hiện', N'Nhân viên tài chính'),
(23, 3, '2023-03-01', N'Hoàn thành tốt', N'Nhân viên phát triển'),
(24, 4, '2023-04-01', N'Đang thực hiện', N'Nhân viên thiết kế'),
(25, 5, '2023-05-01', N'Đang thực hiện', N'Nhân viên triển khai'),
(26, 6, '2023-06-01', N'Hoàn thành xuất sắc', N'Nhân viên kiểm thử'),
(27, 7, '2023-07-01', N'Hoàn thành tốt', N'Nhân viên hỗ trợ'),
(28, 8, '2023-08-01', N'Đang thực hiện', N'Nhân viên phát triển'),
(29, 9, '2023-09-01', N'Hoàn thành tốt', N'Nhân viên thiết kế'),
(30, 10, '2023-10-01', N'Hoàn thành xuất sắc', N'Nhân viên tài chính'),
(31, 1, '2023-01-01', N'Hoàn thành tốt', N'Nhân viên marketing'),
(32, 2, '2023-02-15', N'Hoàn thành xuất sắc', N'Nhân viên phát triển'),
(33, 3, '2023-03-01', N'Đang thực hiện', N'Nhân viên thiết kế'),
(34, 4, '2023-04-01', N'Đang thực hiện', N'Nhân viên hỗ trợ'),
(35, 5, '2023-05-01', N'Hoàn thành xuất sắc', N'Nhân viên tài chính'),
(36, 6, '2023-06-01', N'Hoàn thành tốt', N'Nhân viên triển khai'),
(37, 7, '2023-07-01', N'Hoàn thành tốt', N'Nhân viên marketing'),
(38, 8, '2023-08-01', N'Đang thực hiện', N'Nhân viên phát triển'),
(39, 9, '2023-09-01', N'Đang thực hiện', N'Nhân viên kiểm thử'),
(40, 10, '2023-10-01', N'Hoàn thành xuất sắc', N'Nhân viên thiết kế'),
(41, 1, '2023-01-01', N'Hoàn thành tốt', N'Nhân viên hỗ trợ'),
(42, 2, '2023-02-15', N'Đang thực hiện', N'Nhân viên tài chính'),
(43, 3, '2023-03-01', N'Hoàn thành tốt', N'Nhân viên phát triển'),
(44, 4, '2023-04-01', N'Đang thực hiện', N'Nhân viên hỗ trợ'),
(45, 5, '2023-05-01', N'Hoàn thành xuất sắc', N'Nhân viên marketing'),
(46, 6, '2023-06-01', N'Đang thực hiện', N'Nhân viên phát triển'),
(47, 7, '2023-07-01', N'Hoàn thành tốt', N'Nhân viên hỗ trợ'),
(48, 8, '2023-08-01', N'Đang thực hiện', N'Nhân viên tài chính'),
(49, 9, '2023-09-01', N'Hoàn thành tốt', N'Nhân viên kiểm thử'),
(50, 10, '2023-10-01', N'Hoàn thành xuất sắc', N'Nhân viên hỗ trợ');
INSERT INTO DaoTao (MaDaoTao, TenKhoa, NoiDung, NgayBatDau, NgayKetThuc, ChiPhi) VALUES
(1, N'Khóa Đào Tạo Kỹ Năng Giao Tiếp', N'Học cách giao tiếp hiệu quả trong công việc', '2023-01-10', '2023-01-20', 1500000),
(2, N'Khóa Đào Tạo Quản Lý Dự Án', N'Quản lý dự án và phát triển kỹ năng lãnh đạo', '2023-02-01', '2023-02-10', 2000000),
(3, N'Khóa Đào Tạo Kỹ Năng Lãnh Đạo', N'Trở thành nhà lãnh đạo hiệu quả', '2023-03-05', '2023-03-15', 1800000),
(4, N'Khóa Đào Tạo Chăm Sóc Khách Hàng', N'Nâng cao kỹ năng chăm sóc khách hàng', '2023-04-01', '2023-04-10', 1200000),
(5, N'Khóa Đào Tạo Marketing Online', N'Chiến lược marketing trên các nền tảng trực tuyến', '2023-05-01', '2023-05-15', 2500000),
(6, N'Khóa Đào Tạo Kỹ Thuật Phân Tích Dữ Liệu', N'Học cách phân tích và xử lý dữ liệu', '2023-06-01', '2023-06-10', 1700000),
(7, N'Khóa Đào Tạo An Ninh Thông Tin', N'Triển khai và bảo vệ an ninh thông tin', '2023-07-01', '2023-07-10', 2300000),
(8, N'Khóa Đào Tạo Kỹ Năng Thuyết Trình', N'Nâng cao kỹ năng thuyết trình', '2023-08-01', '2023-08-10', 1400000),
(9, N'Khóa Đào Tạo Kỹ Năng Làm Việc Nhóm', N'Học cách làm việc nhóm hiệu quả', '2023-09-01', '2023-09-10', 1600000),
(10, N'Khóa Đào Tạo Quản Trị Nhân Sự', N'Những kỹ năng cần thiết trong quản trị nhân sự', '2023-10-01', '2023-10-15', 1900000);
INSERT INTO ChiTietKhoaDaoTao (MaNhanVien, MaDaoTao, ThoiGianDuKien, DanhGiaKhoa) VALUES
(1, 1, 5, N'Khá'),
(2, 2, 7, N'Xuất sắc'),
(3, 3, 10, N'Xuất sắc'),
(4, 4, 6, N'Trung bình'),
(5, 5, 8, N'Khá'),
(6, 6, 9, N'Xuất sắc'),
(7, 7, 10, N'Xuất sắc'),
(8, 8, 5, N'Trung bình'),
(9, 9, 6, N'Yếu'),
(10, 10, 8, N'Khá'),
(11, 1, 5, N'Trung bình'),
(12, 2, 7, N'Khá'),
(13, 3, 10, N'Xuất sắc'),
(14, 4, 6, N'Yếu'),
(15, 5, 8, N'Xuất sắc'),
(16, 6, 9, N'Khá'),
(17, 7, 10, N'Trung bình'),
(18, 8, 5, N'Khá'),
(19, 9, 6, N'Khá'),
(20, 10, 8, N'Xuất sắc'),
(21, 1, 5, N'Yếu'),
(22, 2, 7, N'Xuất sắc'),
(23, 3, 10, N'Khá'),
(24, 4, 6, N'Trung bình'),
(25, 5, 8, N'Xuất sắc'),
(26, 6, 9, N'Khá'),
(27, 7, 10, N'Xuất sắc'),
(28, 8, 5, N'Khá'),
(29, 9, 6, N'Yếu'),
(30, 10, 8, N'Trung bình'),
(31, 1, 5, N'Khá'),
(32, 2, 7, N'Xuất sắc'),
(33, 3, 10, N'Trung bình'),
(34, 4, 6, N'Khá'),
(35, 5, 8, N'Xuất sắc'),
(36, 6, 9, N'Khá'),
(37, 7, 10, N'Xuất sắc'),
(38, 8, 5, N'Trung bình'),
(39, 9, 6, N'Yếu'),
(40, 10, 8, N'Khá'),
(41, 1, 5, N'Trung bình'),
(42, 2, 7, N'Khá'),
(43, 3, 10, N'Xuất sắc'),
(44, 4, 6, N'Trung bình'),
(45, 5, 8, N'Khá'),
(46, 6, 9, N'Xuất sắc'),
(47, 7, 10, N'Khá'),
(48, 8, 5, N'Trung bình'),
(49, 9, 6, N'Khá'),
(50, 10, 8, N'Xuất sắc');
INSERT INTO BaoHiem (MaBaoHiem, NgayDong, NgayHetHan, MucDong, MaNhanVien, TenBaoHiem) VALUES
(1, '2020-01-01', '2025-01-01', 2000000.00, 1, N'Bảo hiểm lao động'),
(2, '2020-01-01', '2025-01-01', 1500000.00, 1, N'Bảo hiểm sức khỏe'),
(3, '2020-01-01', '2025-01-01', 1000000.00, 1, N'Bảo hiểm nhân thọ'),
(4, '2021-06-15', '2024-06-15', 2000000.00, 2, N'Bảo hiểm lao động'),
(5, '2021-06-15', '2024-06-15', 1500000.00, 2, N'Bảo hiểm sức khỏe'),
(6, '2023-02-01', '2025-02-01', 2000000.00, 3, N'Bảo hiểm lao động'),
(7, '2023-02-01', '2025-02-01', 1500000.00, 3, N'Bảo hiểm sức khỏe'),
(8, '2019-08-20', '2024-08-20', 2000000.00, 4, N'Bảo hiểm lao động'),
(9, '2019-08-20', '2024-08-20', 1500000.00, 4, N'Bảo hiểm nhân thọ'),
(10, '2022-11-01', '2025-11-01', 2000000.00, 5, N'Bảo hiểm lao động'),
(11, '2022-11-01', '2025-11-01', 1500000.00, 5, N'Bảo hiểm sức khỏe'),
(12, '2020-03-15', '2023-03-15', 2000000.00, 6, N'Bảo hiểm lao động'),
(13, '2020-03-15', '2023-03-15', 1500000.00, 6, N'Bảo hiểm nhân thọ'),
(14, '2021-05-10', '2025-05-10', 2000000.00, 8, N'Bảo hiểm lao động'),
(15, '2021-05-10', '2025-05-10', 1500000.00, 8, N'Bảo hiểm sức khỏe'),
(16, '2023-07-05', '2025-07-05', 2000000.00, 9, N'Bảo hiểm lao động'),
(17, '2023-07-05', '2025-07-05', 1500000.00, 9, N'Bảo hiểm nhân thọ'),
(18, '2021-09-20', '2024-09-20', 2000000.00, 10, N'Bảo hiểm lao động'),
(19, '2021-09-20', '2024-09-20', 1500000.00, 10, N'Bảo hiểm sức khỏe'),
(20, '2022-01-10', '2025-01-10', 2000000.00, 11, N'Bảo hiểm lao động'),
(21, '2022-01-10', '2025-01-10', 1500000.00, 11, N'Bảo hiểm nhân thọ'),
(22, '2023-02-15', '2025-02-15', 2000000.00, 12, N'Bảo hiểm lao động'),
(23, '2023-02-15', '2025-02-15', 1500000.00, 12, N'Bảo hiểm sức khỏe'),
(24, '2021-03-30', '2024-03-30', 2000000.00, 13, N'Bảo hiểm lao động'),
(25, '2021-03-30', '2024-03-30', 1500000.00, 13, N'Bảo hiểm nhân thọ'),
(26, '2022-05-20', '2025-05-20', 2000000.00, 14, N'Bảo hiểm lao động'),
(27, '2022-05-20', '2025-05-20', 1500000.00, 14, N'Bảo hiểm sức khỏe'),
(28, '2023-06-01', '2025-06-01', 2000000.00, 15, N'Bảo hiểm lao động'),
(29, '2023-06-01', '2025-06-01', 1500000.00, 15, N'Bảo hiểm nhân thọ'),
(30, '2022-02-10', '2025-02-10', 2000000.00, 17, N'Bảo hiểm lao động'),
(31, '2022-02-10', '2025-02-10', 1500000.00, 17, N'Bảo hiểm sức khỏe'),
(32, '2023-04-15', '2025-04-15', 2000000.00, 18, N'Bảo hiểm lao động'),
(33, '2023-04-15', '2025-04-15', 1500000.00, 18, N'Bảo hiểm nhân thọ'),
(34, '2021-03-10', '2024-03-10', 2000000.00, 19, N'Bảo hiểm lao động'),
(35, '2021-03-10', '2024-03-10', 1500000.00, 19, N'Bảo hiểm sức khỏe'),
(36, '2022-09-20', '2024-09-20', 2000000.00, 20, N'Bảo hiểm lao động'),
(37, '2022-09-20', '2024-09-20', 1500000.00, 20, N'Bảo hiểm nhân thọ'),
(38, '2022-11-01', '2025-11-01', 2000000.00, 22, N'Bảo hiểm lao động'),
(39, '2022-11-01', '2025-11-01', 1500000.00, 22, N'Bảo hiểm sức khỏe'),
(40, '2021-07-15', '2024-07-15', 2000000.00, 23, N'Bảo hiểm lao động'),
(41, '2021-07-15', '2024-07-15', 1500000.00, 23, N'Bảo hiểm nhân thọ'),
(42, '2022-01-15', '2024-01-15', 2000000.00, 24, N'Bảo hiểm lao động'),
(43, '2022-01-15', '2024-01-15', 1500000.00, 24, N'Bảo hiểm sức khỏe'),
(44, '2021-06-10', '2024-06-10', 2000000.00, 25, N'Bảo hiểm lao động'),
(45, '2021-06-10', '2024-06-10', 1500000.00, 25, N'Bảo hiểm nhân thọ'),
(46, '2023-09-01', '2025-09-01', 2000000.00, 26, N'Bảo hiểm lao động'),
(47, '2023-09-01', '2025-09-01', 1500000.00, 26, N'Bảo hiểm sức khỏe'),
(48, '2022-05-15', '2025-05-15', 2000000.00, 28, N'Bảo hiểm lao động'),
(49, '2022-05-15', '2025-05-15', 1500000.00, 28, N'Bảo hiểm nhân thọ'),
(50, '2022-07-05', '2025-07-05', 2000000.00, 50, N'Bảo hiểm lao động'),
(51, '2022-07-05', '2025-07-05', 1500000.00, 50, N'Bảo hiểm sức khỏe');
INSERT INTO KT_KL (MaSuKien, LoaiSuKien, NgayDienRa, LyDo)
VALUES 
(1, 'Khen thưởng', '2024-01-15', 'Hoàn thành xuất sắc dự án A'),
(2, 'Kỷ luật', '2024-02-10', 'Đi làm muộn nhiều lần'),
(3, 'Khen thưởng', '2024-03-05', 'Đạt doanh số bán hàng vượt chỉ tiêu quý I'),
(4, 'Khen thưởng', '2024-04-20', 'Sáng kiến cải tiến quy trình sản xuất'),
(5, 'Kỷ luật', '2024-05-11', 'Không tuân thủ quy định an toàn lao động'),
(6, 'Khen thưởng', '2024-06-18', 'Đóng góp tích cực trong hoạt động tình nguyện của công ty'),
(7, 'Khen thưởng', '2024-07-01', 'Nhân viên tiêu biểu của tháng 6'),
(8, 'Kỷ luật', '2024-07-20', 'Vi phạm quy định nghỉ phép không báo trước'),
(9, 'Khen thưởng', '2024-08-10', 'Đạt thành tích tốt trong đào tạo nội bộ'),
(10, 'Kỷ luật', '2024-08-30', 'Vi phạm quy định bảo mật thông tin'),
(11, 'Khen thưởng', '2024-09-12', 'Hoàn thành xuất sắc nhiệm vụ đột xuất'),
(12, 'Khen thưởng', '2024-10-05', 'Đạt thành tích tốt trong cải tiến chất lượng dịch vụ'),
(13, 'Kỷ luật', '2024-10-15', 'Sử dụng tài nguyên công ty không hợp lý'),
(14, 'Khen thưởng', '2024-11-01', 'Nhân viên tiêu biểu của tháng 10'),
(15, 'Kỷ luật', '2024-11-18', 'Không hoàn thành nhiệm vụ theo kế hoạch đề ra');
INSERT INTO ChiTietKT_KL (MaNhanVien, MaSuKien, ChiTiet, TienThuongPhat)
VALUES 
(1, 1, 'Khen thưởng vì hoàn thành tốt dự án được giao', 5000000),
(1, 2, 'Kỷ luật do đi làm muộn', -200000),
(1, 9, 'Khen thưởng vì đạt thành tích tốt trong khóa đào tạo', 1000000),
(2, 1, 'Khen thưởng vì hoàn thành tốt dự án được giao', 5000000),
(2, 5, 'Kỷ luật do không tuân thủ an toàn lao động', -500000),
(2, 11, 'Khen thưởng vì hoàn thành nhiệm vụ đột xuất', 3000000),
(3, 4, 'Khen thưởng vì sáng kiến cải tiến quy trình', 7000000),
(3, 8, 'Kỷ luật do nghỉ phép không báo trước', -300000),
(3, 12, 'Khen thưởng vì cải tiến chất lượng dịch vụ', 4000000),
(4, 6, 'Khen thưởng vì đóng góp tích cực trong hoạt động tình nguyện', 2000000),
(4, 13, 'Kỷ luật do sử dụng tài nguyên không hợp lý', -1000000),
(4, 15, 'Kỷ luật do không hoàn thành nhiệm vụ', -500000),
(5, 3, 'Khen thưởng vì đạt doanh số bán hàng vượt chỉ tiêu', 8000000),
(5, 7, 'Khen thưởng nhân viên tiêu biểu tháng 6', 1500000),
(1, 14, 'Khen thưởng nhân viên tiêu biểu tháng 10', 1500000),
(2, 14, 'Khen thưởng nhân viên tiêu biểu tháng 10', 1500000),
(3, 14, 'Khen thưởng nhân viên tiêu biểu tháng 10', 1500000),
(5, 14, 'Khen thưởng nhân viên tiêu biểu tháng 10', 1500000);
INSERT INTO SoYeuLyLich (MaNhanVien, TrinhDoHocVan, KinhNghiem, KyNang, ChungChi, NgoaiNgu, NgayTao, GioiTinh, QueQuan, GiaCanh)
VALUES
(1, N'Cử nhân Kinh tế', N'5 năm quản lý dự án', N'Quản lý dự án, Đàm phán', N'PMP', N'Tiếng Anh', '2021-12-15', N'Nam', N'Hà Nội', N'Đã kết hôn, 2 con'),
(2, N'Thạc sĩ Kế toán', N'7 năm kế toán tài chính', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', '2021-05-15', N'Nữ', N'Hà Nội', N'Đã kết hôn, 1 con'),
(3, N'Cử nhân Công nghệ Thông tin', N'5 năm lập trình phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', '2023-01-15', N'Nam', N'TP HCM', N'Độc thân'),
(4, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm kinh nghiệm', N'Quản lý chiến lược', N'MBA', N'Tiếng Anh, Tiếng Pháp', '2020-07-10', N'Nam', N'Đà Nẵng', N'Đã kết hôn, 2 con'),
(5, N'Cử nhân Marketing', N'3 năm làm marketing', N'Chạy chiến dịch quảng cáo', N'Google Ads Certified', N'Tiếng Anh', '2022-10-01', N'Nữ', N'Hải Phòng', N'Độc thân'),
(6, N'Kỹ sư Điện tử', N'4 năm phát triển phần cứng', N'Thiết kế mạch', N'CEH', N'Tiếng Nhật', '2023-02-01', N'Nam', N'TP HCM', N'Đã kết hôn, 1 con'),
(7, N'Thạc sĩ Nhân sự', N'8 năm quản lý nhân sự', N'Tuyển dụng, Đào tạo', N'SHRM', N'Tiếng Anh', '2021-04-01', N'Nữ', N'Quảng Ninh', N'Đã kết hôn, 3 con'),
(8, N'Cử nhân Kinh tế', N'6 năm kinh doanh', N'Đàm phán, Quản lý đội ngũ', N'PMP', N'Tiếng Anh', '2022-04-05', N'Nam', N'Hà Nam', N'Độc thân'),
(9, N'Cử nhân Quản trị Kinh doanh', N'4 năm bán hàng', N'Kỹ năng giao tiếp, Lập kế hoạch', N'PMP', N'Tiếng Anh', '2023-06-10', N'Nữ', N'Hải Phòng', N'Độc thân'),
(10, N'Thạc sĩ Tài chính', N'9 năm tư vấn tài chính', N'Phân tích tài chính', N'CFA', N'Tiếng Anh, Tiếng Nhật', '2021-08-01', N'Nam', N'Hà Nội', N'Đã kết hôn, 2 con'),
(11, N'Cử nhân Quản trị Kinh doanh', N'7 năm kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', '2021-12-15', N'Nữ', N'Nghệ An', N'Độc thân'),
(12, N'Cử nhân Luật', N'8 năm tư vấn pháp lý', N'Tư vấn pháp luật doanh nghiệp', N'Luật sư', N'Tiếng Anh', '2023-01-15', N'Nam', N'TP HCM', N'Đã kết hôn'),
(13, N'Thạc sĩ Tài chính', N'5 năm phân tích tài chính', N'Phân tích đầu tư, Kiểm toán', N'CFA', N'Tiếng Anh, Tiếng Nhật', '2021-02-15', N'Nam', N'Hà Nội', N'Đã kết hôn'),
(14, N'Cử nhân CNTT', N'4 năm phát triển phần mềm', N'Lập trình Java, Web', N'Oracle Certified', N'Tiếng Anh', '2022-04-01', N'Nữ', N'Đà Nẵng', N'Đã kết hôn, 1 con'),
(15, N'Cử nhân Marketing', N'5 năm làm marketing', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', '2023-05-01', N'Nam', N'Hải Phòng', N'Độc thân'),
(16, N'Cử nhân Quản trị Nhân sự', N'6 năm tuyển dụng', N'Đàm phán, Quản lý nhân sự', N'SHRM', N'Tiếng Anh', '2021-07-01', N'Nữ', N'Nam Định', N'Độc thân'),
(17, N'Thạc sĩ Kinh tế', N'4 năm tài chính', N'Tư vấn tài chính, Đầu tư', N'CFA', N'Tiếng Anh', '2022-01-05', N'Nam', N'Hà Nội', N'Đã kết hôn, 1 con'),
(18, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển web', N'Lập trình PHP, JS', N'Oracle Certified', N'Tiếng Anh', '2023-03-10', N'Nữ', N'TP HCM', N'Độc thân'),
(19, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm kinh nghiệm lãnh đạo', N'Lãnh đạo, Kế hoạch chiến lược', N'MBA', N'Tiếng Anh, Tiếng Pháp', '2021-02-01', N'Nam', N'Quảng Ngãi', N'Đã kết hôn, 2 con'),
(20, N'Cử nhân Tài chính', N'5 năm tư vấn đầu tư', N'Phân tích tài chính, Đầu tư', N'CFA', N'Tiếng Anh', '2022-08-01', N'Nữ', N'Hải Phòng', N'Độc thân'),
(21, N'Cử nhân Kinh tế', N'8 năm kinh nghiệm tư vấn đầu tư', N'Tư vấn đầu tư, Quản lý rủi ro', N'CFA', N'Tiếng Anh', '2023-05-25', N'Nam', N'TP HCM', N'Độc thân'),
(22, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm kinh doanh', N'Đàm phán, Quản lý đội ngũ', N'MBA', N'Tiếng Anh', '2021-06-01', N'Nam', N'Hải Dương', N'Đã kết hôn, 2 con'),
(23, N'Cử nhân Kế toán', N'6 năm kế toán tài chính', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', '2022-10-01', N'Nữ', N'Hà Nội', N'Độc thân'),
(24, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', '2023-07-01', N'Nam', N'TP HCM', N'Độc thân'),
(25, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm quản lý dự án', N'Quản lý chiến lược, Đàm phán', N'MBA', N'Tiếng Anh', '2021-03-01', N'Nam', N'Hà Nội', N'Đã kết hôn, 1 con'),
(26, N'Cử nhân Marketing', N'4 năm chạy chiến dịch quảng cáo', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', '2022-04-01', N'Nữ', N'Đà Nẵng', N'Độc thân'),
(27, N'Kỹ sư Điện tử', N'3 năm thiết kế mạch', N'Thiết kế vi mạch', N'CEH', N'Tiếng Nhật', '2023-08-01', N'Nam', N'TP HCM', N'Đã kết hôn'),
(28, N'Thạc sĩ Nhân sự', N'7 năm quản lý nhân sự', N'Tuyển dụng, Đào tạo', N'SHRM', N'Tiếng Anh', '2021-05-01', N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con'),
(29, N'Cử nhân Tài chính', N'5 năm phân tích tài chính', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', '2022-07-01', N'Nữ', N'TP HCM', N'Độc thân'),
(30, N'Cử nhân Quản trị Kinh doanh', N'6 năm phát triển kinh doanh', N'Kỹ năng lãnh đạo, Quản lý dự án', N'MBA', N'Tiếng Anh', '2023-01-01', N'Nam', N'Hà Nội', N'Độc thân'),
(31, N'Thạc sĩ Công nghệ Thông tin', N'8 năm lập trình phần mềm', N'Java, Python', N'Oracle Certified', N'Tiếng Anh', '2021-06-01', N'Nam', N'TP HCM', N'Đã kết hôn, 2 con'),
(32, N'Cử nhân Kế toán', N'7 năm kế toán', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', '2022-02-15', N'Nữ', N'Hải Phòng', N'Độc thân'),
(33, N'Cử nhân Quản trị Kinh doanh', N'9 năm phát triển kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', '2023-05-15', N'Nam', N'Hà Nội', N'Đã kết hôn'),
(34, N'Cử nhân Công nghệ Thông tin', N'5 năm phát triển phần mềm', N'Lập trình Java, Python', N'Oracle Certified', N'Tiếng Anh', '2021-08-01', N'Nam', N'TP HCM', N'Độc thân'),
(35, N'Thạc sĩ Tài chính', N'6 năm tư vấn đầu tư', N'Phân tích đầu tư', N'CFA', N'Tiếng Anh', '2022-10-01', N'Nữ', N'Hà Nội', N'Đã kết hôn'),
(36, N'Cử nhân Kinh tế', N'4 năm tư vấn tài chính', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', '2023-01-01', N'Nam', N'Hà Nội', N'Độc thân'),
(37, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm quản lý dự án', N'Quản lý đội ngũ, Đàm phán', N'MBA', N'Tiếng Anh', '2021-02-01', N'Nữ', N'Quảng Ninh', N'Đã kết hôn'),
(38, N'Cử nhân Marketing', N'5 năm quảng cáo', N'Thương hiệu, Quảng cáo', N'Google Ads Certified', N'Tiếng Anh', '2022-04-01', N'Nam', N'Hải Phòng', N'Độc thân'),
(39, N'Thạc sĩ Tài chính', N'8 năm phân tích tài chính', N'Đầu tư, Quản lý tài chính', N'CFA', N'Tiếng Anh', '2023-06-01', N'Nữ', N'Hà Nội', N'Đã kết hôn'),
(40, N'Cử nhân Công nghệ Thông tin', N'4 năm phát triển phần mềm', N'Lập trình Python, PHP', N'Oracle Certified', N'Tiếng Anh', '2021-07-01', N'Nam', N'TP HCM', N'Độc thân'),
(41, N'Thạc sĩ Quản trị Kinh doanh', N'10 năm phát triển kinh doanh', N'Lãnh đạo chiến lược, Quản lý dự án', N'MBA', N'Tiếng Anh', '2022-08-01', N'Nữ', N'Hải Phòng', N'Độc thân'),
(42, N'Cử nhân Quản trị Kinh doanh', N'5 năm phát triển kinh doanh', N'Quản lý đội ngũ, Đàm phán', N'PMP', N'Tiếng Anh', '2023-09-01', N'Nam', N'Hà Nội', N'Độc thân'),
(43, N'Cử nhân Luật', N'7 năm tư vấn pháp lý', N'Tư vấn doanh nghiệp', N'Luật sư', N'Tiếng Anh', '2021-10-01', N'Nữ', N'TP HCM', N'Đã kết hôn'),
(44, N'Thạc sĩ Kế toán', N'9 năm kế toán', N'Lập báo cáo tài chính', N'CPA', N'Tiếng Anh', '2022-11-01', N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con'),
(45, N'Cử nhân Kinh tế', N'5 năm phân tích đầu tư', N'Đầu tư, Quản lý tài chính', N'CFA', N'Tiếng Anh', '2023-04-01', N'Nữ', N'Hà Nội', N'Độc thân'),
(46, N'Thạc sĩ Quản trị Kinh doanh', N'7 năm phát triển kinh doanh', N'Quản lý dự án, Đàm phán', N'MBA', N'Tiếng Anh', '2021-06-01', N'Nam', N'Hải Phòng', N'Đã kết hôn, 2 con'),
(47, N'Cử nhân Luật', N'6 năm tư vấn pháp lý', N'Tư vấn luật doanh nghiệp', N'Luật sư', N'Tiếng Anh', '2022-12-01', N'Nam', N'TP HCM', N'Đã kết hôn'),
(48, N'Cử nhân Quản trị Kinh doanh', N'8 năm phát triển kinh doanh', N'Quản lý dự án, Lập kế hoạch chiến lược', N'MBA', N'Tiếng Anh', '2023-01-01', N'Nữ', N'Hà Nội', N'Đã kết hôn, 1 con'),
(49, N'Thạc sĩ Công nghệ Thông tin', N'6 năm phát triển phần mềm', N'Quản lý dự án CNTT', N'Oracle Certified', N'Tiếng Anh', '2021-07-01', N'Nam', N'TP HCM', N'Độc thân'),
(50, N'Cử nhân Kinh tế', N'5 năm tư vấn đầu tư', N'Tài chính doanh nghiệp', N'CFA', N'Tiếng Anh', '2022-10-01', N'Nữ', N'Hà Nội', N'Độc thân');
INSERT INTO PhieuLuong (MaPhieuLuong, NgayTinhLuong, LuongCoBan, LuongNhanDuoc, TrangThaiTraLuong, MaNhanVien) VALUES
(1, '2024-01-31', 15000000, NULL, N'Đã trả', 1),
(2, '2024-01-31', 14000000, NULL, N'Đã trả', 2),
(3, '2024-01-31', 16000000, NULL, N'Đã trả', 3),
(4, '2024-01-31', 20000000, NULL, N'Đã trả', 4),
(5, '2024-01-31', 13000000, NULL, N'Đã trả', 5),
(6, '2024-01-31', 14500000, NULL, N'Đã trả', 6),
(7, '2024-01-31', 15500000, NULL, N'Đã trả', 7),
(8, '2024-01-31', 16500000, NULL, N'Đã trả', 8),
(9, '2024-01-31', 13500000, NULL, N'Đã trả', 9),
(10, '2024-01-31', 17000000, NULL, N'Đã trả', 10),
(11, '2024-01-31', 14500000, NULL, N'Đã trả', 11),
(12, '2024-01-31', 15000000, NULL, N'Đã trả', 12),
(13, '2024-01-31', 16000000, NULL, N'Đã trả', 13),
(14, '2024-01-31', 15000000, NULL, N'Đã trả', 14),
(15, '2024-01-31', 15500000, NULL, N'Đã trả', 15),
(16, '2024-01-31', 14000000, NULL, N'Đã trả', 16),
(17, '2024-01-31', 16000000, NULL, N'Đã trả', 17),
(18, '2024-01-31', 13500000, NULL, N'Đã trả', 18),
(19, '2024-01-31', 15000000, NULL, N'Đã trả', 19),
(20, '2024-01-31', 14000000, NULL, N'Đã trả', 20),
(21, '2024-01-31', 16000000, NULL, N'Đã trả', 21),
(22, '2024-01-31', 15000000, NULL, N'Đã trả', 22),
(23, '2024-01-31', 15000000, NULL, N'Đã trả', 23),
(24, '2024-01-31', 17000000, NULL, N'Đã trả', 24),
(25, '2024-01-31', 14500000, NULL, N'Đã trả', 25),
(26, '2024-01-31', 15500000, NULL, N'Đã trả', 26),
(27, '2024-01-31', 15000000, NULL, N'Đã trả', 27),
(28, '2024-01-31', 16000000, NULL, N'Đã trả', 28),
(29, '2024-01-31', 14000000, NULL, N'Đã trả', 29),
(30, '2024-01-31', 13500000, NULL, N'Đã trả', 30),
(31, '2024-01-31', 17000000, NULL, N'Đã trả', 31),
(32, '2024-01-31', 16000000, NULL, N'Đã trả', 32),
(33, '2024-01-31', 15000000, NULL, N'Đã trả', 33),
(34, '2024-01-31', 14500000, NULL, N'Đã trả', 34),
(35, '2024-01-31', 16000000, NULL, N'Đã trả', 35),
(36, '2024-01-31', 13500000, NULL, N'Đã trả', 36),
(37, '2024-01-31', 15500000, NULL, N'Đã trả', 37),
(38, '2024-01-31', 15000000, NULL, N'Đã trả', 38),
(39, '2024-01-31', 14000000, NULL, N'Đã trả', 39),
(40, '2024-01-31', 14500000, NULL, N'Đã trả', 40),
(41, '2024-01-31', 15000000, NULL, N'Đã trả', 41),
(42, '2024-01-31', 13500000, NULL, N'Đã trả', 42),
(43, '2024-01-31', 16000000, NULL, N'Đã trả', 43),
(44, '2024-01-31', 14000000, NULL, N'Đã trả', 44),
(45, '2024-01-31', 15000000, NULL, N'Đã trả', 45),
(46, '2024-01-31', 13500000, NULL, N'Đã trả', 46),
(47, '2024-01-31', 15000000, NULL, N'Đã trả', 47),
(48, '2024-01-31', 14000000, NULL, N'Đã trả', 48),
(49, '2024-01-31', 15500000, NULL, N'Đã trả', 49),
(50, '2024-01-31', 16000000, NULL, N'Đã trả', 50),
(51, '2024-02-29', 15000000, NULL, N'Chưa trả', 1),
(52, '2024-02-29', 14000000, NULL, N'Chưa trả', 2),
(53, '2024-02-29', 16000000, NULL, N'Chưa trả', 3),
(54, '2024-02-29', 20000000, NULL, N'Chưa trả', 4),
(55, '2024-02-29', 13000000, NULL, N'Chưa trả', 5),
(56, '2024-02-29', 14500000, NULL, N'Chưa trả', 6),
(57, '2024-02-29', 15500000, NULL, N'Chưa trả', 7),
(58, '2024-02-29', 16500000, NULL, N'Chưa trả', 8),
(59, '2024-02-29', 13500000, NULL, N'Chưa trả', 9),
(60, '2024-02-29', 17000000, NULL, N'Chưa trả', 10),
(61, '2024-02-29', 14500000, NULL, N'Chưa trả', 11),
(62, '2024-02-29', 15000000, NULL, N'Chưa trả', 12),
(63, '2024-02-29', 16000000, NULL, N'Chưa trả', 13),
(64, '2024-02-29', 15000000, NULL, N'Chưa trả', 14),
(65, '2024-02-29', 15500000, NULL, N'Chưa trả', 15),
(66, '2024-02-29', 14000000, NULL, N'Chưa trả', 16),
(67, '2024-02-29', 16000000, NULL, N'Chưa trả', 17),
(68, '2024-02-29', 13500000, NULL, N'Chưa trả', 18),
(69, '2024-02-29', 15000000, NULL, N'Chưa trả', 19),
(70, '2024-02-29', 14000000, NULL, N'Chưa trả', 20),
(71, '2024-02-29', 16000000, NULL, N'Chưa trả', 21),
(72, '2024-02-29', 15000000, NULL, N'Chưa trả', 22),
(73, '2024-02-29', 15000000, NULL, N'Chưa trả', 23),
(74, '2024-02-29', 17000000, NULL, N'Chưa trả', 24),
(75, '2024-02-29', 14500000, NULL, N'Chưa trả', 25),
(76, '2024-02-29', 15500000, NULL, N'Chưa trả', 26),
(77, '2024-02-29', 15000000, NULL, N'Chưa trả', 27),
(78, '2024-02-29', 16000000, NULL, N'Chưa trả', 28),
(79, '2024-02-29', 14000000, NULL, N'Chưa trả', 29),
(80, '2024-02-29', 13500000, NULL, N'Chưa trả', 30),
(81, '2024-02-29', 17000000, NULL, N'Chưa trả', 31),
(82, '2024-02-29', 16000000, NULL, N'Chưa trả', 32),
(83, '2024-02-29', 15000000, NULL, N'Chưa trả', 33),
(84, '2024-02-29', 14500000, NULL, N'Chưa trả', 34),
(85, '2024-02-29', 16000000, NULL, N'Chưa trả', 35),
(86, '2024-02-29', 13500000, NULL, N'Chưa trả', 36),
(87, '2024-02-29', 15500000, NULL, N'Chưa trả', 37),
(88, '2024-02-29', 15000000, NULL, N'Chưa trả', 38),
(89, '2024-02-29', 14000000, NULL, N'Chưa trả', 39),
(90, '2024-02-29', 14500000, NULL, N'Chưa trả', 40),
(91, '2024-02-29', 15000000, NULL, N'Chưa trả', 41),
(92, '2024-02-29', 13500000, NULL, N'Chưa trả', 42),
(93, '2024-02-29', 16000000, NULL, N'Chưa trả', 43),
(94, '2024-02-29', 14000000, NULL, N'Chưa trả', 44),
(95, '2024-02-29', 15000000, NULL, N'Chưa trả', 45),
(96, '2024-02-29', 13500000, NULL, N'Chưa trả', 46),
(97, '2024-02-29', 15000000, NULL, N'Chưa trả', 47),
(98, '2024-02-29', 14000000, NULL, N'Chưa trả', 48),
(99, '2024-02-29', 15500000, NULL, N'Chưa trả', 49),
(100, '2024-02-29', 16000000, NULL, N'Chưa trả', 50);
INSERT INTO ThanhToan (MaGiaoDich, NgayGiaoDich, GiaTri, NoiDung, MaNhanVien) VALUES
('TT001', '2024-01-15', 15000000, N'Thưởng tháng 1 cho trưởng phòng nhân sự', 3),
('TT002', '2024-01-20', 15000000, N'Trả lương tháng 1 cho trưởng phòng nhân sự', 3),
('TT003', '2024-01-25', 30000000, N'Tiền dự án cải tiến quy trình nhân sự', 3),
('TT004', '2024-01-15', 15000000, N'Thưởng tháng 1 cho trưởng phòng tài chính', 6),
('TT005', '2024-01-20', 12000000, N'Trả lương tháng 1 cho trưởng phòng tài chính', 6),
('TT006', '2024-01-28', 5000000, N'Tiền thưởng KPI cho trưởng phòng tài chính', 6),
('TT007', '2024-01-15', 15000000, N'Thưởng tháng 1 cho trưởng phòng marketing', 8),
('TT008', '2024-01-20', 13000000, N'Trả lương tháng 1 cho trưởng phòng marketing', 8),
('TT009', '2024-01-25', 25000000, N'Tiền dự án chiến dịch marketing', 8),
('TT010', '2024-01-15', 15000000, N'Thưởng tháng 1 cho trưởng phòng vận hành', 10),
('TT011', '2024-01-20', 10000000, N'Trả lương tháng 1 cho trưởng phòng vận hành', 10),
('TT012', '2024-01-28', 4000000, N'Tiền thưởng hiệu suất cho trưởng phòng vận hành', 10),
('TT013', '2024-01-15', 18000000, N'Thưởng tháng 1 cho trưởng phòng CNTT', 15),
('TT014', '2024-01-20', 13000000, N'Trả lương tháng 1 cho trưởng phòng CNTT', 15),
('TT015', '2024-01-28', 6000000, N'Tiền thưởng dự án phần mềm', 15),
('TT016', '2024-01-15', 15000000, N'Thưởng tháng 1 cho trưởng phòng NC&PT', 18),
('TT017', '2024-01-20', 11000000, N'Trả lương tháng 1 cho trưởng phòng NC&PT', 18),
('TT018', '2024-01-28', 7000000, N'Tiền thưởng nghiên cứu & phát triển', 18),
('TT019', '2024-01-15', 14000000, N'Thưởng tháng 1 cho trưởng phòng chăm sóc khách hàng', 20),
('TT020', '2024-01-20', 9000000, N'Trả lương tháng 1 cho trưởng phòng chăm sóc khách hàng', 20),
('TT021', '2024-01-25', 8000000, N'Tiền thưởng dịch vụ khách hàng', 20),
('TT022', '2024-02-15', 15000000, N'Thưởng tháng 2 cho trưởng phòng nhân sự', 3),
('TT023', '2024-02-20', 15000000, N'Trả lương tháng 2 cho trưởng phòng nhân sự', 3),
('TT024', '2024-02-25', 20000000, N'Tiền dự án phát triển nguồn nhân lực', 3),
('TT025', '2024-02-15', 15000000, N'Thưởng tháng 2 cho trưởng phòng tài chính', 6),
('TT026', '2024-02-20', 12000000, N'Trả lương tháng 2 cho trưởng phòng tài chính', 6),
('TT027', '2024-02-28', 3000000, N'Tiền thưởng cho việc tiết kiệm chi phí', 6),
('TT028', '2024-02-15', 15000000, N'Thưởng tháng 2 cho trưởng phòng marketing', 8),
('TT029', '2024-02-20', 13000000, N'Trả lương tháng 2 cho trưởng phòng marketing', 8),
('TT030', '2024-02-25', 25000000, N'Tiền dự án marketing trực tuyến', 8);
INSERT INTO TaiKhoan (TenDangNhap, MatKhau, VaiTro, TrangThaiTaiKhoan, NgayTao) VALUES
(N'admin', N'admin123', N'Quản trị viên', N'Kích hoạt', '2024-10-01'),
(N'nhat123', N'123456', N'Chỉnh sửa', N'Kích hoạt', '2024-10-01'),
(N'kiet123', N'123456', N'Chỉnh sửa', N'Kích hoạt', '2024-10-01'),
(N'quyet123', N'123456', N'Chỉnh sửa', N'Kích hoạt', '2024-10-01');
-- Trigger sau khi thêm nhân viên
CREATE TRIGGER trg_AfterInsert_NhanVien
ON NhanVien
AFTER INSERT
AS
BEGIN
    UPDATE PhongBan
    SET SoLuongNhanVien = (SELECT COUNT(*) FROM NhanVien WHERE MaPhongBan = PhongBan.MaPhongBan)
    WHERE MaPhongBan IN (SELECT MaPhongBan FROM inserted);
END;

-- Trigger sau khi xóa nhân viên
CREATE TRIGGER trg_AfterDelete_NhanVien
ON NhanVien
AFTER DELETE
AS
BEGIN
    UPDATE PhongBan
    SET SoLuongNhanVien = (SELECT COUNT(*) FROM NhanVien WHERE MaPhongBan = PhongBan.MaPhongBan)
    WHERE MaPhongBan IN (SELECT MaPhongBan FROM deleted);
END;
-- Trigger sau khi cập nhật nhân viên
CREATE TRIGGER trg_AfterUpdate_NhanVien
ON NhanVien
AFTER UPDATE
AS
BEGIN
    UPDATE PhongBan
    SET SoLuongNhanVien = (SELECT COUNT(*) FROM NhanVien WHERE MaPhongBan = PhongBan.MaPhongBan)
    WHERE MaPhongBan IN (SELECT MaPhongBan FROM inserted) OR MaPhongBan IN (SELECT MaPhongBan FROM deleted);
END;

CREATE TRIGGER trg_CalculateLuongNhanDuoc
ON PhieuLuong
AFTER INSERT
AS
BEGIN
    DECLARE @LuongCoBan DECIMAL(18, 2);
    DECLARE @MaNhanVien INT;
    DECLARE @LuongChucVu DECIMAL(18, 2);
    DECLARE @TienThuongPhat DECIMAL(18, 2);

    SELECT @MaNhanVien = MaNhanVien, @LuongCoBan = LuongCoBan
    FROM inserted; -- Bảng ảo chứa bản ghi vừa được chèn

    -- Lấy LuongChucVu cho nhân viên
    SELECT @LuongChucVu = LuongChucVu 
    FROM NhanVien nv
    JOIN ChucVu c ON nv.MaChucVu = c.MaChucVu
    WHERE nv.MaNhanVien = @MaNhanVien;

    -- Lấy tổng TienThuongPhat cho nhân viên
    SELECT @TienThuongPhat = ISNULL(SUM(TienThuongPhat), 0)
    FROM ChiTietKT_KL
    WHERE MaNhanVien = @MaNhanVien;

    -- Cập nhật LuongNhanDuoc trong bảng PhieuLuong
    UPDATE PhieuLuong
    SET LuongNhanDuoc = @LuongCoBan + ISNULL(@LuongChucVu, 0) + ISNULL(@TienThuongPhat, 0)
    WHERE MaPhieuLuong IN (SELECT MaPhieuLuong FROM inserted);
END;

CREATE TRIGGER UpdateTruongPhong
ON NhanVien
AFTER INSERT, UPDATE
AS
BEGIN
    -- Cập nhật trường TruongPhong trong bảng PhongBan
    UPDATE PB
    SET TruongPhong = NV.HoTen
    FROM PhongBan PB
    JOIN NhanVien NV ON PB.MaPhongBan = NV.MaPhongBan
    WHERE NV.MaChucVu % 100 = 1  -- Chỉ cập nhật nếu là trưởng phòng
      AND LEFT(CONVERT(NVARCHAR(10), NV.MaChucVu), LEN(CONVERT(NVARCHAR(10), PB.MaPhongBan))) = CONVERT(NVARCHAR(10), PB.MaPhongBan) -- Số đầu của mã chức vụ tương ứng với mã phòng ban
      AND PB.MaPhongBan IN (SELECT DISTINCT MaPhongBan FROM NhanVien WHERE MaChucVu % 100 = 1);
END;

CREATE TRIGGER [dbo].[theoDoiPhongBan]
ON [dbo].[PhongBan]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
    
    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
		DECLARE @MaPhongBan INT;
        DECLARE @TenPhongBan NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaPhongBan = MaPhongBan, @TenPhongBan = TenPhongBan FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Phòng Ban', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật phòng ban ' + @TenPhongBan, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Phòng Ban', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa phòng ban ' + @TenPhongBan, @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiNhanVien]
ON [dbo].[NhanVien]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
    
    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
		DECLARE @MaNhanVien INT;
        DECLARE @HoTen NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaNhanVien = MaNhanVien, @HoTen = HoTen FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Nhân Viên', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật nhân viên ' + @HoTen, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Nhân viên', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa nhân viên ' + @HoTen, @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiHopDong]
ON [dbo].[HopDongLaoDong]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
	

    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Hợp Đồng', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật hợp đồng', @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Hợp Đồng', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa hợp đồng', @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiDuAn]
ON [dbo].[DuAn]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
	

    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
		DECLARE @MaDuAn INT;
        DECLARE @TenDuAn NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaDuAn = MaDuAn, @TenDuAn = TenDuAn FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Dự Án', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật dự án ' + @TenDuAn, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Dự Án', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa dự án ' + @TenDuAn, @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiDaoTao]
ON [dbo].[DaoTao]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
	

    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
		DECLARE @MaDaoTao INT;
        DECLARE @TenKhoa NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaDaoTao = MaDaoTao, @TenKhoa = TenKhoa FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Khóa Đào Tạo', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật khóa đào tạo ' + @TenKhoa, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Khóa Đào Tạo', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa khóa đào tạo ' + @TenKhoa, @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiChucVu]
ON [dbo].[ChucVu]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
	

    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên', 'Chỉnh sửa')
    BEGIN
		DECLARE @MaChucVu INT;
        DECLARE @TenChucVu NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaChucVu = MaChucVu, @TenChucVu = TenChucVu FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Chức Vụ', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật chức vụ ' + @TenChucVu, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Chức Vụ', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa chức vụ ' + @TenChucVu, @TenDangNhap);
        END
    END
END;

CREATE TRIGGER [dbo].[theoDoiTaiKhoan]
ON [dbo].[TaiKhoan]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @LoaiTaiKhoan NVARCHAR(50), @TenDangNhap NVARCHAR(100);
	

    -- Chuyển đổi giá trị SESSION_CONTEXT từ sql_variant sang nvarchar
    SET @LoaiTaiKhoan = CONVERT(NVARCHAR(50), SESSION_CONTEXT(N'LoaiTaiKhoan'));
    SET @TenDangNhap = CONVERT(NVARCHAR(100), SESSION_CONTEXT(N'TenDangNhap'));

    -- Kiểm tra xem người dùng có phải là admin hay không
    IF @LoaiTaiKhoan IN ('Quản trị viên')
    BEGIN
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Update Tài Khoản', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã thêm hoặc cập nhật tài khoản mới', @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES ('Xóa Tài Khoản', GETDATE(), 'Người dùng ' + @TenDangNhap + ' đã xóa một tài khoản', @TenDangNhap);
        END
    END
END;


--test
--EXEC sp_set_session_context @key = N'LoaiTaiKhoan', @value = 'Quản trị viên';
--EXEC sp_set_session_context @key = N'TenDangNhap', @value = N'admin';
--INSERT INTO NhanVien (MaNhanVien, HoTen, NgaySinh, SoDienThoai, Email, NgayBatDauLamViec, MaPhongBan, MaChucVu) VALUES
--(51, N'Nguyễn Văn An', '1990-01-15', 0912345678, 'an.nguyen@example.com', '2022-01-10', 8, 801);
--INSERT INTO PhongBan (MaPhongBan, TenPhongBan, SoLuongNhanVien, TruongPhong) VALUES
--(8, N'chilllle', 0, N'');
--INSERT INTO ChucVu (MaChucVu, TenChucVu, LuongChucVu) VALUES
--(801, N'Trưởng phòng chill', 15000000);
