USE [master]
GO
/****** Object:  Database [TechnologicalWarehouse]    Script Date: 15/12/2020 00:49:17 ******/
CREATE DATABASE [TechnologicalWarehouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechnologicalWarehouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechnologicalWarehouse.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechnologicalWarehouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TechnologicalWarehouse_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TechnologicalWarehouse] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechnologicalWarehouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechnologicalWarehouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechnologicalWarehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechnologicalWarehouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechnologicalWarehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechnologicalWarehouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechnologicalWarehouse] SET  MULTI_USER 
GO
ALTER DATABASE [TechnologicalWarehouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechnologicalWarehouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechnologicalWarehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechnologicalWarehouse] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechnologicalWarehouse] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechnologicalWarehouse] SET QUERY_STORE = OFF
GO
USE [TechnologicalWarehouse]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 15/12/2020 00:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameUser] [nvarchar](50) NULL,
	[PasswordUser] [nvarchar](32) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecordProducts]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecordProducts](
	[ProductCode] [int] NOT NULL,
	[NameProduct] [nvarchar](50) NULL,
	[ProductDescription] [nvarchar](100) NULL,
	[ProductBrand] [nvarchar](50) NULL,
	[ProductModel] [nvarchar](50) NULL,
	[ProductSerial] [nvarchar](50) NULL,
	[ProductStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRecordProducts] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblLogin] ON 

INSERT [dbo].[tblLogin] ([id], [NameUser], [PasswordUser]) VALUES (5, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (1112, N'Laptop', N'GAMER LAPTOP', N'DELL', N'4578IO', N'124', N'Discharged')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (2405, N'Desktop', N'APPLE PRODUCT', N'APPLE', N'APPLE MACBOOK PRO MAX', N'45476AN', N'Not available')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (2508, N'Printer', N'Print on full color', N'Canon', N'7854455', N'444AS', N'Available')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (4125, N'Laptop', N'LAPTOP WHITE', N'Hewlett packard', N'874LPO', N'HHH77G', N'Working')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (4367, N'Laptop', N'LAPTOP BLACK', N'Hewlett packard', N'AA8H-LO', N'45DFFV', N'Working')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (4444, N'Desktop', N'DESKTOP TOP', N'COMPACT', N'45SAQW', N'7838', N'Discharged')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (5553, N'Desktop', N'APPLE PRODUCT', N'APPLE', N'MACBOK PRO', N'786HF', N'Taken')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (6978, N'Desktop', N'DESKTOP DESIGN', N'DELL', N'45LO500', N'1245PO', N'Available')
INSERT [dbo].[tblRecordProducts] ([ProductCode], [NameProduct], [ProductDescription], [ProductBrand], [ProductModel], [ProductSerial], [ProductStatus]) VALUES (33363, N'Laptop', N'LAPTOP APPLE', N'APPLE', N'MACBOOK PRO', N'458778876T', N'Working')
/****** Object:  StoredProcedure [dbo].[ConsultUser]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[ConsultUser]
  @user nvarchar(50),
  @password nvarchar (50)

  as
  begin
  select Users from Login where Users = @user and Password =  @password;
  end
GO
/****** Object:  StoredProcedure [dbo].[DeleteAll]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[DeleteAll]
  as
  begin
  DELETE FROM tblRecordProducts
  end
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteProduct]
@ProductCode int
as
begin
delete from tblRecordProducts where ProductCode = @ProductCode
end
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertProduct]
@ProductCode int,
@NameProduct nvarchar(50),
@ProductDescription nvarchar(100),
@ProductBrand nvarchar(50),
@ProductModel nvarchar(50),
@ProductSerial nvarchar(50),
@ProductStatus nvarchar(50)

as
begin
insert into tblRecordProducts(ProductCode, NameProduct, ProductDescription, ProductBrand,
ProductModel, ProductSerial, ProductStatus)
Values(@ProductCode, @NameProduct, @ProductDescription, @ProductBrand, @ProductModel, @ProductSerial,
@ProductStatus);
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 15/12/2020 00:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateProduct]
@ProductCode int,
@NameProduct nvarchar(50),
@ProductDescription nvarchar(100),
@ProductBrand nvarchar(50),
@ProductModel nvarchar(50),
@ProductSerial nvarchar(50),
@ProductStatus nvarchar(50)
as
begin
update tblRecordProducts set ProductCode = @ProductCode, NameProduct = @NameProduct, 
ProductDescription = @ProductDescription, ProductBrand = @ProductBrand, ProductModel = @ProductModel,
ProductSerial = @ProductSerial, ProductStatus = @ProductStatus
where ProductCode = @ProductCode
end
GO
USE [master]
GO
ALTER DATABASE [TechnologicalWarehouse] SET  READ_WRITE 
GO
