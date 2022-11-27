use master
go
drop database if Exists [AdresDefteri]
go
create database [AdresDefteri]
go

USE [AdresDefteri]
GO
ALTER TABLE [dbo].[Adres] DROP CONSTRAINT [FK_Adres_Kisi]
GO
ALTER TABLE [dbo].[Adres] DROP CONSTRAINT [FK_Adres_Adres]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 26.11.2022 16:11:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sehir]') AND type in (N'U'))
DROP TABLE [dbo].[Sehir]
GO
/****** Object:  Table [dbo].[Kisi]    Script Date: 26.11.2022 16:11:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kisi]') AND type in (N'U'))
DROP TABLE [dbo].[Kisi]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 26.11.2022 16:11:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Adres]') AND type in (N'U'))
DROP TABLE [dbo].[Adres]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 26.11.2022 16:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KisiId] [int] NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[AdresSatiri1] [varchar](50) NOT NULL,
	[AdresSatiri2] [varchar](50) NULL,
	[SehirId] [int] NOT NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kisi]    Script Date: 26.11.2022 16:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](50) NOT NULL,
	[Soyadi] [varchar](50) NOT NULL,
	[Cinsiyet] [bit] NULL,
 CONSTRAINT [PK_Kisi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 26.11.2022 16:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehir](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](16) NULL,
 CONSTRAINT [PK_Sehir] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adres] ON 
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (1, 20, N'aaaa', N'aaaaaaaa', N'', 11)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (2, 20, N'bbbb', N'bb', N'bbb', 77)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (3, 20, N'Arif222', N'bb', N'', 11)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (4, 20, N'aaaaaaaaaa', N'aa', N'', 72)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (5, 20, N'wwwww', N'www', N'', 1)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (6, 21, N'Selda2', N'ffsdfsfs', N'', 59)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (7, 21, N'fdsfdsfsdf', N'fdsfdsfs', N'', 50)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (8, 26, N'aaa', N'aaaaaaaa', N'', 50)
GO
INSERT [dbo].[Adres] ([Id], [KisiId], [Adi], [AdresSatiri1], [AdresSatiri2], [SehirId]) VALUES (9, 20, N'aaaa', N'aaa', N'aa', 74)
GO
SET IDENTITY_INSERT [dbo].[Adres] OFF
GO
SET IDENTITY_INSERT [dbo].[Kisi] ON 
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Cinsiyet]) VALUES (20, N'Yusuf', N'Öztürk', 1)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Cinsiyet]) VALUES (21, N'Selda', N'Baş', 0)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Cinsiyet]) VALUES (26, N'Beyda', N'Dinç', 0)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Cinsiyet]) VALUES (27, N'Arif2', N'Erkmen2', 1)
GO
INSERT [dbo].[Kisi] ([Id], [Adi], [Soyadi], [Cinsiyet]) VALUES (29, N'Şifanur', N'Yıldız', 0)
GO
SET IDENTITY_INSERT [dbo].[Kisi] OFF
GO
SET IDENTITY_INSERT [dbo].[Sehir] ON 
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (1, N'Adana')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (2, N'Adıyaman')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (3, N'Afyonkarahisar')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (4, N'Ağrı')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (5, N'Amasya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (6, N'Ankara')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (7, N'Antalya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (8, N'Artvin')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (9, N'Aydın')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (10, N'Balıkesir')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (11, N'Bilecik')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (12, N'Bingöl')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (13, N'Bitlis')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (14, N'Bolu')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (15, N'Burdur')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (16, N'Bursa')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (17, N'Çanakkale')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (18, N'Çankırı')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (19, N'Çorum')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (20, N'Denizli')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (21, N'Diyarbakır')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (22, N'Edirne')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (23, N'Elazığ')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (24, N'Erzincan')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (25, N'Erzurum')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (26, N'Eskişehir')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (27, N'Gaziantep')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (28, N'Giresun')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (29, N'Gümüşhane')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (30, N'Hakkari')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (31, N'Hatay')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (32, N'Isparta')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (33, N'Mersin(İçel)')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (34, N'İstanbul')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (35, N'İzmir')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (36, N'Kars')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (37, N'Kastamonu')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (38, N'Kayseri')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (39, N'Kırklareli')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (40, N'Kırşehir')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (41, N'Kocaeli')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (42, N'Kahramanmaraş')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (43, N'Konya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (44, N'Kütahya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (45, N'Malatya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (46, N'Manisa')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (47, N'Mardin')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (48, N'Muğla')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (49, N'Muş')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (50, N'Nevşehir')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (51, N'Niğde')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (52, N'Ordu')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (53, N'Rize')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (54, N'Sakarya')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (55, N'Samsun')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (56, N'Siirt')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (57, N'Sinop')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (58, N'Sivas')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (59, N'Tekirdağ')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (60, N'Tokat')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (61, N'Trabzon')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (62, N'Tunceli')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (63, N'Şanlıurfa')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (64, N'Uşak')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (65, N'Van')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (66, N'Yozgat')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (67, N'Zonguldak')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (68, N'Aksaray')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (69, N'Bayburt')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (70, N'Karaman')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (71, N'Kırıkkale')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (72, N'Batman')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (73, N'Şırnak')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (74, N'Bartın')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (75, N'Ardahan')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (76, N'Iğdır')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (77, N'Yalova')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (78, N'Karabük')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (79, N'Kilis')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (80, N'Osmaniye')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (81, N'Düzce')
GO
INSERT [dbo].[Sehir] ([Id], [Adi]) VALUES (82, N'Adana2')
GO
SET IDENTITY_INSERT [dbo].[Sehir] OFF
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Adres] FOREIGN KEY([SehirId])
REFERENCES [dbo].[Sehir] ([Id])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Adres]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Kisi] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisi] ([Id])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Kisi]
GO
