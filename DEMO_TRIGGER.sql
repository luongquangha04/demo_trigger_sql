USE [master]
GO
/****** Object:  Database [qly kho]    Script Date: 21/04/2025 4:16:53 CH ******/
CREATE DATABASE [qly kho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qly kho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HADZ\MSSQL\DATA\qly kho.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qly kho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.HADZ\MSSQL\DATA\qly kho_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [qly kho] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qly kho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qly kho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qly kho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qly kho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qly kho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qly kho] SET ARITHABORT OFF 
GO
ALTER DATABASE [qly kho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qly kho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qly kho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qly kho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qly kho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qly kho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qly kho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qly kho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qly kho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qly kho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qly kho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qly kho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qly kho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qly kho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qly kho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qly kho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qly kho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qly kho] SET RECOVERY FULL 
GO
ALTER DATABASE [qly kho] SET  MULTI_USER 
GO
ALTER DATABASE [qly kho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qly kho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qly kho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qly kho] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qly kho] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qly kho] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qly kho', N'ON'
GO
ALTER DATABASE [qly kho] SET QUERY_STORE = ON
GO
ALTER DATABASE [qly kho] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [qly kho]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 21/04/2025 4:16:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[MaPX] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [int] NOT NULL,
	[TenKho] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogHeThong]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogHeThong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [datetime] NULL,
	[SuKien] [nvarchar](100) NULL,
	[DuLieuJSON] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNCC] [int] NULL,
	[MaKho] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [int] NOT NULL,
	[NgayXuat] [date] NULL,
	[MaKho] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 2) NULL,
	[GiaBan] [decimal](18, 2) NULL,
	[MaLoai] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TonKho]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonKho](
	[MaSP] [int] NOT NULL,
	[MaKho] [int] NOT NULL,
	[SoLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (1001, 101, 50, CAST(6000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuong], [DonGia]) VALUES (1002, 101, 50, CAST(6000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (1, N'Kho chính', N'123 Lê Lợi')
GO
SET IDENTITY_INSERT [dbo].[LogHeThong] ON 

INSERT [dbo].[LogHeThong] ([ID], [ThoiGian], [SuKien], [DuLieuJSON]) VALUES (1, CAST(N'2025-04-21T15:37:13.933' AS DateTime), N'NHAP_KHO', N'[{"MaPN":1001,"MaSP":101,"SoLuong":50,"DonGia":6000.00}]')
INSERT [dbo].[LogHeThong] ([ID], [ThoiGian], [SuKien], [DuLieuJSON]) VALUES (2, CAST(N'2025-04-21T15:37:42.570' AS DateTime), N'NHAP_KHO', N'[{"MaPN":1002,"MaSP":101,"SoLuong":50,"DonGia":6000.00}]')
SET IDENTITY_INSERT [dbo].[LogHeThong] OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Coca Việt Nam', N'HCM', N'0901234567', NULL)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNCC], [MaKho], [GhiChu]) VALUES (1001, CAST(N'2025-04-21' AS Date), 1, 1, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaNCC], [MaKho], [GhiChu]) VALUES (1002, CAST(N'2025-04-21' AS Date), 1, 1, NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [GiaNhap], [GiaBan], [MaLoai], [GhiChu]) VALUES (101, N'Coca 330ml', N'Lon', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TonKho] ([MaSP], [MaKho], [SoLuongTon]) VALUES (101, 1, 200)
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[TonKho]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
/****** Object:  Trigger [dbo].[trg_CapNhatTonKho_Nhap]    Script Date: 21/04/2025 4:16:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CapNhatTonKho_Nhap]
ON [dbo].[ChiTietPhieuNhap]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra số lượng hợp lệ
    IF EXISTS (SELECT * FROM inserted WHERE SoLuong <= 0)
    BEGIN
        RAISERROR (N'Số lượng nhập phải lớn hơn 0', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Cập nhật hoặc thêm mới tồn kho
    MERGE TonKho AS target
    USING (
        SELECT i.MaSP, p.MaKho, i.SoLuong
        FROM inserted i
        JOIN PhieuNhap p ON i.MaPN = p.MaPN
    ) AS src
    ON target.MaSP = src.MaSP AND target.MaKho = src.MaKho

    WHEN MATCHED THEN
        UPDATE SET SoLuongTon = SoLuongTon + src.SoLuong

    WHEN NOT MATCHED THEN
        INSERT (MaSP, MaKho, SoLuongTon)
        VALUES (src.MaSP, src.MaKho, src.SoLuong);

    -- Ghi log nếu có bảng log
    INSERT INTO LogHeThong (ThoiGian, SuKien, DuLieuJSON)
    SELECT GETDATE(), N'NHAP_KHO',
           (SELECT * FROM inserted FOR JSON AUTO)
END
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] ENABLE TRIGGER [trg_CapNhatTonKho_Nhap]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatTonKho_PN]    Script Date: 21/04/2025 4:17:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CapNhatTonKho_PN]
ON [dbo].[ChiTietPhieuNhap]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra số lượng nhập > 0
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE SoLuong <= 0
    )
    BEGIN
        RAISERROR(N'Số lượng nhập phải lớn hơn 0.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;

    -- Kiểm tra sản phẩm có tồn tại
    IF EXISTS (
        SELECT i.MaSP
        FROM inserted i
        LEFT JOIN SanPham sp ON i.MaSP = sp.MaSP
        WHERE sp.MaSP IS NULL
    )
    BEGIN
        RAISERROR(N'Mã sản phẩm không tồn tại.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;

    DECLARE @MaKho INT;

    -- Lấy mã kho từ phiếu nhập
    SELECT TOP 1 @MaKho = pn.MaKho
    FROM PhieuNhap pn
    JOIN inserted i ON pn.MaPN = i.MaPN;

    -- Cập nhật tồn kho bằng MERGE
    MERGE TonKho AS tk
    USING (
        SELECT i.MaSP, i.SoLuong, @MaKho AS MaKho
        FROM inserted i
    ) AS src
    ON tk.MaSP = src.MaSP AND tk.MaKho = src.MaKho

    WHEN MATCHED THEN
        UPDATE SET tk.SoLuongTon = tk.SoLuongTon + src.SoLuong

    WHEN NOT MATCHED THEN
        INSERT (MaSP, MaKho, SoLuongTon)
        VALUES (src.MaSP, src.MaKho, src.SoLuong);
END;
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] ENABLE TRIGGER [trg_CapNhatTonKho_PN]
GO
USE [master]
GO
ALTER DATABASE [qly kho] SET  READ_WRITE 
GO
