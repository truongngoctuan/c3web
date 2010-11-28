
--------------------------------------------------------------------------
--Ham lay ngay, thang, nam
create function GetDateOnly ( @pInputDate datetime )
returns datetime
as
begin
    return CAST(CAST(YEAR(@pInputDate) as VARCHAR(4)) + '/' +
                CAST(MONTH(@pInputDate) as VARCHAR(2)) + '/' +
                CAST(DAY(@pInputDate) as VARCHAR(2)) as datetime)
end


--STT 01
--------------------------------------------------------------------------
--Thong tin gioi thieu cong ty
create procedure spThongTinGioiThieuCongTy
as
begin
	declare @max as datetime
	select @max = max(NgayDang) from TIN_TUC
	select TieuDe, HinhAnh, TomTat, NoiDung, NgayDang from TIN_TUC where NgayDang = @max 
end


--STT 02
--------------------------------------------------------------------------
--Danh sach tram xe
create procedure spDanhSachTram
as
begin
	select * from TRAM_XE 
end


--STT 03
--------------------------------------------------------------------------
--Danh sach cac chuyen xe theo tram xuat ben trong ngay
create procedure spDanhSachChuyenXeTheoTramTrongNgay
	@matramxe as int
as
begin
	select * from CHUYEN_XE, TUYEN_XE  where TUYEN_XE.MaTramDi = @matramxe 
									 and	 CHUYEN_XE.MaTuyenXe = TUYEN_XE.MaTuyenXe
									 and	 dbo.GetDateOnly(CHUYEN_XE.KhoiHanh) = dbo.GetDateOnly (getdate())
end


--STT 04
--------------------------------------------------------------------------
--Thong tin chi tiet chuyen xe
create procedure spThongTinChiTietChuyenXe
	@machuyenxe as int
as
begin
	select LOAI_XE.HinhAnh, CHUYEN_XE.KhoiHanh, CHUYEN_XE.DuKienDen, NHAN_VIEN.HoTen, NHAN_VIEN.DienThoai
	from CHUYEN_XE, XE, LOAI_XE,NHAN_VIEN where  CHUYEN_XE.MaChuyenXe = @machuyenxe
										 and	  CHUYEN_XE.MaXe = XE.MaXe
										 and	  XE.MaLoaiXe = LOAI_XE.MaLoaiXe
								   		 and	  XE.MaTaiXe = NHAN_VIEN.MaNhanVien
end


--STT 05
--------------------------------------------------------------------------
--Tinh trang vi tri dat cho tren xe
create procedure spTinhTrangDatChoTheoChuyen
	@machuyenxe as int
as
begin
	select CHO_NGOI.ViTri, DAT_CHO.TinhTrang from CHO_NGOI,DAT_CHO 
	where DAT_CHO.MaChuyenXe = @machuyenxe and DAT_CHO.MaChoNgoi = CHO_NGOI.MaChoNgoi
end


--STT 06
--------------------------------------------------------------------------
--Lay danh sach chuyen xe cung tuyen se xuat ben trong ngay
create procedure spDanhSachChuyenXeCungTuyenTrongNgay
	@matuyenxe as int
as
begin
	select * from CHUYEN_XE
	where CHUYEN_XE.MaTuyenXe = @matuyenxe and dbo.GetDateOnly(CHUYEN_XE.KhoiHanh) = dbo.GetDateOnly (getdate())
end


--STT 07
--------------------------------------------------------------------------
--Lay danh sach tuyen xe
create procedure spDanhSachTuyenXe
as
begin
	select * from TUYEN_XE
end


--STT 08
--------------------------------------------------------------------------
--Lay danh sach tuyen xe theo tram dau va tram cuoi
create procedure spDanhSachTuyenXeTheoTram
	@MaTramDi int, @MaTramDen int
as
begin
	select * from TUYEN_XE
	where TUYEN_XE.MaTramDi = @MaTramDi and TUYEN_XE.MaTramDen = @MaTramDen
end


--STT 09
--------------------------------------------------------------------------
--Cho phep dang nhap he thong
create procedure spDangNhap
	@username nvarchar, @password nvarchar
as
begin
	select * from TAI_KHOAN
	where TAI_KHOAN.username = @username and TAI_KHOAN.password = @password
end


--STT 10
--------------------------------------------------------------------------
--Them phan hoi khach hang
create procedure spThemPhanHoiKhachHang
	@NoiDung ntext, @NgayDang datetime
as
begin
	INSERT INTO PHAN_HOI_KHACH_HANG (NoiDung, NgayDang) VALUES (@NoiDung, @NgayDang)
end


--------------------------------------------------------------------------


