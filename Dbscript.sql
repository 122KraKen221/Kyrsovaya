USE [Учебная]
GO
/****** Object:  Table [dbo].[Customers_Z]    Script Date: 16.02.2024 22:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Z](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Famila] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[Payment] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Level_Access] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers_Z] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jewellery_Z]    Script Date: 16.02.2024 22:37:32 ******/
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
	[Images] [nvarchar](50) NULL,
 CONSTRAINT [PK_Jewellery_Z] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Z]    Script Date: 16.02.2024 22:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Z](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Article_Jew] [int] NOT NULL,
	[Name_Jew] [nvarchar](10) NOT NULL,
	[Number_Order] [int] NOT NULL,
	[Sum_Cost] [float] NOT NULL,
	[Id_Customer] [int] NOT NULL,
	[Payment_Customer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Orders_Z] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
