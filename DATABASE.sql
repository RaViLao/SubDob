USE [SUBDOB]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[IdC] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [nvarchar](max) NULL,
	[Autor] [int] NULL,
	[Producto] [int] NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[IdC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lengua]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lengua](
	[IdLengua] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[ZonaGeo] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](150) NULL,
 CONSTRAINT [PK_Lengua] PRIMARY KEY CLUSTERED 
(
	[IdLengua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdP] [int] IDENTITY(1,1) NOT NULL,
	[IdV] [int] NOT NULL,
	[IdL] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNatural]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNatural](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PasswordName] [nvarchar](50) NOT NULL,
	[Edad] [int] NULL,
	[FechaNac] [date] NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[LenguaNativa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserNatural] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Video]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[IdVideo] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[TipoPubli] [nvarchar](50) NOT NULL,
	[Foto] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[IdVideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vista]    Script Date: 28/06/2017 18:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vista](
	[IdV] [int] IDENTITY(1,1) NOT NULL,
	[IdU] [int] NOT NULL,
	[IdP] [int] NOT NULL,
	[Vistas] [int] NOT NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Vista] PRIMARY KEY CLUSTERED 
(
	[IdV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Lengua] ON 

GO
INSERT [dbo].[Lengua] ([IdLengua], [Nombre], [ZonaGeo], [Descripcion]) VALUES (1, N'Quechua', N'Cusco', NULL)
GO
INSERT [dbo].[Lengua] ([IdLengua], [Nombre], [ZonaGeo], [Descripcion]) VALUES (2, N'Aymara', N'Puno', NULL)
GO
INSERT [dbo].[Lengua] ([IdLengua], [Nombre], [ZonaGeo], [Descripcion]) VALUES (3, N'Ashaninka', N'Loreto', NULL)
GO
SET IDENTITY_INSERT [dbo].[Lengua] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

GO
INSERT [dbo].[Producto] ([IdP], [IdV], [IdL], [Fecha], [Tipo]) VALUES (1, 1, 2, CAST(N'2017-06-28' AS Date), N'Doblado')
GO
INSERT [dbo].[Producto] ([IdP], [IdV], [IdL], [Fecha], [Tipo]) VALUES (3, 1, 1, CAST(N'2016-12-05' AS Date), N'Subtitulado')
GO
INSERT [dbo].[Producto] ([IdP], [IdV], [IdL], [Fecha], [Tipo]) VALUES (5, 2, 2, CAST(N'2015-08-25' AS Date), N'Dobalo')
GO
INSERT [dbo].[Producto] ([IdP], [IdV], [IdL], [Fecha], [Tipo]) VALUES (6, 1, 3, CAST(N'2014-06-25' AS Date), N'Subtitulado')
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

GO
INSERT [dbo].[Video] ([IdVideo], [Titulo], [Descripcion], [TipoPubli], [Foto], [Url]) VALUES (1, N'Realizar un web creando carpetas y una página maestra en ASP.NET Visual Basic 2013', N'creando una pagina web con carpetas y pagina maestra en
ASP.NET VISUAL STUDIO 2013
LINK DE DESCARGA:', N'Tutorial', N'http://www.joelsedano.com/blog/wp-content/uploads/2013/08/creacion1.jpg', N'https://www.youtube.com/watch?v=vRNCPixQ3kc')
GO
INSERT [dbo].[Video] ([IdVideo], [Titulo], [Descripcion], [TipoPubli], [Foto], [Url]) VALUES (2, N'CÓMO HACER una INTRO || After Effects ', N'Curso AFTER EFFECTS: http://bit.ly/2rM8G2O
10 PRIMEROS PASOS de AE: http://bit.ly/2t4WtUV', N'Tutorial', N'http://albamarinarivera.com/wp-content/uploads/re-creacion_2.jpg', N'https://www.youtube.com/watch?v=fbnJ0WMzy9Y')
GO
INSERT [dbo].[Video] ([IdVideo], [Titulo], [Descripcion], [TipoPubli], [Foto], [Url]) VALUES (3, N'Era del Hielo Una Navidad Tamaño Mamut Part 1 ', N'Una navidad para los chicos de la era del hielo', N'Serie', N'http://vignette2.wikia.nocookie.net/doblaje/images/5/57/Era_de_Hielo_Especial.jpg/revision/latest?cb=20111219145104&path-prefix=es', N'https://www.youtube.com/watch?v=KGP2nG_pgE8')
GO
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([IdP])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Producto]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_UserNatural] FOREIGN KEY([Autor])
REFERENCES [dbo].[UserNatural] ([Id])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_UserNatural]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Lengua] FOREIGN KEY([IdL])
REFERENCES [dbo].[Lengua] ([IdLengua])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Lengua]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Video] FOREIGN KEY([IdV])
REFERENCES [dbo].[Video] ([IdVideo])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Video]
GO
ALTER TABLE [dbo].[Vista]  WITH CHECK ADD  CONSTRAINT [FK_Vista_Producto] FOREIGN KEY([IdP])
REFERENCES [dbo].[Producto] ([IdP])
GO
ALTER TABLE [dbo].[Vista] CHECK CONSTRAINT [FK_Vista_Producto]
GO
ALTER TABLE [dbo].[Vista]  WITH CHECK ADD  CONSTRAINT [FK_Vista_UserNatural] FOREIGN KEY([IdU])
REFERENCES [dbo].[UserNatural] ([Id])
GO
ALTER TABLE [dbo].[Vista] CHECK CONSTRAINT [FK_Vista_UserNatural]
GO
