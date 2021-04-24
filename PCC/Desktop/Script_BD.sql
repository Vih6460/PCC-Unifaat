USE [master]
GO

/****** Object:  Database [bd_hgold]    Script Date: 16/04/2021 22:52:00 ******/
DROP DATABASE [bd_hgold]
GO

/****** Object:  Database [bd_hgold]    Script Date: 16/04/2021 22:52:00 ******/
CREATE DATABASE [bd_hgold]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_nota_carregamento', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bd_nota_carregamento.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_nota_carregamento_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\bd_nota_carregamento_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_hgold].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bd_hgold] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bd_hgold] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bd_hgold] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bd_hgold] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bd_hgold] SET ARITHABORT OFF 
GO

ALTER DATABASE [bd_hgold] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [bd_hgold] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bd_hgold] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bd_hgold] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bd_hgold] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bd_hgold] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bd_hgold] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bd_hgold] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bd_hgold] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bd_hgold] SET  DISABLE_BROKER 
GO

ALTER DATABASE [bd_hgold] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bd_hgold] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bd_hgold] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bd_hgold] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bd_hgold] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bd_hgold] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bd_hgold] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bd_hgold] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [bd_hgold] SET  MULTI_USER 
GO

ALTER DATABASE [bd_hgold] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bd_hgold] SET DB_CHAINING OFF 
GO

ALTER DATABASE [bd_hgold] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [bd_hgold] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [bd_hgold] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [bd_hgold] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [bd_hgold] SET QUERY_STORE = OFF
GO

ALTER DATABASE [bd_hgold] SET  READ_WRITE 
GO
