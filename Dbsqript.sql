USE [Учебная]
GO
/****** Object:  Table [dbo].[Customers_Z]    Script Date: 08.03.2024 21:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Z](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Famila] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NULL,
	[Payment] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Level_Access] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers_Z] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jewellery_Z]    Script Date: 08.03.2024 21:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jewellery_Z](
	[Article] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](15) NOT NULL,
	[Cost] [float] NOT NULL,
	[Material] [nvarchar](50) NOT NULL,
	[Drag_Crystal] [nvarchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[Images] [nvarchar](150) NULL,
 CONSTRAINT [PK_Jewellery_Z] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Z]    Script Date: 08.03.2024 21:56:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Z](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Article_Jew] [int] NOT NULL,
	[Name_Jew] [nvarchar](60) NOT NULL,
	[Sum_Cost] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Date_Order] [datetime] NOT NULL,
	[Id_Customer] [int] NULL,
 CONSTRAINT [PK_Orders_Z] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers_Z] ON 

INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (1, N'Владислав', N'Жаворонков', N'79999253539', N'strOct 23', N'Card', N'VladZ', N'1', N'Администратор')
INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (2, NULL, NULL, NULL, NULL, NULL, N'1', N'1', N'Пользователь')
INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (3, NULL, NULL, NULL, NULL, NULL, N'SashaZ', N'1', N'Пользователь')
INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (4, NULL, NULL, NULL, NULL, NULL, N'Vova', N'1', N'Пользователь')
INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (6, NULL, NULL, NULL, NULL, NULL, N'asdasagsdagsdGDAADGSASDGASD', N'1111111111111111111111111111', N'Пользователь')
INSERT [dbo].[Customers_Z] ([ID], [Name], [Famila], [Phone], [Adress], [Payment], [Login], [Password], [Level_Access]) VALUES (7, NULL, NULL, NULL, NULL, NULL, N'Sasha1', N'ternovoy', N'Пользователь')
SET IDENTITY_INSERT [dbo].[Customers_Z] OFF
GO
SET IDENTITY_INSERT [dbo].[Jewellery_Z] ON 

INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (1, N'Золотое кольцо с изумрудом и бриллиантами', N'Кольцо', 64440, N'Золото 585', N'Изумруд', 2.42, N'/images/Ring1.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (2, N'Кольцо в белом золоте с сапфиром', N'Кольцо', 13880, N'Золото 585', N'Сапфир', 1.4, N'/Images/Ring2.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (3, N'Золотое кольцо обручальное', N'Кольцо', 41610, N'Золото 585', N'Нет', 5.94, N'/Images/Ring3.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (4, N'Браслет Бирюзовое счастье с бирюзой и бриллиантами', N'Браслет', 628360, N'Золото 585', N'Бирюза', 15, N'/Images/Jaklet1.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (5, N'Золотая цепь, плетение нонна, ширина 3 мм', N'Цепь', 37774, N'Золото 585', N'Нет', 5.4, N'/Images/Chain1.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (17, N'Золотые серьги-пусеты ', N'Серьги', 20340, N'Золото 585', N'Бриллиант', 2, N'/Images/Sergi1.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (18, N'Серебряные серьги', N'Серьги', 3290, N'Серебро 925', N'Фианит', 3.66, N'/images/Sergi2.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (19, N'Серебряные серьги «Совята»', N'Серьги', 1520, N'Серебро 925', N'Фианит', 1.65, N'/Images/Sergi3.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (20, N'Золотой браслет', N'Браслет', 28580, N'Золото 585', N'Фианит', 3.91, N'/Images/Jaklet2.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (21, N'Золотые серьги «Геометрия»', N'Серьги', 20290, N'Золото 585', N'Нет', 2.9, N'/Images/Sergi4.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (22, N'Золотой браслет с бесцветными фианитами', N'Браслет', 55490, N'Золото 585', N'Фианит', 7.6, N'/Images/Jaklet3.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (24, N'Серебряное кольцо с бесцветными фианитами', N'Кольцо', 2390, N'Серебро 925', N'Фианит', 2.1, N'/Images/Ring4.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (26, N'Серебряный браслет «Круг» с цепями', N'Браслет', 2490, N'Серебро 925', N'Нет', 3.32, N'/Images/Jaklet4.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (27, N'Серебряная цепь плетение бисмарк', N'Цепь', 5190, N'Серебро 925', N'Нет', 12.53, N'/Images/Chain2.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (37, N'Серебряные серьги с фианитами', N'Серьги', 4500, N'Серебро 925', N'Фианит', 4.6, N'/Images/Sergi5.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (42, N'Серебряное кольцо дорожка с фианитами', N'Кольцо', 2090, N'Cеребро 925', N'Фианит', 2.6, N'/Images/Ring5.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (43, N'Золотое кольцо с аметрином', N'Кольцо', 178780, N'Золото 585', N'Бриллиант', 6.04, N'/Images/Ring6.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (46, N' Кольцо из белого золота с рубином и бриллиантами', N'Кольцо', 3134620, N'Золото 750', N'Рубин', 10.92, N'/Images/Ring7.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (50, N'Кольцо из белого золота с бриллиантом', N'Кольцо', 2209880, N'Золото 585', N'Бриллиант', 2.8, N'/Images/Ring8.jpg')
INSERT [dbo].[Jewellery_Z] ([Article], [Name], [Type], [Cost], [Material], [Drag_Crystal], [Weight], [Images]) VALUES (51, N'Золотые серьги с изумрудами и бриллиантами', N'Серьги', 656240, N'Золото 585', N'Изумруд', 5.62, N'/images/Sergi6.jpg')
SET IDENTITY_INSERT [dbo].[Jewellery_Z] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_Z] ON 

INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (42, 1, N'Золотое кольцо с изумрудом и бриллиантами', 64440, 1, CAST(N'2024-03-08T21:47:44.557' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (43, 5, N'Золотая цепь, плетение нонна, ширина 3 мм', 37774, 1, CAST(N'2024-03-08T21:47:45.033' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (44, 4, N'Браслет Бирюзовое счастье с бирюзой и бриллиантами', 628360, 1, CAST(N'2024-03-08T21:47:45.537' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (45, 17, N'Золотые серьги-пусеты ', 20340, 1, CAST(N'2024-03-08T21:47:45.963' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (46, 18, N'Серебряные серьги', 3290, 1, CAST(N'2024-03-08T21:47:47.117' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (47, 19, N'Серебряные серьги «Совята»', 1520, 1, CAST(N'2024-03-08T21:47:47.420' AS DateTime), 1)
INSERT [dbo].[Orders_Z] ([ID], [Article_Jew], [Name_Jew], [Sum_Cost], [Quantity], [Date_Order], [Id_Customer]) VALUES (48, 20, N'Золотой браслет', 28580, 1, CAST(N'2024-03-08T21:47:47.720' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Orders_Z] OFF
GO
ALTER TABLE [dbo].[Orders_Z]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Z_Customers_Z] FOREIGN KEY([Id_Customer])
REFERENCES [dbo].[Customers_Z] ([ID])
GO
ALTER TABLE [dbo].[Orders_Z] CHECK CONSTRAINT [FK_Orders_Z_Customers_Z]
GO
ALTER TABLE [dbo].[Orders_Z]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Z_Jewellery_Z] FOREIGN KEY([Article_Jew])
REFERENCES [dbo].[Jewellery_Z] ([Article])
GO
ALTER TABLE [dbo].[Orders_Z] CHECK CONSTRAINT [FK_Orders_Z_Jewellery_Z]
GO
