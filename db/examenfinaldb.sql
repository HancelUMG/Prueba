USE [master]
GO
/****** Object:  Database [examenfinaldb]    Script Date: 08/11/2020 03:31:21 p. m. ******/
CREATE DATABASE [examenfinaldb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'examenfinaldb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\examenfinaldb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'examenfinaldb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\examenfinaldb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [examenfinaldb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [examenfinaldb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [examenfinaldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [examenfinaldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [examenfinaldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [examenfinaldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [examenfinaldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [examenfinaldb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [examenfinaldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [examenfinaldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [examenfinaldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [examenfinaldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [examenfinaldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [examenfinaldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [examenfinaldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [examenfinaldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [examenfinaldb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [examenfinaldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [examenfinaldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [examenfinaldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [examenfinaldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [examenfinaldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [examenfinaldb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [examenfinaldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [examenfinaldb] SET RECOVERY FULL 
GO
ALTER DATABASE [examenfinaldb] SET  MULTI_USER 
GO
ALTER DATABASE [examenfinaldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [examenfinaldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [examenfinaldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [examenfinaldb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [examenfinaldb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [examenfinaldb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'examenfinaldb', N'ON'
GO
ALTER DATABASE [examenfinaldb] SET QUERY_STORE = OFF
GO
USE [examenfinaldb]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 08/11/2020 03:31:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [varchar](20) NOT NULL,
	[proveedor] [varchar](45) NOT NULL,
	[producto] [varchar](45) NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 08/11/2020 03:31:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[imagen] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 08/11/2020 03:31:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [varchar](45) NOT NULL,
	[contraseña] [varchar](20) NOT NULL,
	[tipoUsuario] [varchar](20) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [examenfinaldb] SET  READ_WRITE 
GO
