USE [master]
GO
/****** Object:  Database [RI]    Script Date: 06-09-2021 18:42:53 ******/
CREATE DATABASE [RI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RI', FILENAME = N'C:\Users\Devil\RI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RI_log', FILENAME = N'C:\Users\Devil\RI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RI] SET ARITHABORT OFF 
GO
ALTER DATABASE [RI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RI] SET  MULTI_USER 
GO
ALTER DATABASE [RI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RI] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RI]
GO
/****** Object:  Table [dbo].[ApplicationType]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ApplicationType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Name] [varchar](255) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chart_Category]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chart_Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[NAME] [varchar](255) NULL,
	[ALIAS] [varchar](255) NULL,
	[ACTIVE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Charts]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Charts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[NAME] [varchar](255) NULL,
	[ALIAS] [varchar](255) NULL,
	[CATEGORY ID] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataSource]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DataSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Name] [varchar](255) NULL,
	[Rest API URL] [varchar](255) NULL,
	[API Result Format] [varchar](255) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataSource Fields]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DataSource Fields](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Data Field Name] [varchar](255) NULL,
	[Data Field Tooltip] [varchar](255) NULL,
	[Data Field Include] [bit] NULL,
	[Data Source ID] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Saved Queries]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Saved Queries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[SQL Text] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Rest API URL] [varchar](255) NULL,
	[API result Format] [varchar](255) NULL,
	[Icon] [int] NULL,
	[Icon Colour] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[System Colours]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[System Colours](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[NAME] [varchar](255) NULL,
	[Hex Value] [varchar](255) NULL,
	[Usage] [varchar](255) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[System Icons]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[System Icons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[ACTIVE] [bit] NULL,
	[CSS Class] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReportCharts]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserReportCharts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Name] [varchar](255) NULL,
	[JSON] [varchar](255) NULL,
	[UserReport ID] [int] NULL,
	[Datasource ID] [int] NULL,
	[Sequence] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReports]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserReports](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[JSON] [nvarchar](max) NULL,
	[Favourite] [bit] NULL,
	[Icon] [int] NULL,
	[Icon Colour] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReportsShared]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserReportsShared](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[User] [int] NULL,
	[JSON] [varchar](255) NULL,
	[UserReport ID] [int] NULL,
	[View] [bit] NULL,
	[Edit] [bit] NULL,
	[Delete] [bit] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReportTabs]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserReportTabs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED BY] [int] NULL,
	[Name] [varchar](255) NULL,
	[Sequence] [int] NULL,
	[UserReport ID] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06-09-2021 18:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CREATED] [datetime] NULL,
	[CREATED_BY] [int] NULL,
	[MODIFIED] [datetime] NULL,
	[MODIFIED_BY] [int] NULL,
	[DELETED] [datetime] NULL,
	[DELETED_BY] [int] NULL,
	[USER_NAME] [varchar](255) NULL,
	[FIRST_NAME] [varchar](255) NULL,
	[LAST_TNAME] [varchar](255) NULL,
	[EMAIL_ADDRESS] [varchar](255) NULL,
	[PASSWORD] [varchar](255) NULL,
	[ACTIVE] [bit] NULL,
	[DISPLAY_NAME] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Chart_Category] ON 

INSERT [dbo].[Chart_Category] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [ACTIVE]) VALUES (1, CAST(N'2019-12-25 09:09:55.790' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Two Dimensional', N'2
		   
		   
		   D', 1)
INSERT [dbo].[Chart_Category] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [ACTIVE]) VALUES (2, CAST(N'2019-12-25 09:10:18.447' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Three Dimensional', N'3D', 1)
SET IDENTITY_INSERT [dbo].[Chart_Category] OFF
SET IDENTITY_INSERT [dbo].[Charts] ON 

INSERT [dbo].[Charts] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [CATEGORY ID], [Active]) VALUES (1, CAST(N'2019-12-25 09:13:02.083' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Line', N'Line', 1, 1)
INSERT [dbo].[Charts] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [CATEGORY ID], [Active]) VALUES (2, CAST(N'2019-12-25 09:13:17.597' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Bar', N'Bar', 1, 1)
INSERT [dbo].[Charts] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [CATEGORY ID], [Active]) VALUES (3, CAST(N'2019-12-25 09:13:29.830' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Pie', N'Pie', 1, 1)
INSERT [dbo].[Charts] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [ALIAS], [CATEGORY ID], [Active]) VALUES (4, CAST(N'2019-12-25 09:13:46.177' AS DateTime), 1, NULL, NULL, NULL, NULL, N'Table', N'Table', 1, 1)
SET IDENTITY_INSERT [dbo].[Charts] OFF
SET IDENTITY_INSERT [dbo].[System Colours] ON 

INSERT [dbo].[System Colours] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [NAME], [Hex Value], [Usage], [Active]) VALUES (1, CAST(N'2019-12-25 09:16:03.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'Red', N'#c00000', N'Object', 1)
SET IDENTITY_INSERT [dbo].[System Colours] OFF
SET IDENTITY_INSERT [dbo].[UserReports] ON 

INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (11, NULL, 1, NULL, NULL, NULL, NULL, N'Test', N'', N'[{"Name":"pie","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"zczczxc","Styles":{"color":["#dd4b39","#dd4b39","#dd4b39","#dd4b39"],"borderColor":[],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"},{"Name":"line","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Min","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":2},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":3},{"NAME":"Table","ID":4}]},"Heading":"","Styles":{"color":["#dd4b39"],"borderColor":["#dd4b39"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"85px","PanalTop":"15px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"}]', 0, NULL, NULL, NULL)
INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (12, NULL, 1, NULL, NULL, NULL, NULL, N'Test', N'', N'[{"Name":"pie","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"zczczxc","Styles":{"color":["#dd4b39","#dd4b39","#dd4b39","#dd4b39"],"borderColor":[],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"},{"Name":"line","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Min","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":2},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":3},{"NAME":"Table","ID":4}]},"Heading":"","Styles":{"color":["#dd4b39"],"borderColor":["#dd4b39"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"85px","PanalTop":"15px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"}]', 0, NULL, NULL, NULL)
INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (14, NULL, 1, NULL, NULL, NULL, NULL, N'Test Report FOR DEMO', N'', N'[{"Name":"pie","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"Test","Styles":{"color":["#dd4b39","#dd4b39","#dd4b39","#dd4b39"],"borderColor":[],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"}]', 0, NULL, NULL, 1)
INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (15, NULL, 1, NULL, NULL, NULL, NULL, N'Demo For Multi tabs', N'', N'[{"Name":"pie","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"PIE CHart1","Styles":{"color":["#ddd439","#39d1dd","#03292c","#2c0f03"],"borderColor":[],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"261px","PanalHeight":"239px","PanalLeft":"86px","PanalTop":"19px"},"Index":0,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"left","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"},{"Name":"line","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Max","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":2},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":3},{"NAME":"Table","ID":4}]},"Heading":"","Styles":{"color":["#3942dd"],"borderColor":["#39dd42"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"892px","PanalHeight":"494px","PanalLeft":"69px","PanalTop":"36px"},"Index":1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"190"}]', 0, NULL, NULL, 1)
INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (2002, NULL, 1, NULL, NULL, NULL, NULL, N'Test D3mo 4', N'', N'[{"Name":"pie","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"PIE","Styles":{"color":["#dd4b39","#dd4b39","#dd4b39","#dd4b39"],"borderColor":[],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"6px","PanalTop":"16px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"},{"Name":"line","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"Line","Styles":{"color":["#dd4b39"],"borderColor":["#dd4b39"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"37px","PanalTop":"16px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"},{"Name":"bar","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Count","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":1},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":1},{"NAME":"Table","ID":1}]},"Heading":"Bar Chart","Styles":{"color":["#dd4b39"],"borderColor":["#dd4b39"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"191px","PanalTop":"45px"},"Index":-1,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"top","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"}]', 0, NULL, NULL, 1)
INSERT [dbo].[UserReports] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Description], [JSON], [Favourite], [Icon], [Icon Colour], [Active]) VALUES (2003, NULL, 1, NULL, NULL, NULL, NULL, N'Demo Application', N'', N'[{"Name":"line","Axis":{"YAxis":["ID"],"YAxisBar":[],"YAxisLine":[],"XAxisDisplay":true,"YAxisDisplay":true,"XAxisFontSize":10,"YAxisFontSize":10,"XAxisFontColor":"black","YAxisFontColor":"black","AggregateType":"Min","xAxisStack":false,"yAxisStack":false,"XAxis":"NAME"},"Table":{"Column":[],"TableStyle":"table","HeaderStyle":"thead-light","BorderStyle":""},"DataSource":{"Query":"Charts","Domain":"dbo","SourceId":"Charts","DataSet":[{"NAME":"Bar","ID":2},{"NAME":"Line","ID":1},{"NAME":"Pie","ID":3},{"NAME":"Table","ID":4}]},"Heading":"Line Chart","Styles":{"color":["#39dd4e"],"borderColor":["#dd4b39"],"colorBar":[],"borderColorBar":[],"colorLine":[],"borderColorLine":[],"borderWidth":3,"fill":true,"PanalWidth":"502px","PanalHeight":"363px","PanalLeft":"42px","PanalTop":"42px"},"Index":0,"Panel":{"PanalWidth":"400px","PanalHeight":"300px","PanalLeft":"0px","PanalTop":"0px"},"Legend":{"Legend":true,"LegendPosition":"left","LegendColor":"black","LegendFontSize":12},"ID":0,"Description":"","TabID":"1"}]', 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[UserReports] OFF
SET IDENTITY_INSERT [dbo].[UserReportsShared] ON 

INSERT [dbo].[UserReportsShared] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [User], [JSON], [UserReport ID], [View], [Edit], [Delete], [Active]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 15, 1, 0, 0, NULL)
INSERT [dbo].[UserReportsShared] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [User], [JSON], [UserReport ID], [View], [Edit], [Delete], [Active]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 14, 1, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[UserReportsShared] OFF
SET IDENTITY_INSERT [dbo].[UserReportTabs] ON 

INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (9, NULL, 1, NULL, NULL, NULL, NULL, N'tab 1', 1, 11, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (10, NULL, 1, NULL, NULL, NULL, NULL, N'tab 1', 1, 12, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (12, NULL, 1, NULL, NULL, NULL, NULL, N'tab 1', 1, 14, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (3004, NULL, 1, NULL, NULL, NULL, NULL, N'tab 12', 1, 15, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (3005, NULL, 1, NULL, NULL, NULL, NULL, N'Tabsdasd123dde3', 190, 15, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (3007, NULL, 1, NULL, NULL, NULL, NULL, N'tab 1', 1, 2002, 1)
INSERT [dbo].[UserReportTabs] ([ID], [CREATED], [CREATED BY], [MODIFIED], [MODIFIED BY], [DELETED], [DELETED BY], [Name], [Sequence], [UserReport ID], [Active]) VALUES (4002, NULL, 1, NULL, NULL, NULL, NULL, N'tab 1', 1, 2003, 1)
SET IDENTITY_INSERT [dbo].[UserReportTabs] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [CREATED], [CREATED_BY], [MODIFIED], [MODIFIED_BY], [DELETED], [DELETED_BY], [USER_NAME], [FIRST_NAME], [LAST_TNAME], [EMAIL_ADDRESS], [PASSWORD], [ACTIVE], [DISPLAY_NAME]) VALUES (1, CAST(N'2019-12-25 09:02:12.253' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'ADMIN', N'ANIX', N'ADMIN', N'AnixSuper@ANIXINVENTaIVE.COM', N'Test123', 1, N'Anix Admin')
INSERT [dbo].[Users] ([ID], [CREATED], [CREATED_BY], [MODIFIED], [MODIFIED_BY], [DELETED], [DELETED_BY], [USER_NAME], [FIRST_NAME], [LAST_TNAME], [EMAIL_ADDRESS], [PASSWORD], [ACTIVE], [DISPLAY_NAME]) VALUES (2, CAST(N'2019-12-25 09:02:22.910' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'DharamC', N'Dharmendra', N'Chouhan', N'Dharmendra.chouhan@ANIXINVENTaIVE.COM', N'Test123', 1, N'Dharam')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[ApplicationType]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[ApplicationType]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[ApplicationType]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Chart_Category]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Chart_Category]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Chart_Category]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Charts]  WITH CHECK ADD FOREIGN KEY([CATEGORY ID])
REFERENCES [dbo].[Chart_Category] ([ID])
GO
ALTER TABLE [dbo].[Charts]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Charts]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Charts]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource Fields]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource Fields]  WITH CHECK ADD FOREIGN KEY([Data Source ID])
REFERENCES [dbo].[DataSource] ([ID])
GO
ALTER TABLE [dbo].[DataSource Fields]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DataSource Fields]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Saved Queries]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Saved Queries]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Saved Queries]  WITH CHECK ADD FOREIGN KEY([Icon Colour])
REFERENCES [dbo].[System Colours] ([ID])
GO
ALTER TABLE [dbo].[Saved Queries]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Saved Queries]  WITH CHECK ADD FOREIGN KEY([Icon])
REFERENCES [dbo].[System Icons] ([ID])
GO
ALTER TABLE [dbo].[System Colours]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[System Colours]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[System Colours]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[System Icons]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[System Icons]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[System Icons]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportCharts]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportCharts]  WITH CHECK ADD FOREIGN KEY([Datasource ID])
REFERENCES [dbo].[DataSource] ([ID])
GO
ALTER TABLE [dbo].[UserReportCharts]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportCharts]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportCharts]  WITH CHECK ADD FOREIGN KEY([UserReport ID])
REFERENCES [dbo].[UserReports] ([ID])
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD FOREIGN KEY([Icon Colour])
REFERENCES [dbo].[System Colours] ([ID])
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReports]  WITH CHECK ADD FOREIGN KEY([Icon])
REFERENCES [dbo].[System Icons] ([ID])
GO
ALTER TABLE [dbo].[UserReportsShared]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportsShared]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportsShared]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportsShared]  WITH CHECK ADD FOREIGN KEY([UserReport ID])
REFERENCES [dbo].[UserReports] ([ID])
GO
ALTER TABLE [dbo].[UserReportsShared]  WITH CHECK ADD FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportTabs]  WITH CHECK ADD FOREIGN KEY([CREATED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportTabs]  WITH CHECK ADD FOREIGN KEY([DELETED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportTabs]  WITH CHECK ADD FOREIGN KEY([MODIFIED BY])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserReportTabs]  WITH CHECK ADD FOREIGN KEY([UserReport ID])
REFERENCES [dbo].[UserReports] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[ChartsGet]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ChartsGet]
@Id int null = null,
@Name Varchar(255) null = null,
@Active bit null = null

AS
BEGIN

BEGIN TRY

SELECT c.[ID]
      ,c.[CREATED]
      ,c.[CREATED BY]
      ,c.[MODIFIED]
      ,c.[MODIFIED BY]
      ,c.[DELETED]
      ,c.[DELETED BY]
      ,c.[NAME]
      ,c.[ALIAS]
      ,c.[CATEGORY ID]
	  ,cc.[Name] as CATEGOORY
  FROM [dbo].[Charts] c
	JOIN [dbo].[Chart_Category] cc
		ON c.[CATEGORY ID] = cc.[ID]

  WHERE
	 
	(  @Id IS NULL OR c.[ID] = @Id )
	 and ( @Name is null or c.[Name] = @Name )
	 and ( @Active is null or c.Active = @Active )

END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END



GO
/****** Object:  StoredProcedure [dbo].[DataSourceGet]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DataSourceGet]
          @ID INT null          
          ,@Name varchar(255) null
          ,@Active bit null 
AS
BEGIN

BEGIN TRY

SELECT D.[ID]
      ,D.[CREATED]
      ,D.[CREATED BY]
      ,D.[MODIFIED]
      ,D.[MODIFIED BY]
      ,D.[DELETED]
      ,D.[DELETED BY]
      ,D.[Name]
      ,D.[Rest API URL]
      ,D.[API Result Format]
	  ,DF.[Data Field Name]
	  ,DF.[Data Field Tooltip]
	  ,DF.[Data Source ID]
  FROM [dbo].[DataSource] D
   JOIN [dbo].[DataSource Fields] DF
		ON D.ID = DF.[Data Source ID]
  WHERE
 ( @ID is null or D.[ID] = @ID) 
  AND ( @Name is null or D.[Name] = @Name )
  and ( @Active is null or D.Active = @Active )

END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[SavedQueriesGet]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- SavedQueriesGet null, null
create PROCEDURE [dbo].[SavedQueriesGet]
          @ID INT null          
           ,@Name varchar(255) null
           ,@Active bit null

AS
BEGIN

BEGIN TRY



SELECT [ID]
      ,[CREATED]
      ,[CREATED BY]
      ,[MODIFIED]
      ,[MODIFIED BY]
      ,[DELETED]
      ,[DELETED BY]
      ,[SQL Text]
      ,[Description]
      ,[Name]
      ,[Rest API URL]
      ,[API result Format]
      ,[Icon]
      ,[Icon Colour]
  FROM [dbo].[Saved Queries]
  where
 ( @ID is null or [ID] = @ID) 
  AND ( @Name is null or [Name] = @Name )
  and ( @Active is null or [Active] = @Active )




END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END



GO
/****** Object:  StoredProcedure [dbo].[SavedQueriesIns]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[SavedQueriesIns]

          @SQL varchar(3000) null
           ,@Description varchar(255) null
           ,@Name varchar(255) null
           ,@RestAPIURL varchar(255) null
           ,@APIResultFormat varchar(255) null
           ,@Icon int null
           ,@IconColour int null
		   ,@Active bit null

AS
BEGIN

BEGIN TRY



INSERT INTO [dbo].[Saved Queries]
           ([CREATED]
           ,[CREATED BY]
           ,[SQL Text]
           ,[Description]
           ,[Name]
           ,[Rest API URL]
           ,[API result Format]
           ,[Icon]
           ,[Icon Colour]
		   ,[Active])
     VALUES
           (getUTCDate(),
		   null,

		    @SQL 
           ,@Description
           ,@Name
           ,@RestAPIURL
           ,@APIResultFormat
           ,@Icon
           ,@IconColour
		   ,@Active)




END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END



GO
/****** Object:  StoredProcedure [dbo].[SaveUserReports]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveUserReports]

@ReportName NVarchar(255) null,
@ReportJSON Nvarchar(MAX) null,
@TabJSON Nvarchar(MAX) null,
@UserId INT,
@ReportID int
AS
BEGIN

BEGIN TRY
DECLARE @JSONReport NVARCHAR(MAX);
SET @JSONReport = (SELECT REPLACE(@ReportJSON,'\', ''));

DECLARE @JSONTab NVARCHAR(MAX);
SET @JSONTab = (SELECT REPLACE(@TabJSON,'\', ''));

	IF EXISTS (SELECT TOP 1 1 from UserReports where ID = @ReportID)
		BEGIN
		   UPDATE UserReports SET JSON = @ReportJSON where ID = @ReportID
		
	    DELETE from UserReportTabs where [UserReport ID] = @ReportID
		Select * into #tempTableUserTab from OPENJSON(@JSONTab) WITH (ID nvarchar(200),TabName nvarchar(500));
		Insert into UserReportTabs ([CREATED BY],Name,Sequence,[UserReport ID],Active)
		Select @UserId, TabName, ID,@ReportID,1 from #tempTableUserTab

		Select 'true' as Success, 'Report Update Successfully' as Message
		END
		ELSE
		BEGIN
		  Insert into UserReports([CREATED BY],Name,Description,JSON,[Active],[Favourite]) values (@UserId,@ReportName,'',@ReportJSON, 1,0)
		DECLARE @ID int;
		SET @ID = (SELECT SCOPE_IDENTITY());
	
		Select * into #tempTableUserTabs from OPENJSON(@JSONTab) WITH (ID nvarchar(200),TabName nvarchar(500));
		Insert into UserReportTabs ([CREATED BY],Name,Sequence,[UserReport ID],Active)
		Select @UserId, TabName, ID,@ID,1 from #tempTableUserTabs

		Select 'true' as Success, 'Report saved Successfully' as Message
		
	END
END TRY
BEGIN CATCH

	select ERROR_MESSAGE() AS ErrorMessage

END CATCH
End


GO
/****** Object:  StoredProcedure [dbo].[UserGet]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UserGet]
@UserName Varchar(255) null,
@FirstName varchar(255) null,
@EmailAddrerss varchar(255) null,
@Active bit null 
AS
BEGIN


BEGIN TRY

SELECT [ID]
      ,[CREATED]
      ,[CREATED_BY]
      ,[MODIFIED]
      ,[MODIFIED_BY]
      ,[DELETED]
      ,[DELETED_BY]
      ,[USER_NAME]
      ,[FIRST_NAME]
      ,[LAST_TNAME]
      ,[EMAIL_ADDRESS]
      ,[PASSWORD]
      ,[ACTIVE]
      ,[DISPLAY_NAME]
  FROM [dbo].[USERS]
  WHERE 
  @UserName IS NULL OR [USER_NAME] = @UserName 
  and (@FirstName is null or [FIRST_NAME] = @FirstName )
  and ( @EmailAddrerss is null or [EMAIL_ADDRESS] = @EmailAddrerss )
  and ( @Active is null or [ACTIVE] = @Active )

END TRY
BEGIN CATCH

	select ERROR_MESSAGE() AS ErrorMessage

END CATCH






End


GO
/****** Object:  StoredProcedure [dbo].[UserReportsIns]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UserReportsIns]

@Name varchar(255) null
,@Description varchar(255) null
,@JSON varchar(3000) null
,@Favourite varchar(255) null
,@Icon int null
,@IconColour int null
,@Active bit null
       
AS
BEGIN

BEGIN TRY

INSERT INTO [dbo].[UserReports]
           ([CREATED]
           ,[CREATED BY]           
           ,[Name]
           ,[Description]
           ,[JSON]
           ,[Favourite]
           ,[Icon]
           ,[Icon Colour]
		   ,[Active])
     VALUES
           (getutcdate()
			, null
			,@Name
			,@Description
			,@JSON
			,@Favourite
			,@Icon
			,@IconColour
		     ,@Active)




END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[UserReportTabGet]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserReportTabGet]

 @ID INT null          
,@Name varchar(255) null
,@Active bit null
AS
BEGIN

BEGIN TRY


SELECT [ID]
      ,[CREATED]
      ,[CREATED BY]
      ,[MODIFIED]
      ,[MODIFIED BY]
      ,[DELETED]
      ,[DELETED BY]
      ,[Name]
      ,[Sequence]
      ,[UserReport ID]
	  ,[Active]
  FROM [dbo].[UserReportTabs]

  WHERE
 ( @ID is null or [ID] = @ID) 
  AND ( @Name is null or [Name] = @Name )
  AND ( @Active is null or [Active] = @Active )





END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[UserUpd]    Script Date: 06-09-2021 18:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserUpd]
@Id int,
@UserName Varchar(255) null,
@FirstName varchar(255) null,
@LastName varchar(255) null,
@EmailAddrerss varchar(255) null,
@Password varchar(255) null,
@Active bit null ,
@DisplayName varchar(255) null,
@CurrentUserID int
AS
BEGIN


BEGIN TRY



UPDATE [dbo].[USERS]
   SET 
       [MODIFIED] = GETUTCDATE()
      ,[MODIFIED_BY] = @CurrentUserID
      ,[USER_NAME] = @UserName
      ,[FIRST_NAME] = @FirstName
      ,[LAST_TNAME] = @LastName
      ,[EMAIL_ADDRESS] = @EmailAddrerss
      ,[PASSWORD] = @Password
      ,[ACTIVE] = @Active
      ,[DISPLAY_NAME] = @DisplayName
 WHERE ID = @Id


END TRY

BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
END CATCH

END



GO
USE [master]
GO
ALTER DATABASE [RI] SET  READ_WRITE 
GO
