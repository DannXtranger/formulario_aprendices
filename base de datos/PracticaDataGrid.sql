USE [master]
GO
/****** Object:  Database [PracticaDataGrid]    Script Date: 17/03/2024 11:06:40 p. m. ******/
CREATE DATABASE [PracticaDataGrid]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PracticaDataGrid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PracticaDataGrid.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PracticaDataGrid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PracticaDataGrid_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PracticaDataGrid] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PracticaDataGrid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PracticaDataGrid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET ARITHABORT OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PracticaDataGrid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PracticaDataGrid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PracticaDataGrid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PracticaDataGrid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET RECOVERY FULL 
GO
ALTER DATABASE [PracticaDataGrid] SET  MULTI_USER 
GO
ALTER DATABASE [PracticaDataGrid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PracticaDataGrid] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PracticaDataGrid] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PracticaDataGrid] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PracticaDataGrid] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PracticaDataGrid] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PracticaDataGrid', N'ON'
GO
ALTER DATABASE [PracticaDataGrid] SET QUERY_STORE = ON
GO
ALTER DATABASE [PracticaDataGrid] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PracticaDataGrid]
GO
/****** Object:  Table [dbo].[aprendices]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aprendices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[documento] [numeric](10, 0) NULL,
	[fechaNacimiento] [date] NULL,
	[idTipoDocumento] [int] NULL,
	[idCiudad] [int] NULL,
	[idGenero] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudades]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_ciudad] [varchar](20) NULL,
	[codPostal] [numeric](6, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[generos]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_genero] [varchar](20) NULL,
	[abrev_genero] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposDocumentos]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposDocumentos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo_doc] [varchar](20) NULL,
	[abrev_tipo_doc] [nchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[aprendices] ON 

INSERT [dbo].[aprendices] ([id], [nombre], [documento], [fechaNacimiento], [idTipoDocumento], [idCiudad], [idGenero]) VALUES (6, N'sadfsdf dsfasdf', CAST(123123123 AS Numeric(10, 0)), CAST(N'2024-03-06' AS Date), 3, 4, 1)
SET IDENTITY_INSERT [dbo].[aprendices] OFF
GO
SET IDENTITY_INSERT [dbo].[ciudades] ON 

INSERT [dbo].[ciudades] ([id], [nombre_ciudad], [codPostal]) VALUES (1, N'Fonseca', CAST(444010 AS Numeric(6, 0)))
INSERT [dbo].[ciudades] ([id], [nombre_ciudad], [codPostal]) VALUES (2, N'Barrancas', CAST(443040 AS Numeric(6, 0)))
INSERT [dbo].[ciudades] ([id], [nombre_ciudad], [codPostal]) VALUES (3, N'Distra', CAST(444008 AS Numeric(6, 0)))
INSERT [dbo].[ciudades] ([id], [nombre_ciudad], [codPostal]) VALUES (4, N'Hato Nuevo', CAST(443020 AS Numeric(6, 0)))
INSERT [dbo].[ciudades] ([id], [nombre_ciudad], [codPostal]) VALUES (5, N'San Juan', CAST(443020 AS Numeric(6, 0)))
SET IDENTITY_INSERT [dbo].[ciudades] OFF
GO
SET IDENTITY_INSERT [dbo].[generos] ON 

INSERT [dbo].[generos] ([id], [nombre_genero], [abrev_genero]) VALUES (1, N'Masculino', N'M')
INSERT [dbo].[generos] ([id], [nombre_genero], [abrev_genero]) VALUES (2, N'Femenino', N'F')
SET IDENTITY_INSERT [dbo].[generos] OFF
GO
SET IDENTITY_INSERT [dbo].[tiposDocumentos] ON 

INSERT [dbo].[tiposDocumentos] ([id], [nombre_tipo_doc], [abrev_tipo_doc]) VALUES (1, N'Tarjeta de Identidad', N'TI')
INSERT [dbo].[tiposDocumentos] ([id], [nombre_tipo_doc], [abrev_tipo_doc]) VALUES (2, N'Cedula de Ciudadanía', N'CC')
INSERT [dbo].[tiposDocumentos] ([id], [nombre_tipo_doc], [abrev_tipo_doc]) VALUES (3, N'Pasaporte', N'PA')
SET IDENTITY_INSERT [dbo].[tiposDocumentos] OFF
GO
ALTER TABLE [dbo].[aprendices]  WITH CHECK ADD FOREIGN KEY([idCiudad])
REFERENCES [dbo].[ciudades] ([id])
GO
ALTER TABLE [dbo].[aprendices]  WITH CHECK ADD FOREIGN KEY([idGenero])
REFERENCES [dbo].[generos] ([id])
GO
ALTER TABLE [dbo].[aprendices]  WITH CHECK ADD  CONSTRAINT [FK_idTipoDocumento] FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[tiposDocumentos] ([id])
GO
ALTER TABLE [dbo].[aprendices] CHECK CONSTRAINT [FK_idTipoDocumento]
GO
/****** Object:  StoredProcedure [dbo].[obtenerCiudades]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerCiudades]
AS
SELECT ciudades.nombre_ciudad FROM ciudades;
GO
/****** Object:  StoredProcedure [dbo].[obtenerGeneros]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerGeneros]
AS
SELECT generos.nombre_genero FROM generos;
GO
/****** Object:  StoredProcedure [dbo].[obtenerTiposDocumento]    Script Date: 17/03/2024 11:06:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerTiposDocumento]
AS 
SELECT tiposDocumentos.nombre_tipo_doc FROM tiposDocumentos;
GO
USE [master]
GO
ALTER DATABASE [PracticaDataGrid] SET  READ_WRITE 
GO
