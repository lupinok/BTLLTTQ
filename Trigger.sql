use BTLMonLTTQ
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
            VALUES (N'Update Phòng Ban', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật phòng ban ' + @TenPhongBan, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Phòng Ban', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa phòng ban ' + @TenPhongBan, @TenDangNhap);
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
            VALUES (N'Update Nhân Viên', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật nhân viên ' + @HoTen, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Nhân viên', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa nhân viên ' + @HoTen, @TenDangNhap);
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
            VALUES (N'Update Hợp Đồng', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật hợp đồng', @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Hợp Đồng', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa hợp đồng', @TenDangNhap);
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
            VALUES (N'Update Dự Án', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật dự án ' + @TenDuAn, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Dự Án', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa dự án ' + @TenDuAn, @TenDangNhap);
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
            VALUES (N'Update Khóa Đào Tạo', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật khóa đào tạo ' + @TenKhoa, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Khóa Đào Tạo', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa khóa đào tạo ' + @TenKhoa, @TenDangNhap);
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
    IF @LoaiTaiKhoan IN (N'Quản trị viên', N'Chỉnh sửa')
    BEGIN
		DECLARE @MaChucVu INT;
        DECLARE @TenChucVu NVARCHAR(100);
            
        -- Lấy thông tin nhân viên từ bảng inserted
        SELECT @MaChucVu = MaChucVu, @TenChucVu = TenChucVu FROM inserted;
        -- Xử lý cho sự kiện INSERT
        IF EXISTS (SELECT * FROM inserted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Update Chức Vụ', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật chức vụ ' + @TenChucVu, @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Chức Vụ', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa chức vụ ' + @TenChucVu, @TenDangNhap);
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
            VALUES (N'Update Tài Khoản', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã thêm hoặc cập nhật tài khoản mới', @TenDangNhap);
        END
        -- Xử lý cho sự kiện DELETE
        IF EXISTS (SELECT * FROM deleted)
        BEGIN
            INSERT INTO LichSuHoatDong (LoaiHoatDong, ThoiGian, GhiChu, TenDangNhap)
            VALUES (N'Xóa Tài Khoản', GETDATE(), N'Người dùng ' + @TenDangNhap + N' đã xóa một tài khoản', @TenDangNhap);
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
--INSERT INTO TaiKhoan (TenDangNhap, MatKhau, VaiTro, TrangThaiTaiKhoan, NgayTao) VALUES
--(N'test3', N'123', N'Chỉnh sửa', N'Kích hoạt', GETDATE());