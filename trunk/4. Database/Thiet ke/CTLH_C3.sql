USE [CTLH_C3]
GO
/****** Object:  Table [dbo].[TINH_TRANG_CHUYEN_XE]    Script Date: 12/28/2010 07:39:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH_TRANG_CHUYEN_XE](
	[MaTinhTrangChuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangChuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_CHUYEN_XE] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangChuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINH_TRANG_XE]    Script Date: 12/28/2010 07:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH_TRANG_XE](
	[MaTinhTrangXe] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_XE] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINH_TRANG_DAT_CHO]    Script Date: 12/28/2010 07:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINH_TRANG_DAT_CHO](
	[MaTinhTrangDatCho] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangDatCho] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG_DAT_CHO] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangDatCho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHO_NGOI]    Script Date: 12/28/2010 07:38:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHO_NGOI](
	[MaChoiNgoi] [int] IDENTITY(1,1) NOT NULL,
	[ViTri] [int] NULL,
 CONSTRAINT [PK_CHO_NGOI] PRIMARY KEY CLUSTERED 
(
	[MaChoiNgoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_NHAN_VIEN]    Script Date: 12/28/2010 07:39:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_NHAN_VIEN](
	[MaLoaiNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_XE]    Script Date: 12/28/2010 07:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_XE](
	[MaLoaixe] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [image] NULL,
	[HangSanXuat] [nvarchar](50) NULL,
	[SoCho] [int] NULL,
 CONSTRAINT [PK_LOAI_XE] PRIMARY KEY CLUSTERED 
(
	[MaLoaixe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHAN_HOI_KHACH_HANG]    Script Date: 12/28/2010 07:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHAN_HOI_KHACH_HANG](
	[MaPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[Duyet] [bit] NULL,
 CONSTRAINT [PK_PHAN_HOI_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUYEN_XE]    Script Date: 12/28/2010 07:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYEN_XE](
	[MaChuyenXe] [int] IDENTITY(1,1) NOT NULL,
	[KhoiHanh] [datetime] NULL,
	[MaTuyenXe] [int] NULL,
	[MaXe] [int] NULL,
	[TinhTrang] [int] NULL,
	[ThoiGianDenTram] [datetime] NULL,
	[LuongTaiXe] [float] NULL,
	[GiaVe] [float] NULL,
	[SoLuongMuaVe] [int] NULL,
 CONSTRAINT [PK_CHUYEN_XE] PRIMARY KEY CLUSTERED 
(
	[MaChuyenXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XE]    Script Date: 12/28/2010 07:39:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XE](
	[MaXe] [int] IDENTITY(1,1) NOT NULL,
	[BienSoXe] [nvarchar](50) NULL,
	[MaTaiXe] [int] NULL,
	[MaLoaiXe] [int] NULL,
	[TinhTrangXe] [int] NULL,
	[TramXeLuuTru] [int] NULL,
	[LuongTrongThang] [float] NULL,
 CONSTRAINT [PK_XE] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAT_CHO]    Script Date: 12/28/2010 07:38:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAT_CHO](
	[MaDatCho] [int] IDENTITY(1,1) NOT NULL,
	[MaChoNgoi] [int] NULL,
	[MaChuyenXe] [int] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_DAT_CHO] PRIMARY KEY CLUSTERED 
(
	[MaDatCho] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TUYEN_XE]    Script Date: 12/28/2010 07:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUYEN_XE](
	[MaTuyenXe] [int] IDENTITY(1,1) NOT NULL,
	[TenTuyenXe] [nvarchar](50) NULL,
	[MaTramDi] [int] NULL,
	[MaTramDen] [int] NULL,
	[SoLuongChuyen] [int] NULL,
	[TanSuatChuyen] [float] NULL,
	[ThoiGianDi] [float] NULL,
	[ThoiGianBatDau] [float] NULL,
	[GiaVe] [int] NULL,
	[LuongTaiXe] [int] NULL,
 CONSTRAINT [PK_TUYEN_XE] PRIMARY KEY CLUSTERED 
(
	[MaTuyenXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHAN_HOI]    Script Date: 12/28/2010 07:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHAN_HOI](
	[MaPhanHoi] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyen] [int] NULL,
	[MaPhanHoiKhach] [int] NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_PHAN_HOI] PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 12/28/2010 07:39:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[LoaiNhanVien] [int] NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAI_KHOAN]    Script Date: 12/28/2010 07:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAI_KHOAN](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayKichHoat] [datetime] NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_TAI_KHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIN_TUC]    Script Date: 12/28/2010 07:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIN_TUC](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [ntext] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[TomTat] [ntext] NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[MaAdminDuyet] [int] NULL,
 CONSTRAINT [PK_TIN_TUC] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRAM_XE]    Script Date: 12/28/2010 07:39:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRAM_XE](
	[MaTramXe] [int] IDENTITY(1,1) NOT NULL,
	[TenTramXe] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[HinhAnh] [image] NULL,
	[MaTruongTram] [int] NULL,
 CONSTRAINT [PK_TRAM_XE] PRIMARY KEY CLUSTERED 
(
	[MaTramXe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_TINH_TRANG_CHUYEN_XE]    Script Date: 12/28/2010 07:38:57 ******/
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_TINH_TRANG_CHUYEN_XE] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG_CHUYEN_XE] ([MaTinhTrangChuyen])
GO
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_TINH_TRANG_CHUYEN_XE]
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_TUYEN_XE]    Script Date: 12/28/2010 07:38:57 ******/
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_TUYEN_XE] FOREIGN KEY([MaTuyenXe])
REFERENCES [dbo].[TUYEN_XE] ([MaTuyenXe])
GO
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_TUYEN_XE]
GO
/****** Object:  ForeignKey [FK_CHUYEN_XE_XE]    Script Date: 12/28/2010 07:38:57 ******/
ALTER TABLE [dbo].[CHUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_CHUYEN_XE_XE] FOREIGN KEY([MaXe])
REFERENCES [dbo].[XE] ([MaXe])
GO
ALTER TABLE [dbo].[CHUYEN_XE] CHECK CONSTRAINT [FK_CHUYEN_XE_XE]
GO
/****** Object:  ForeignKey [FK_DAT_CHO_CHO_NGOI]    Script Date: 12/28/2010 07:38:59 ******/
ALTER TABLE [dbo].[DAT_CHO]  WITH CHECK ADD  CONSTRAINT [FK_DAT_CHO_CHO_NGOI] FOREIGN KEY([MaChoNgoi])
REFERENCES [dbo].[CHO_NGOI] ([MaChoiNgoi])
GO
ALTER TABLE [dbo].[DAT_CHO] CHECK CONSTRAINT [FK_DAT_CHO_CHO_NGOI]
GO
/****** Object:  ForeignKey [FK_DAT_CHO_CHUYEN_XE]    Script Date: 12/28/2010 07:38:59 ******/
ALTER TABLE [dbo].[DAT_CHO]  WITH CHECK ADD  CONSTRAINT [FK_DAT_CHO_CHUYEN_XE] FOREIGN KEY([MaChuyenXe])
REFERENCES [dbo].[CHUYEN_XE] ([MaChuyenXe])
GO
ALTER TABLE [dbo].[DAT_CHO] CHECK CONSTRAINT [FK_DAT_CHO_CHUYEN_XE]
GO
/****** Object:  ForeignKey [FK_DAT_CHO_TINH_TRANG_DAT_CHO]    Script Date: 12/28/2010 07:38:59 ******/
ALTER TABLE [dbo].[DAT_CHO]  WITH CHECK ADD  CONSTRAINT [FK_DAT_CHO_TINH_TRANG_DAT_CHO] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG_DAT_CHO] ([MaTinhTrangDatCho])
GO
ALTER TABLE [dbo].[DAT_CHO] CHECK CONSTRAINT [FK_DAT_CHO_TINH_TRANG_DAT_CHO]
GO
/****** Object:  ForeignKey [FK_NHAN_VIEN_LOAI_NHAN_VIEN]    Script Date: 12/28/2010 07:39:03 ******/
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHAN_VIEN_LOAI_NHAN_VIEN] FOREIGN KEY([LoaiNhanVien])
REFERENCES [dbo].[LOAI_NHAN_VIEN] ([MaLoaiNhanVien])
GO
ALTER TABLE [dbo].[NHAN_VIEN] CHECK CONSTRAINT [FK_NHAN_VIEN_LOAI_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_CHUYEN_XE]    Script Date: 12/28/2010 07:39:05 ******/
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_CHUYEN_XE] FOREIGN KEY([MaChuyen])
REFERENCES [dbo].[CHUYEN_XE] ([MaChuyenXe])
GO
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_CHUYEN_XE]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_NHAN_VIEN]    Script Date: 12/28/2010 07:39:05 ******/
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_NHAN_VIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]    Script Date: 12/28/2010 07:39:05 ******/
ALTER TABLE [dbo].[PHAN_HOI]  WITH CHECK ADD  CONSTRAINT [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG] FOREIGN KEY([MaPhanHoiKhach])
REFERENCES [dbo].[PHAN_HOI_KHACH_HANG] ([MaPhanHoi])
GO
ALTER TABLE [dbo].[PHAN_HOI] CHECK CONSTRAINT [FK_PHAN_HOI_PHAN_HOI_KHACH_HANG]
GO
/****** Object:  ForeignKey [FK_TAI_KHOAN_NHAN_VIEN]    Script Date: 12/28/2010 07:39:09 ******/
ALTER TABLE [dbo].[TAI_KHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAI_KHOAN_NHAN_VIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TAI_KHOAN] CHECK CONSTRAINT [FK_TAI_KHOAN_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TIN_TUC_NHAN_VIEN]    Script Date: 12/28/2010 07:39:11 ******/
ALTER TABLE [dbo].[TIN_TUC]  WITH CHECK ADD  CONSTRAINT [FK_TIN_TUC_NHAN_VIEN] FOREIGN KEY([MaAdminDuyet])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TIN_TUC] CHECK CONSTRAINT [FK_TIN_TUC_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TRAM_XE_NHAN_VIEN]    Script Date: 12/28/2010 07:39:16 ******/
ALTER TABLE [dbo].[TRAM_XE]  WITH CHECK ADD  CONSTRAINT [FK_TRAM_XE_NHAN_VIEN] FOREIGN KEY([MaTruongTram])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TRAM_XE] CHECK CONSTRAINT [FK_TRAM_XE_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_TUYEN_XE_TRAM_XE]    Script Date: 12/28/2010 07:39:19 ******/
ALTER TABLE [dbo].[TUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_TUYEN_XE_TRAM_XE] FOREIGN KEY([MaTramDi])
REFERENCES [dbo].[TRAM_XE] ([MaTramXe])
GO
ALTER TABLE [dbo].[TUYEN_XE] CHECK CONSTRAINT [FK_TUYEN_XE_TRAM_XE]
GO
/****** Object:  ForeignKey [FK_TUYEN_XE_TRAM_XE1]    Script Date: 12/28/2010 07:39:19 ******/
ALTER TABLE [dbo].[TUYEN_XE]  WITH CHECK ADD  CONSTRAINT [FK_TUYEN_XE_TRAM_XE1] FOREIGN KEY([MaTramDen])
REFERENCES [dbo].[TRAM_XE] ([MaTramXe])
GO
ALTER TABLE [dbo].[TUYEN_XE] CHECK CONSTRAINT [FK_TUYEN_XE_TRAM_XE1]
GO
/****** Object:  ForeignKey [FK_XE_LOAI_XE]    Script Date: 12/28/2010 07:39:21 ******/
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_LOAI_XE] FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LOAI_XE] ([MaLoaixe])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_LOAI_XE]
GO
/****** Object:  ForeignKey [FK_XE_NHAN_VIEN]    Script Date: 12/28/2010 07:39:21 ******/
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_NHAN_VIEN] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[NHAN_VIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_NHAN_VIEN]
GO
/****** Object:  ForeignKey [FK_XE_TINH_TRANG_XE]    Script Date: 12/28/2010 07:39:22 ******/
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_TINH_TRANG_XE] FOREIGN KEY([TinhTrangXe])
REFERENCES [dbo].[TINH_TRANG_XE] ([MaTinhTrangXe])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_TINH_TRANG_XE]
GO
/****** Object:  ForeignKey [FK_XE_TRAM_XE]    Script Date: 12/28/2010 07:39:22 ******/
ALTER TABLE [dbo].[XE]  WITH CHECK ADD  CONSTRAINT [FK_XE_TRAM_XE] FOREIGN KEY([TramXeLuuTru])
REFERENCES [dbo].[TRAM_XE] ([MaTramXe])
GO
ALTER TABLE [dbo].[XE] CHECK CONSTRAINT [FK_XE_TRAM_XE]
GO
