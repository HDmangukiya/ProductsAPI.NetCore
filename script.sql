USE [master]
GO
/****** Object:  Database [Product]    Script Date: 30/07/2021 1:58:57 pm ******/
CREATE DATABASE [Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prodyct', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prodyct.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prodyct_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Prodyct_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Product] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product] SET RECOVERY FULL 
GO
ALTER DATABASE [Product] SET  MULTI_USER 
GO
ALTER DATABASE [Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product', N'ON'
GO
ALTER DATABASE [Product] SET QUERY_STORE = OFF
GO
USE [Product]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 30/07/2021 1:58:57 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductNumber] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (3, N'Car', N'123', CAST(N'2021-07-29T02:54:19.2833333' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (4, N'MotorCycle', N'321', CAST(N'2021-07-29T02:55:12.8900000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (5, N'Truck', N'456', CAST(N'2021-07-29T03:18:05.6103023' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (12, N'Uriel', N'86313319499', CAST(N'2020-08-30T10:51:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (13, N'Herman', N'39932267299', CAST(N'2022-03-08T20:54:48.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (14, N'Samuel', N'38504093299', CAST(N'2022-06-14T12:47:50.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (15, N'Chase', N'08859511599', CAST(N'2021-11-11T02:38:09.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (16, N'Maxwell', N'30454828199', CAST(N'2021-04-27T08:55:09.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (17, N'Davis', N'26599203499', CAST(N'2021-04-26T16:33:46.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (18, N'Galvin', N'64521048499', CAST(N'2020-12-03T06:07:14.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (19, N'Dolan', N'41700515899', CAST(N'2022-04-23T18:38:33.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (20, N'Randall', N'71455519999', CAST(N'2021-10-19T20:15:30.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (21, N'Paul', N'39511265599', CAST(N'2021-11-08T06:19:40.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (22, N'Joel', N'62475221499', CAST(N'2021-10-24T01:02:54.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (23, N'Burke', N'88624297699', CAST(N'2022-02-02T04:00:52.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (24, N'Tobias', N'15462746099', CAST(N'2022-04-28T08:30:37.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (25, N'Lev', N'80467247799', CAST(N'2021-11-12T13:07:10.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (26, N'Acton', N'61593697999', CAST(N'2020-10-21T04:30:12.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (27, N'Adam', N'14547093899', CAST(N'2022-03-06T13:53:52.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (28, N'Alexander', N'48429947899', CAST(N'2022-07-08T07:22:39.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (29, N'Marsden', N'44989407599', CAST(N'2020-08-28T20:41:47.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (30, N'Kirk', N'88491021899', CAST(N'2022-06-07T00:04:55.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (31, N'Elijah', N'31571846599', CAST(N'2021-06-20T20:58:18.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (32, N'Noah', N'89420809799', CAST(N'2021-10-07T22:47:30.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (33, N'Grady', N'24657274899', CAST(N'2021-02-12T21:32:39.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (34, N'William', N'45331369799', CAST(N'2022-03-13T13:32:04.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (35, N'Tiger', N'93340432899', CAST(N'2020-12-01T11:38:27.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (36, N'Hamilton', N'38845895099', CAST(N'2020-11-29T12:05:59.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (37, N'Abel', N'36771005799', CAST(N'2021-12-09T01:52:46.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (38, N'Harlan', N'78340649699', CAST(N'2021-01-06T17:35:40.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (39, N'Kadeem', N'62610174399', CAST(N'2021-05-30T22:07:27.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (40, N'Quentin', N'09991651199', CAST(N'2021-10-21T05:27:09.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (41, N'Tobias', N'36304511999', CAST(N'2021-07-24T17:17:38.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (42, N'Cruz', N'93413323999', CAST(N'2022-06-20T20:31:36.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (43, N'Octavius', N'55776339399', CAST(N'2022-07-08T08:24:07.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (44, N'Odysseus', N'92322058299', CAST(N'2021-11-04T14:29:36.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (45, N'Davis', N'52905616899', CAST(N'2022-05-01T20:52:34.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (46, N'Rigel', N'76679818499', CAST(N'2021-05-06T20:45:49.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (47, N'Caldwell', N'24876782699', CAST(N'2022-03-10T08:17:46.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (48, N'Francis', N'19591742799', CAST(N'2021-09-17T21:33:42.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (49, N'Brandon', N'49720839399', CAST(N'2020-11-20T05:33:57.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (50, N'Tyrone', N'82515769999', CAST(N'2022-03-10T14:55:26.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (51, N'Kirk', N'86673484599', CAST(N'2021-06-19T00:17:43.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (52, N'Samson', N'30357618999', CAST(N'2022-05-12T20:23:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (53, N'Barclay', N'75902725299', CAST(N'2021-06-25T02:49:50.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (54, N'Nero', N'14264490899', CAST(N'2021-08-27T14:21:54.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (55, N'Cade', N'96491107799', CAST(N'2021-07-10T16:29:43.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (56, N'Colin', N'83496362999', CAST(N'2021-03-20T07:03:12.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (57, N'Micah', N'23375649399', CAST(N'2021-01-30T19:07:57.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (58, N'Dominic', N'97267610599', CAST(N'2022-07-03T15:22:25.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (59, N'Kato', N'66347699199', CAST(N'2021-01-08T06:47:56.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (60, N'Brian', N'12376271699', CAST(N'2020-09-07T03:38:06.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (61, N'Byron', N'40587338299', CAST(N'2022-01-10T04:16:30.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (62, N'Kenneth', N'87238966599', CAST(N'2021-09-05T19:53:53.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (63, N'Alfonso', N'95626661499', CAST(N'2020-09-19T22:51:20.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (64, N'Justin', N'95336898999', CAST(N'2021-06-19T04:01:37.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (65, N'Kelly', N'63836268799', CAST(N'2020-09-18T10:20:30.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (66, N'Joshua', N'65844944899', CAST(N'2022-05-24T05:57:36.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (67, N'Marsden', N'05318648099', CAST(N'2021-03-14T00:10:21.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (68, N'Ezekiel', N'05321558899', CAST(N'2020-09-06T11:52:12.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (69, N'Carlos', N'05859534899', CAST(N'2021-12-10T08:20:04.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (70, N'Driscoll', N'84294838599', CAST(N'2021-01-27T05:21:09.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (71, N'Nasim', N'59923161299', CAST(N'2022-02-02T16:04:40.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (72, N'Owen', N'97909380699', CAST(N'2020-09-01T08:31:39.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (73, N'Valentine', N'67305885599', CAST(N'2021-08-23T14:23:16.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (74, N'Chaney', N'64854591099', CAST(N'2020-09-18T21:55:12.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (75, N'Eagan', N'15939152599', CAST(N'2022-05-08T19:37:23.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (76, N'Tanek', N'60892458599', CAST(N'2020-08-11T16:21:58.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (77, N'Dieter', N'67209402799', CAST(N'2022-05-17T00:12:48.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (78, N'Gray', N'49483988499', CAST(N'2021-12-13T15:22:05.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (79, N'William', N'61714973699', CAST(N'2021-12-12T04:09:57.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (80, N'Demetrius', N'35623468799', CAST(N'2020-07-29T17:28:37.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (81, N'Axel', N'35271536599', CAST(N'2021-09-21T01:33:50.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (82, N'Elmo', N'19422592199', CAST(N'2021-01-15T22:22:24.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (83, N'Sawyer', N'21363735399', CAST(N'2020-12-23T00:03:43.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (84, N'John', N'39540937999', CAST(N'2021-08-18T13:01:53.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (85, N'Keefe', N'90888488299', CAST(N'2020-11-26T07:31:17.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (86, N'Neil', N'94436958499', CAST(N'2020-10-18T21:31:23.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (87, N'Harlan', N'74670813399', CAST(N'2021-10-11T08:49:32.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (89, N'Jermaine', N'25207580699', CAST(N'2022-05-23T21:58:17.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (90, N'Leo', N'30940910799', CAST(N'2020-09-09T01:46:25.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (91, N'Quinn', N'16974724999', CAST(N'2021-09-07T18:36:35.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (92, N'Cain', N'55392122899', CAST(N'2021-09-30T11:25:04.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (93, N'Basil', N'04723593299', CAST(N'2021-10-29T02:37:33.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (94, N'Mark', N'87385482199', CAST(N'2020-08-24T05:36:28.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (95, N'Amery', N'97882336599', CAST(N'2021-02-05T17:05:49.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (96, N'John', N'62942405499', CAST(N'2020-10-03T13:08:53.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (97, N'Gary', N'17938201899', CAST(N'2021-10-27T16:53:15.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (98, N'Gareth', N'47416231999', CAST(N'2022-02-23T08:43:38.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (99, N'Colin', N'13424961399', CAST(N'2022-05-17T00:08:59.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (100, N'Griffith', N'15644143099', CAST(N'2020-10-08T16:17:20.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (101, N'Talon', N'42932442099', CAST(N'2021-08-25T13:24:06.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (102, N'Kennedy', N'84954513499', CAST(N'2021-10-14T00:17:44.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (103, N'Hammett', N'08587016199', CAST(N'2020-11-22T16:09:09.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (104, N'Kadeem', N'96879213399', CAST(N'2021-12-15T18:08:56.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (105, N'Cullen', N'82488717499', CAST(N'2022-07-13T02:34:42.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (106, N'Ryder', N'69790936499', CAST(N'2020-08-12T22:00:05.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (107, N'Cullen', N'77576415299', CAST(N'2021-06-12T11:36:55.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (108, N'Nash', N'43605763799', CAST(N'2020-09-05T12:36:59.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (109, N'Dillon', N'96999986699', CAST(N'2021-04-12T01:20:55.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (110, N'Ivor', N'82772339099', CAST(N'2021-06-07T05:43:34.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (111, N'Alfonso', N'13295730799', CAST(N'2022-04-29T07:40:12.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (112, N'Derek', N'29445011799', CAST(N'2021-10-15T07:16:30.0000000' AS DateTime2), 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (113, N'TestHarsh123', N'111222333', CAST(N'2021-07-29T13:22:21.1925521' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (114, N'Test1', N'321', CAST(N'2021-07-29T18:32:25.8159825' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (116, N'Test211', N'321', CAST(N'2021-07-29T21:19:34.3514537' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductNumber], [CreateTime], [IsAvailable]) VALUES (117, N'Colin', N'13424961399', CAST(N'2021-07-30T02:59:15.2833333' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
USE [master]
GO
ALTER DATABASE [Product] SET  READ_WRITE 
GO
