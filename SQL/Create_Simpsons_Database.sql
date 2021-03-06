/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [The_Simpsons]    Script Date: 9/30/2017 8:36:48 PM ******/
CREATE DATABASE [The_Simpsons]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'The_Simpsons', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\The_Simpsons.mdf' , SIZE = 512000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'The_Simpsons_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\The_Simpsons_log.ldf' , SIZE = 102400KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [The_Simpsons] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [The_Simpsons].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [The_Simpsons] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [The_Simpsons] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [The_Simpsons] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [The_Simpsons] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [The_Simpsons] SET ARITHABORT OFF 
GO
ALTER DATABASE [The_Simpsons] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [The_Simpsons] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [The_Simpsons] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [The_Simpsons] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [The_Simpsons] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [The_Simpsons] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [The_Simpsons] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [The_Simpsons] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [The_Simpsons] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [The_Simpsons] SET  DISABLE_BROKER 
GO
ALTER DATABASE [The_Simpsons] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [The_Simpsons] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [The_Simpsons] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [The_Simpsons] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [The_Simpsons] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [The_Simpsons] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [The_Simpsons] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [The_Simpsons] SET RECOVERY FULL 
GO
ALTER DATABASE [The_Simpsons] SET  MULTI_USER 
GO
ALTER DATABASE [The_Simpsons] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [The_Simpsons] SET DB_CHAINING OFF 
GO
ALTER DATABASE [The_Simpsons] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [The_Simpsons] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [The_Simpsons] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'The_Simpsons', N'ON'
GO
ALTER DATABASE [The_Simpsons] SET QUERY_STORE = OFF
GO
USE [The_Simpsons]
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
USE [The_Simpsons]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Normalized] [varchar](50) NOT NULL,
	[Gender] [char](1) NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Episode]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Air_Date] [date] NOT NULL,
	[Episode_Code] [varchar](6) NOT NULL,
	[Season] [smallint] NOT NULL,
	[Number_In_Season] [int] NOT NULL,
	[Number_In_Series] [int] NOT NULL,
	[US_Viewers_M] [decimal](5, 2) NULL,
	[Views] [int] NULL,
	[Imdb_Rating] [decimal](4, 2) NULL,
	[Imdb_Votes] [int] NULL,
	[Image_URL] [nvarchar](150) NULL,
	[Video_URL] [nvarchar](50) NULL,
 CONSTRAINT [PK_Episode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UniqueCode_Episode] UNIQUE NONCLUSTERED 
(
	[Episode_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest_Star]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest_Star](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Guest_Star] [varchar](40) NOT NULL,
	[Episode_Code] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Guest_Star] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] NOT NULL,
	[Name] [varchar](70) NOT NULL,
	[Normalized] [varchar](70) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Script]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Script](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Episode_ID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Raw] [nvarchar](max) NULL,
	[Timestamp_in_MS] [int] NULL,
	[Speaking_Line] [bit] NULL,
	[Character_ID] [int] NULL,
	[Location_ID] [int] NULL,
	[Character_Text] [varchar](50) NULL,
	[Location_Text] [varchar](70) NULL,
	[Spoken_Text] [nvarchar](max) NULL,
	[Normalized_Text] [nvarchar](max) NULL,
	[Word_Count] [int] NULL,
 CONSTRAINT [PK_Script] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writer]    Script Date: 9/30/2017 8:36:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Writer] [varchar](40) NOT NULL,
	[Episode_Code] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Writer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Guest_Star]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Star_Guest_Star] FOREIGN KEY([Episode_Code])
REFERENCES [dbo].[Episode] ([Episode_Code])
GO
ALTER TABLE [dbo].[Guest_Star] CHECK CONSTRAINT [FK_Guest_Star_Guest_Star]
GO
ALTER TABLE [dbo].[Script]  WITH CHECK ADD  CONSTRAINT [FK_Script_Character] FOREIGN KEY([Character_ID])
REFERENCES [dbo].[Character] ([ID])
GO
ALTER TABLE [dbo].[Script] CHECK CONSTRAINT [FK_Script_Character]
GO
ALTER TABLE [dbo].[Script]  WITH NOCHECK ADD  CONSTRAINT [FK_Script_Episode] FOREIGN KEY([Episode_ID])
REFERENCES [dbo].[Episode] ([ID])
GO
ALTER TABLE [dbo].[Script] CHECK CONSTRAINT [FK_Script_Episode]
GO
ALTER TABLE [dbo].[Script]  WITH CHECK ADD  CONSTRAINT [FK_Script_Location] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([ID])
GO
ALTER TABLE [dbo].[Script] CHECK CONSTRAINT [FK_Script_Location]
GO
ALTER TABLE [dbo].[Writer]  WITH CHECK ADD  CONSTRAINT [FK_Writer_Episode] FOREIGN KEY([Episode_Code])
REFERENCES [dbo].[Episode] ([Episode_Code])
GO
ALTER TABLE [dbo].[Writer] CHECK CONSTRAINT [FK_Writer_Episode]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The shows idex of characters.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Character'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Episode index for The Simpsons' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Episode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A list of guest stars.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Guest_Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A guest is on a episode.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Guest_Star', @level2type=N'CONSTRAINT',@level2name=N'FK_Guest_Star_Guest_Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The place the action happens.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'All the lines and more' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Script'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracking Characters in the Script.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Script', @level2type=N'CONSTRAINT',@level2name=N'FK_Script_Character'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Scripts need an episode ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Script', @level2type=N'CONSTRAINT',@level2name=N'FK_Script_Episode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracking Script Locations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Script', @level2type=N'CONSTRAINT',@level2name=N'FK_Script_Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tracking the true geniuses.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Writer'
GO
USE [master]
GO
ALTER DATABASE [The_Simpsons] SET  READ_WRITE 
GO
