USE [master]
GO
/****** Object:  Database [ohtqb]    Script Date: 27/12/2022 1:32:10 CH ******/
CREATE DATABASE [ohtqb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ohtqb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ohtqb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ohtqb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ohtqb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ohtqb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ohtqb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ohtqb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ohtqb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ohtqb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ohtqb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ohtqb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ohtqb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ohtqb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ohtqb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ohtqb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ohtqb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ohtqb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ohtqb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ohtqb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ohtqb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ohtqb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ohtqb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ohtqb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ohtqb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ohtqb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ohtqb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ohtqb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ohtqb] SET RECOVERY FULL 
GO
ALTER DATABASE [ohtqb] SET  MULTI_USER 
GO
ALTER DATABASE [ohtqb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ohtqb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ohtqb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ohtqb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ohtqb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ohtqb', N'ON'
GO
ALTER DATABASE [ohtqb] SET QUERY_STORE = ON
GO
ALTER DATABASE [ohtqb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ohtqb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](max) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[OrderPrice] [float] NOT NULL,
	[OrderName] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[BookId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 27/12/2022 1:32:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221027045523_new', N'6.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'A', N'Administrator', N'Administrator', N'c02b3f1e-628c-46de-98d1-510117a75a56')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'B', N'BookOwner', N'BookOwner', N'711f3d3c-c1f1-4abb-98c8-9b8bc494cd6c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'C', N'Customer', N'Customer', N'9607d9f5-0434-4e07-813b-b069eceff248')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1', N'A')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2', N'B')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3', N'B')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4', N'B')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5', N'C')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'admin@gmail.com', N'admin@gmail.com', N'admin@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAEP44y9McgPjkSOyhag7rU1THUMdom0mAS+d4bBqpdo4Zf47MrbXgzMOMncIRdvMogQ==', N'8dd2a970-7261-43cb-a6c1-5d536a58948a', N'2087d27a-581c-4fb5-a5a4-43d67ff88d8c', N'1234567890', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2', N'bookowner1@gmail.com', N'bookowner1@gmail.com', N'bookowner1@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAEIh20n+6q72/i4K7cP2Mw9P35cTw8h4mEgvMuZlzfbxbS9Pgu5Q+beWIBRkMckx2sg==', N'b2079a9b-61bd-4ea6-9d28-ac2b033e52c0', N'3c956b8c-1f3e-4674-9090-80bb83b19025', N'0987654321', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3', N'bookowner2@gmail.com', N'bookowner2@gmail.com', N'bookowner2@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAELiHzpBfXrumLdwxlBDYi76eKBujIDQ+TDBj2RJoW5Efc/uYRXzq5K+1XiTlAN9c6w==', N'2eb97e30-9e5d-45c2-9942-b10ba7c4eb36', N'4610ad9e-aecf-4a0f-b674-412bb13d1bbb', N'0987227890', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4', N'bookowner3@gmail.com', N'bookowner@gmail.com', N'bookowner3@gmail.com', NULL, 1, NULL, N'2a83547a-29ab-4005-b0c4-fd8f78c785d5', N'96bfbc61-7256-4e6e-aba9-2c1f52558d91', N'0222567890', 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5', N'customer@gmail.com', N'customer@gmail.com', N'customer@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAELHmbRoulUYQ8OUS7IEJ9PHIhozN0VuL3wuQ4xCNwJbEfbu123fzlqsfHEfdNo6q0Q==', N'bad23795-0b0d-49db-9df8-1430508ef43b', N'f2f73dd4-0485-49dd-8bc7-5b6d0a7a98e0', N'0123456789', 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1, N'Romeo and Juliet', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1629680008i/18135.jpg', N'William Shakespeare', N'"In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.  In this death-filled setting, the movement from love at first sight to the lovers’ final union in death seems almost inevitable. And yet, this play set in an extraordinary world has become the quintessential story of young love. In part because of its exquisite language, it is easy to respo', 27, 6, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (2, N'The Christmas Wish', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1645391756i/59947625.jpg', N'Lindsey Kelk', N'"Newly single lawyer Gwen Baker is hoping that a family Christmas—countryside, a mountain of food and festive films—will salve the sting of her career hanging by a thread and her heart being trampled on. Because everyone else has their life sorted: even Dev, her boy-next-door crush, is now a tall, dark and handsome stranger with a fiancée. She can’t help wishing her future was clearer.  Then Gwen wakes up to discover it’s Christmas day all over again. Like Groundhog Day but with eggnog. And fami', 0, 5, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (3, N'Heart of the Sun Warrior', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1659405649i/60461898.jpg', N'Sue Lynn Tan', N'"After her perilous quest to free her mother, Xingyin thrives once more in the tranquility of her home. But her fragile peace is threatened by the discovery of a strange magic on the moon and the unsettling changes in the Celestial Kingdom as the emperor tightens his grip on power. While Xingyin is determined to keep clear of the rising danger, the discovery of a shocking truth spurs her into a treacherous confrontation.  Forced to flee her home once more, Xingyin and her companions venture to u', 32, 14, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1003, N'A Fire Endless', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1665235394i/54326657.jpg', N'Rebecca Ross', N'"East and West. Humans and Spirits. Breccans and Tamerlaines. The Isle of Cadence has always held itself and its residents in a tenuous balance. But now Bane, the spirit of the North Wind, has pushed everyone and everything in his path off-kilter in a bid to claim dominion over all.  In the West, Adaira struggles to adjust to the more brutal, bitter ways of life among the Breccans. Striving to find her place in the clan, she swiftly realizes that it just might be the last role she desires to hol', 40, 14, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1004, N'The Vermilion Emporium', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1645741208i/58615012.jpg', N'Jamie Pacton', N'"The heart-wrenching story of The Radium Girls meets the enchanting world of Howl’s Moving Castle. Jamie Pacton’s fantasy debut is a story of timeless love and deadly consequences.  It was a day for finding things . . .   On the morning Twain, a lonely boy with a knack for danger, discovers a strand of starlight on the cliffs outside Severon, a mysterious curiosity shop appears in town. Meanwhile, Quinta, the ordinary daughter of an extraordinary circus performer, chases rumors of the shop, The ', 50, 12, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1005, N'If You Could See the Sun', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1644595325i/60099660.jpg', N'Ann Liang', N'"Alice Sun has always felt invisible at her elite Beijing international boarding school, where she’s the only scholarship student among China’s most rich and influential teens. But then she starts uncontrollably turning invisible—actually invisible.   When her parents drop the news that they can no longer afford her tuition, even with the scholarship, Alice hatches a plan to monetize her strange new power—she’ll discover the scandalous secrets her classmates want to know, for a price.   But as t', 25, 10, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1006, N'The Do-Over', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1644258928i/51035594.jpg', N'Lynn Painter', N'"In this riotous young adult romp for fans of Recommended for You and A Cuban Girl’s Guide to Tea and Tomorrow, a teen girl has the worst Valentine’s Day ever—only to relive it over and over again.  After living through a dumpster fire of a Valentine’s Day, Emilie Hornby escapes to her grandmother’s house for some comfort and a consolation pint of Ben & Jerry’s. She passes out on the couch, but when she wakes up, she’s back home in her own bed—and it’s Valentine’s Day all over again. And the nex', 34, 7, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1007, N'Astrid Parker Doesn''t Fail', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1646147245i/58800142.jpg', N'Ashley Herring Blake', N'"n interior designer learns to rebuild her love life from the ground up with zero blueprints in this new romantic comedy by Ashley Herring Blake, author of Delilah Green Doesn''t Care.  For Astrid Parker, failure is unacceptable. Ever since she broke up with her fiancé a year ago, she’s been focused on her career—her friends might say she’s obsessed, but she’s just driven. When Pru Everwood asks her to be the designer for the Everwood Inn’s renovation that will be broadcasted on a popular home im', 37, 10, 1)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1008, N'Cristiano Ronaldo: Champion of the World', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1328726893i/7022386.jpg', N'Tom Oldfield', N'Already a star at the youth level on his home island of Madeira and earning a big move to Sporting Lisbon at just 12, Cristiano Ronaldo left a small town for a big city and was forced to adapt to a completely different life, miles away from his family. His spirit and natural flair took him into the Sporting first team, attracting the interest of Manchester United, who bought him in the summer of 2003. This is the story of a player who attracted praise and criticism alike from soccer fans of all ', 16, 2, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1009, N'Alex Ferguson: My Autobiography', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1380212081i/18588024.jpg', N'Alex Ferguson', N'"The celebratory, revealing, inspiring, and entertaining autobiography of the greatest manager in the history of British soccer.  Over the past four years, Alex Ferguson has been reflecting on and jotting down the highlights of his extraordinary career, and here he reveals his amazing story as it unfolded, from his very early days in the tough shipyard areas of Govan. Sir Alex announced his retirement as manager of Manchester United after 27 years in the role.  He has gone out in a blaze of glor', 28, 5, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1010, N'My Turn: The Autobiography', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1467930480i/30968461.jpg', N'Johan Cruyff', N'Johan Cruyff is widely regarded as one of the greatest players in football history. Throughout his playing career, he was synonymous with Total Football, a style of play in which every player could play in any position on the pitch. Today, his philosophy lives on in teams across Europe, from Barcelona to Bayern Munich and players from Lionel Messi to Cesc Fabregas. My Turn tells the story of Cruyff''s life starting at Ajax, where he won eight national titles and three European Cups before moving ', 26, 4, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1011, N'Jag är Zlatan: Zlatans egen berättelse', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1328287506i/13037816.jpg', N'Zlatan Ibrahimovic', N'"”Varför kom hon inte? Tyckte hon inte om mig längre? Det gick en minut, två, tre, tio minuter, och till slut pallade jag inte längre. Det var värsta förnedringen. Hon har säkert blåst mig, tänkte jag. Vem skulle vilja ha en date med mig? Och så drog jag därifrån. Jag skiter väl i henne, typ. Jag ska ändå bli fotbollstjärna. Men alltså, det var dummaste grejen. Tjejens buss hade bara varit lite försenad. Det var chaffisen som velat ta en cigg eller nåt, och hon kom dit precis efteråt och blev li', 15, 6, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1012, N'Michael Jordan: The Life', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1392587782i/18453086.jpg', N'Roland Lazenby', N'"The definitive biography of a legendary athlete  The Shrug. The Shot. The Flu Game. Michael Jordan is responsible for sublime moments so ingrained in sports history that they have their own names. When most people think of him, they think of his beautiful shots with the game on the line, his body totally in sync with the ball -- hitting nothing but net.  But for all his greatness, this scion of a complex family from North Carolina''s Coastal Plain has a darker side: he''s a ruthless competitor an', 21, 12, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1013, N'Rafa', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442800017i/10746419.jpg', N'Rafael Nadal', N'"What makes a champion? What does it take to be the best in the world at your sport? Rafael Nadal has the answers. In his memoir, written with award-winning journalist John Carlin, he reveals the secrets of his game and shares the inspiring personal story behind his success. It begins in Mallorca, where the tight-knit Nadal family has lived for generations.  Coached by his uncle Toni from the age of four and taught humility and respect by his parents, Nadal has managed the uncommon feat of becom', 17, 10, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1014, N'Quiet Leadership: Winning Hearts, Minds and Matches', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1450773417i/28264501.jpg', N'Carlo Ancelotti', N'Ancelotti is Europe''s greatest manager -- Paul Hayward Telegraph He''s a great coach and an amazing person -- Cristiano Ronaldo There is nobody better than this international crisis manager to explain how to handle superstar players (Cristiano Ronaldo and Gareth Bale), difficult club presidents (Silvio Berlusconi and Roman Abramovich) and hysterical media', 24, 9, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1015, N'Pep Confidential: The Inside Story of Pep Guardiola''s First Season at Bayern Munich', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1430375905i/23380016.jpg', N'Martí Perarnau', N'Martí Perarnau was given total access to Bayern Munich during season 2013-14. This book represents the first time in the modern era that a writer has got this close to one of the elite teams of world football. At the invitation of Pep Guardiola, he shadowed the Catalan, his staff and his superstar players during training and on matchdays. Bayern smashed domestic records on their way to the double, but were humiliated by Real Madrid in the Champions League semi-final. Perarnau was with them every', 40, 11, 2)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1016, N'Superman: Son of Kal-El, Vol. 2: The Rising', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1646179498i/60533323.jpg', N'Tom Taylor', N'"Jonathan Kent is planet earth’s new Man of Steel! Between fighting a dictatorship in a foreign nation and battling giant sea creatures it can be overwhelming. Will he follow in his father’s footsteps or forge his own path?  With Clark Kent off-world, Jonathan Kent has stepped into the role of Superman to defend Earth. Alongside his boyfriend, Jay Nakamura, Jon continues his stand against the dictator of Gamorra, Henry Bendix, who plots to take control of all superheroes. As Bendix seeks out an ', 25, 14, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1017, N'The New Sinister', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1671189579i/60468305.jpg', N'Zeb Wells', N'Collects Amazing Spider-Man (2022) #6-8. It''s Spider-Man''s 60th Anniversary - and Marvel is pulling out all the stops! Someone from Spidey''s past has captured the Sinister Six and used them to create the truly terrifying…Sinister Adaptoid! Can the webbed wonder possibly triumph against the might of an android that boasts the powers of all of Spidey''s deadliest foes? And who is the face behind the Adaptoid''s attack? Brace yourself for one of the biggest adventures in Spider-history - and you won''', 15, 8, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1018, N'She-Hulk by Rainbow Rowell, Vol. 1: Jen, Again', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1663706328i/59456408.jpg', N'Rainbow Rowell', N'The best character ever is back in her own series and about to glam up the whole Marvel Universe! Jennifer Walters, the Sensational She-Hulk, is no longer savage - and now she needs to put her life back together. She''s got a legal career to rebuild, friends to reacquaint herself with (and maybe represent in a court of law), and enemies to... well, she may not want to connect with them, but they are definitely going to connect with her. And Jen is about to be sent down a road she''s never travelle', 27, 8, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1019, N'Moon Knight Vol. 2: Too Tough To Die', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1663709551i/59801885.jpg', N'Jed Mackay', N'The brilliant new phase of the Moon Knight, helmed by writer Jed MacKay, continues! But Marc Spector has a conundrum: how does he fight someone that no one knows? Moon Knight is out for blood, and hits the streets armed with only a name…yet, in the twilight half-world of NYC super villainy, sometimes the streets hit back! And while Moon Knight fights his way through the super-crime underworld, looking for answers to a question he’s barely grasped, he had better watch his back…', 35, 10, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1020, N'Cat Kid Comic Club: Collaborations', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1666148874i/60583273.jpg', N'Dav Pilkey ', N'"The fourth graphic novel in the worldwide bestselling series by Dav Pilkey, the author and illustrator of Dog Man!  Naomi, Melvin, Flippy, Li''l Petey, Molly, and nineteen baby frog siblings return in a new book in the hilarious and heartwarming Cat Kid Comic Club series. Award-winning author and illustrator Dav Pilkey uses a variety of techniques -- including acrylic paints, colored pencils, photography, collage, gouache, watercolors, and much more -- to illustrate each frog''s creative purpose ', 13, 7, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1021, N'It''s Lonely at the Centre of the Earth', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1649230311i/60760105.jpg', N'Zoe Thorogood', N'Cartoonist Zoe Thorogood records 6 months of her own life as it falls apart in a desperate attempt to put it back together again in the only way she knows how. IT’S LONELY AT THE CENTRE OF THE EARTH is an intimate and metanarrative look into the life of a selfish artist who must create for her own survival.', 60, 9, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1022, N'Dungeons & Dragons: Dungeon Club - Roll Call', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1657517519i/60606325.jpg', N'Molly Knox Ostertag', N'From New York Times bestselling author Molly Knox Ostertag and critically acclaimed illustrator Xanthe Bouma comes an all-new Dungeons & Dragons graphic novel series!', 37, 10, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1023, N'Deadly Class, Volume 12: A Fond Farewell, Part Two', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1671244234i/61420360.jpg', N'Rick Rememder', N'There’s nothing more beautiful than a total retreat from reality with someone you love in a place where you can leave behind all the noise, greed, and hate for a quiet and simple life. But does such a place truly exist? And if it does, how could the rabid monsters not come to destroy it? A final lap around the track with the outcasts of Generation X as everything they ever predicted comes true.', 27, 13, 3)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1025, N'Angels Before Man', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1664877032i/62877213.jpg', N'Rafael Nicolas', N'"A queer retelling of Satan''s fall that''s part cozy coming of age and part fast-paced tragedy, with a little love story in between –  In an eternal paradise, the most beautiful angel, Lucifer, struggles with shame, identity, and timidity, with little more than the desire to worship his creator.  It isn''t until the strongest angel, Michael, comes into his life that Lucifer learns to love himself. Along the way, their friendship begins to bloom into something else. Maybe the first romance in the h', 56, 7, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1026, N'Wayward', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1662441132i/59575941.jpg', N'Chuck Wendig', N'"Five years ago, ordinary Americans fell under the grip of a strange new malady that caused them to sleepwalk across the country to a destination only they knew. They were followed on their quest by the shepherds: friends and family who gave up everything to protect them.  Their secret destination: Ouray, a small town in Colorado that would become one of the last outposts of civilization. Because the sleepwalking epidemic was only the first in a chain of events that led to the end of the world--', 29, 13, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1027, N'House of Yesterday', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1644258270i/59406545.jpg', N'Deeba Zargarpur', N'Taking inspiration from the author''s own Afghan-Uzbek heritage, this contemporary YA debut is a breathtaking journey into the grief that lingers through generations of immigrant families, and what it means to confront the ghosts of your past', 30, 10, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1028, N'Undercover', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1665768074i/62991424.jpg', N'Tamsyn Muir ', N'"When a stranger comes to town, secrets are sure to come out. New York Times bestselling author Tamsyn Muir spins a twisty—and twisted—short story of revenge and survival.  A fresh-faced newcomer arrives in an isolated, gang-run town and soon finds herself taking a job nobody else wants: bodyguard to a ghoul. Not just your average mindless, half-rotted shuffler, though. Lucille is a dancer who can still put on her own lipstick and whose shows are half burlesque, half gladiator match. But the str', 40, 8, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1029, N'Aliens: Vasquez', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1648335205i/60696779.jpg', N'V. Castro', N'groundbreaking Latinx Aliens novel by a rising star Latina author, featuring the fan-favorite character PFC Jenette Vasquez from the hit movie Aliens and the family she is forced to leave behind.  For the very first time, the canonical background of the breakout Aliens hero Jenette Vasquez, as well as the story of the children she was forced to leave behind as written by the rising Latina horror star V. Castro (Queen of the Cicadas).  Even before the doomed mission to Hadley’s Hope on LV-426, ', 15, 12, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1030, N'The Vessel', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1657425087i/61417429.jpg', N'Adam Nevill', N'"A watcher may remark that after sleeping for so long, the building appears to have been roused.''  Struggling with money, raising a child alone and fleeing a volatile ex, Jess McMachen accepts a job caring for an elderly patient. Flo Gardner—a disturbed shut-in and invalid. But if Jess can hold this job down, she and her daughter, Izzy, can begin a new life.  Flo''s vast home, Nerthus House, may resemble a stately vicarage in an idyllic village, but the labyrinthine interior is a dark, cluttered ', 23, 10, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1031, N'Blame It on the Pumpkin', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1659709074i/61866361.jpg', N'Tara Moeller', N'"What''s the best-and worst-part of Halloween?  The pumpkins, of course.  Enjoy these 8 scary stories centered on a Halloween event-a pumpkin patch festival, a pumpkin-growing contest, a séance...  Just beware of those rotting jack-o-lanterns.  Includes stories by Pamela K. Kinney, Jennifer Kyrnin, Greg Partick, S. P. Mount, and more."', 21, 10, 4)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1032, N'Think Again: The Power of Knowing What You Don''t Know', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1602574232i/55539565.jpg', N' Adam M. Grant', N'"Think Again is a book about the benefit of doubt, and about how we can get better at embracing the unknown and the joy of being wrong. Evidence has shown that creative geniuses are not attached to one identity, but constantly willing to rethink their stances and that leaders who admit they don''t know something and seek critical feedback lead more productive and innovative teams.  New evidence shows us that as a mindset and a skilllset, rethinking can be taught and Grant explains how to develop ', 24, 14, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1033, N'The Lego Story: How a Little Toy Sparked the World''s Imagination', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1652105322i/60254223.jpg', N'Jens Andersen', N'"The extraordinary inside story of LEGO, based on unprecedented access to the company''s archives and rare interviews with the founding family that still owns the company  This book tells the story of how my family built the LEGO brand. --Kjeld Kirk Kristiansen, former President/CEO of the LEGO Group and 3rd generation owner  It''s estimated that each year between eighty and ninety million children around the globe are given a box of LEGO, while up to ten million adults buy sets for themselves. Ye', 38, 16, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1035, N'Working Backwards: Insights, Stories, and Secrets from Inside Amazon', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1606707026i/53138083.jpg', N'Colin Bryar', N'"Working Backwards is an insider''s breakdown of Amazon''s approach to culture, leadership, and best practices from two long-time, top-level Amazon executives.  Colin started at Amazon in 1998; Bill joined in 1999. In Working Backwards, these two long-serving Amazon executives reveal and codify the principles and practices that drive the success of one of the most extraordinary companies the world has ever known. With twenty-seven years of Amazon experience between them, much of it in the early au', 57, 13, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1036, N'Winners Take All: The Elite Charade of Changing the World', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1528750369i/37506348.jpg', N'Anand Giridharadas', N'"An insider''s groundbreaking investigation of how the global elite''s efforts to ""change the world"" preserve the status quo and obscure their role in causing the problems they later seek to solve.  Former New York Times columnist Anand Giridharadas takes us into the inner sanctums of a new gilded age, where the rich and powerful fight for equality and justice any way they can--except ways that threaten the social order and their position atop it. We see how they rebrand themselves as saviors of', 48, 9, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1037, N'Like, Comment, Subscribe: How YouTube Drives Google''s Dominance and Controls Our Culture', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1652105171i/60097405.jpg', N'Mark Bergen', N'"The definitive, deeply reported account of YouTube, the company that upended media, culture, industry, and democracy--by a leading tech journalist  Across the world, people watch over a billion hours of video on YouTube every day. The sheer amount of video produced there is beyond comprehension. Every minute, over five hundred hours of footage are uploaded to the site, the equivalent of eighty-two years of video added a day. That anyone can easily access any minute of this footage--and the tril', 56, 15, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1038, N'Finish What You Start: The Art of Following Through, Taking Action, Executing, & Self-Discipline', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1521468340i/39322175.jpg', N'Peter Hollins', N'Practical tactics to grow your willpower, stop procrastination, focus like a laser, and achieve whatever you set your mind to.Following through and finishing what you start- more valuable skills than you realize. They are a combination of traits that enables you to create the life you want - without having to compromise or wait. The alternative is a status quo that you''re stuck in.Is your life a series of unfinished tasks and intentions? That stops now.Finish What You Start is a unique deep dive', 47, 3, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1039, N'Be Your Future Self Now: The Science of Intentional Transformation', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1637200779i/59646620.jpg', N'Benjamin P Hardy', N'"This isn''t a book about BECOMING it''s about BEING: noted psychologist Dr. Benjamin Hardy shows how to imagine the person you want to be, then BE that person now. When you do this, your imagined FUTURE directs your behavior, rather than your past.  Who is your Future-Self?  That question may seem trite. But it''s literally the answer to all of your life''s questions. It''s the answer to what you''re going to do today. It''s the answer to how motivated you are, and how you feel about yourself. It''s th', 68, 12, 5)
INSERT [dbo].[Books] ([Id], [Title], [Image], [Author], [Description], [Quantity], [Price], [CategoryId]) VALUES (1040, N'Slaying the Dragon: A Secret History of Dungeons & Dragons', N'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1650845000i/58724805.jpg', N'Ben Riggs', N'"Role-playing game historian Ben Riggs unveils the secret history of TSR— the company that unleashed imaginations with Dungeons & Dragons, was driven into ruin by disastrous management decisions, and then saved by their bitterest rival.  Co-created by wargame enthusiasts Gary Gygax and Dave Arneson, the original Dungeons & Dragons role-playing game released by TSR (Tactical Studies Rules) in 1974 created a radical new medium: the role-playing game. For the next two decades, TSR rocketed to succe', 36, 14, 5)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Romance', N'In the strictest academic terms, a romance is a narrative genre in literature that involves a mysterious, adventurous, or spiritual story line where the focus is on a quest that involves bravery and strong values, not always a love interest. However, modern definitions of romance also include stories that have a relationship issue as the main focus.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Football', N'Books about the philosophies of Europe''s top coaches and the illustrious career lives of the players.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Comics', N'Comics is a medium used to express ideas with images, often combined with text or other visual information. It typically takes the form of a sequence of panels of images. Textual devices such as speech balloons, captions, and onomatopoeia can indicate dialogue, narration, sound effects, or other information. There is no consensus amongst theorists and historians on a definition of comics; some emphasize the combination of images and text, some sequentiality or other image relations, and others historical aspects such as mass reproduction or the use of recurring characters. Cartooning and other forms of illustration are the most common image-making means in comics; fumetti is a form that uses photographic images. Common forms include comic strips, editorial and gag cartoons, and comic books. Since the late 20th century, bound volumes such as graphic novels, comic albums, and tankōbon have become increasingly common, while online webcomics have proliferated in the 21st century.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Horror', N'a piece of prose fiction of variable length that shocks or even frightens the reader, or perhaps induces a feeling of repulsion or loathing.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (5, N'Business', N'The most obvious telltale sign of expanding the path of entrepreneurship is when you''ve practiced at least one lesson or idea from it and you''ve been using it for several months, or even years of practice. afterward. And surely you will find value in the good books on business that we have selected for you here.')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (2, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 6, 6, N'Romeo and Juliet', 1, 1)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (3, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 6, 6, N'Romeo and Juliet', 1, 1)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (4, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 3, 12, 36, N'The Vermilion Emporium', 0, 1004)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (5, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 4, 10, 40, N'If You Could See the Sun', 0, 1005)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (7, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 20, 5, 100, N'The Christmas Wish', 1, 2)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (8, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 6, 6, N'Romeo and Juliet', 1, 1)
INSERT [dbo].[Orders] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [Status], [BookId]) VALUES (9, N'customer@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 3, 14, 42, N'Heart of the Sun Warrior', 1, 3)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_CategoryId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_Books_CategoryId] ON [dbo].[Books]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_BookId]    Script Date: 27/12/2022 1:32:11 CH ******/
CREATE NONCLUSTERED INDEX [IX_Orders_BookId] ON [dbo].[Orders]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Books_BookId]
GO
USE [master]
GO
ALTER DATABASE [ohtqb] SET  READ_WRITE 
GO
