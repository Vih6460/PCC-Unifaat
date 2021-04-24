USE [master]
GO

/****** Object:  Database [BD_Orm]    Script Date: 11/04/2021 15:09:32 ******/
DROP DATABASE [BD_Orm]
GO

/****** Object:  Database [BD_Orm]    Script Date: 11/04/2021 15:09:32 ******/
CREATE DATABASE [BD_Orm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Orm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_Orm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Orm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_Orm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Orm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BD_Orm] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BD_Orm] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BD_Orm] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BD_Orm] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BD_Orm] SET ARITHABORT OFF 
GO

ALTER DATABASE [BD_Orm] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BD_Orm] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BD_Orm] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BD_Orm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BD_Orm] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BD_Orm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BD_Orm] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BD_Orm] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BD_Orm] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BD_Orm] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BD_Orm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BD_Orm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BD_Orm] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BD_Orm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BD_Orm] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BD_Orm] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BD_Orm] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BD_Orm] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [BD_Orm] SET  MULTI_USER 
GO

ALTER DATABASE [BD_Orm] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BD_Orm] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BD_Orm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BD_Orm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BD_Orm] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BD_Orm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BD_Orm] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BD_Orm] SET  READ_WRITE 
GO

