USE [master]
GO
/****** Object:  Database [Videocards]    Script Date: 10/3/2017 7:47:23 PM ******/
CREATE DATABASE [Videocards]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Videocards', FILENAME = N'C:\Users\pdlaz\Videocards.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Videocards_log', FILENAME = N'C:\Users\pdlaz\Videocards_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Videocards] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Videocards].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Videocards] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Videocards] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Videocards] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Videocards] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Videocards] SET ARITHABORT OFF 
GO
ALTER DATABASE [Videocards] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Videocards] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Videocards] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Videocards] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Videocards] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Videocards] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Videocards] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Videocards] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Videocards] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Videocards] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Videocards] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Videocards] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Videocards] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Videocards] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Videocards] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Videocards] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Videocards] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Videocards] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Videocards] SET  MULTI_USER 
GO
ALTER DATABASE [Videocards] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Videocards] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Videocards] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Videocards] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Videocards] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Videocards] SET QUERY_STORE = OFF
GO
USE [Videocards]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Videocards]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/3/2017 7:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[title] [varchar](max) NULL,
	[weekend] [varchar](max) NULL,
	[gross] [varchar](max) NULL,
	[weeks] [varchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/3/2017 7:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[brand] [varchar](max) NULL,
	[product_name] [varchar](max) NULL,
	[shipping] [varchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Kingsman: The Golden Circle', N' $16.9M', N' $66.6M', N' 2', 2)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'It', N' $16.9M', N' $290.8M', N' 4', 3)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'American Made', N' $16.8M', N' $16.8M', N' 1', 4)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'The LEGO Ninjago Movie', N' $11.6M', N' $35.2M', N' 2', 5)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Flatliners', N' $6.6M', N' $6.6M', N' 1', 6)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Battle of the Sexes', N' $3.4M', N' $4.1M', N' 2', 7)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'American Assassin', N' $3.3M', N' $31.9M', N' 3', 8)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Home Again', N' $1.7M', N' $25.2M', N' 4', 9)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Til Death Do Us Part', N' $1.5M', N' $1.5M', N' 1', 10)
INSERT [dbo].[Movies] ([title], [weekend], [gross], [weeks], [Id]) VALUES (N'Mother!', N' $1.4M', N' $16.3M', N' 3', 11)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1060 DirectX 12 GV-N1060WF2OC-3GD 3GB 192-Bit GDDR5 PCI Express 3.0 x16 ATX Video Card', N'$4.99 Shipping', 1)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1080 AORUS 8GB DirectX 12 GV-N1080AORUS-8GD R2 256-Bit GDDR5X PCI Express 3.0 x16 Video Card| GV-N1080AORUS-8GD R2', N'$4.99 Shipping', 2)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'AMD', N'AMD Radeon Vega Frontier Edition DirectX 12 100-506061 16GB 2048-Bit HBM2 Video Card (Air Cooled Model)', N'Free Shipping', 3)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI Radeon RX 570 DirectX 12 RX 570 GAMING X 4G 4GB 256-Bit GDDR5 PCI Express 3.0 HDCP Ready CrossFireX Support ATX Video Card', N'$4.99 Shipping', 4)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'Sapphire Tech', N'SAPPHIRE Radeon RX VEGA 64 DirectX 12 100410L 8GB 2048-Bit HBM2 HDMI / TRIPLE DP (UEFI) PCI Express 3.0 CrossFireX Support ATX Video Card ', N'$4.99 Shipping', 5)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE Radeon RX VEGA 64 BLACK DirectX 12 GV-RXVEGA64-8GD-B 8GB 2048-Bit HBM2 PCI Express 3.0 x16 ATX Video Card', N'$4.99 Shipping', 6)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1070 DirectX 12 GV-N1070G1 GAMING-8GD R2 256-Bit GDDR5 PCI Express 3.0 x16 SLI Support ATX Video Card', N'Free Shipping', 7)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI GeForce GTX 1060 DirectX 12 GeForce GTX 1060 GAMING 6G 6GB 192-Bit GDDR5 PCI Express 3.0 x16 ATX Video Card', N'$4.99 Shipping', 8)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'EVGA', N'EVGA GeForce GTX 1060 3GB SSC GAMING ACX 3.0| 03G-P4-6167-KR| 3GB GDDR5| LED| DX12 OSD Support (PXOC)', N'$4.99 Shipping', 9)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'Sapphire Tech', N'SAPPHIRE Radeon RX Vega 56 DirectX 12 100420L 8GB 2048-Bit HBM2 CrossFireX Support ATX Video Card', N'$4.99 Shipping', 10)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'EVGA', N'EVGA GeForce GTX 1070 FTW GAMING ACX 3.0| 08G-P4-6276-KR| 8GB GDDR5| RGB LED| 10CM FAN| 10 Power Phases| Double BIOS| DX12 OSD Support (PXOC)', N'$4.99 Shipping', 11)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'AMD', N'AMD Radeon Vega Frontier Edition DirectX 12.1 100-5056062 16GB 2048-Bit HBM2 Video Card (Liquid Cooled Model)', N'$6.99 Shipping', 12)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ASUS', N'ASUS ROG GeForce GTX 1080 Ti DirectX 12 STRIX-GTX1080TI-11G-GAMING 11GB 352-Bit GDDR5X HDCP Ready SLI Support Video Card', N'$4.99 Shipping', 13)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'PowerColor', N'PowerColor Radeon RX Vega 56 DirectX 12 AXRX VEGA 56 8GBHBM2-3DH 8GB 2048-Bit HBM2 PCI Express 3.0 CrossFireX Support ATX Video Card', N'$4.99 Shipping', 14)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ASUS', N'ASUS GeForce GTX 1060 DUAL-GTX1060-O6G 6GB 192-Bit GDDR5 PCI Express 3.0 HDCP Ready Video Card', N'Free Shipping', 15)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1080 DirectX 12 GV-N1080D5X-8GD 8GB 256-Bit GDDR5X PCI Express 3.0 x16 ATX Video Cards', N'$4.99 Shipping', 16)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'EVGA', N'EVGA GeForce GTX 1060 SC GAMING| ACX 2.0 (Single Fan)| 03G-P4-6162-KR| 3GB GDDR5| DX12 OSD Support (PXOC)', N'$4.99 Shipping', 17)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI Black Radeon RX Vega 64 DirectX 12 RADEON RX VEGA 64 8G 8GB 2048-Bit HBM2 PCI Express 3.0 x16 HDCP Ready CrossFireX Support Video Card - Black Fan', N'$4.99 Shipping', 18)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'EVGA', N'EVGA GeForce GTX 1060 GAMING| ACX 2.0 (Single Fan)| 03G-P4-6160-KR| 3GB GDDR5| DX12 OSD Support (PXOC)| Only 6.8 Inches', N'Free Shipping', 19)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI GeForce GTX 1070 DirectX 12 GTX 1070 GAMING 8G 8GB 256-Bit GDDR5 PCI Express 3.0 x16 HDCP Ready SLI Support ATX Video Card', N'Free Shipping', 20)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE AORUS GeForce GTX 1080 Ti DirectX 12 GV-N108TAORUS-11GD 11GB 352-Bit GDDR5X PCI Express 3.0 x16 SLI Support ATX Video Card', N'$4.99 Shipping', 21)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI Radeon RX Vega 64 DirectX 12 RADEON RX VEGA 64 WAVE 8G 8GB 2048-Bit HBM2 PCI Express 3.0 x16 HDCP Ready CrossFireX Support Video Card - Liquid Cooler', N'$6.99 Shipping', 22)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'XFX', N'XFX RS XXX Edition Radeon RX 570 DirectX 12 RX-570P427D6 4GB OC+ 1284 MHz XFX Custom Backplate 256-Bit DDR5 PCI Express 3.0 CrossFireX Support Video Card', N'$4.99 Shipping', 23)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1060 DirectX 12 GV-N1060G1 GAMING-6GD 6GB 192-Bit GDDR5 PCI Express 3.0 x16 ATX Video Card', N'$4.99 Shipping', 24)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE AORUS XTREME GeForce GTX 1060 6G REV 2.0| GV-N1060AORUS-X6GDR2', N'Free Shipping', 25)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI GeForce GTX 1080 Ti DirectX 12 GTX 1080 Ti LIGHTNING X 11GB 352-Bit GDDR5X PCI Express 3.0 x16 HDCP Ready SLI Support Video Card', N'$4.99 Shipping', 26)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'PNY Technologies  Inc.', N'PNY GeForce GTX 1060 DirectX 12 VCGGTX10606XGPB-OC 6GB 192-Bit GDDR5 PCI Express 3.0 x16 Video Card', N'Free Shipping', 27)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI Radeon RX 580 DirectX 12 RX 580 GAMING X 4G 4GB 256-Bit GDDR5 PCI Express 3.0 x16 HDCP Ready CrossFireX Support Video Card', N'Free Shipping', 28)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ZOTAC', N'ZOTAC GeForce GTX 1080 Mini| ZT-P10800H-10P| 8GB GDDR5X IceStorm Cooling| Dual Fans| 90mm Pressure Optimized Fan| 100mm Maximum Airflow Optimized Fan| Direct GPU Copper Block Contact| Metal Back plate', N'Free Shipping', 29)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'PNY Technologies  Inc.', N'PNY GeForce GTX 1060 DirectX 12 VCGGTX10606PB 6GB 192-Bit GDDR5 PCI Express 3.0 x16 Video Card', N'Free Shipping', 30)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI GeForce GTX 1080 DirectX 12 GTX 1080 ARMOR 8G OC 8GB 256-Bit GDDR5X PCI Express 3.0 x16 HDCP Ready SLI Support ATX Video Card', N'$3.99 Shipping', 31)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ASUS', N'ASUS ROG GeForce GTX 1080 STRIX-GTX1080-A8G-GAMING 8GB 256-Bit GDDR5X PCI Express 3.0 HDCP Ready Video Card', N'$4.99 Shipping', 32)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'GIGABYTE', N'GIGABYTE GeForce GTX 1080 DirectX 12 GV-N1080TTOC-8GD 8GB 256-Bit GDDR5X PCI Express 3.0 x16 SLI Support ATX Turbo OC Video Card', N'$4.99 Shipping', 33)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'MSI', N'MSI GeForce GTX 1080 Ti DirectX 12 GeForce GTX 1080 Ti GAMING X 11G 11GB 352-Bit GDDR5X PCI Express 3.0 x16 HDCP Ready SLI Support Video Card', N'$4.99 Shipping', 34)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ASUS', N'ASUS GeForce GTX 1060 STRIX-GTX1060-O6G-GAMING 6GB 192-Bit GDDR5 PCI Express 3.0 HDCP Ready Video Card', N'Free Shipping', 35)
INSERT [dbo].[Products] ([brand], [product_name], [shipping], [Id]) VALUES (N'ASUS', N'ASUS GeForce GTX 1070 DUAL-GTX1070-O8G 8GB 256-Bit GDDR5 PCI Express 3.0 HDCP Ready SLI Support Video Card', N'$3.99 Shipping', 36)
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [Videocards] SET  READ_WRITE 
GO
