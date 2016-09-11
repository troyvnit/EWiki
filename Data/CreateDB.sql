USE [EWiki]
GO
/****** Object:  Table [dbo].[Archives]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveComment] [nvarchar](max) NULL,
	[ArchiveLength] [int] NOT NULL,
	[ArchivePageId] [int] NULL,
	[ArchiveParentId] [int] NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[ContentId] [int] NULL,
	[ContentText] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[ReversionId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Archives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/11/2016 12:05:20 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BlockedIps]    Script Date: 9/11/2016 12:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedIps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnonymousOnly] [bit] NOT NULL,
	[BlockByUserId] [nvarchar](450) NULL,
	[BlockCreateAccount] [bit] NOT NULL,
	[BlockExpiry] [decimal](18, 2) NOT NULL,
	[BlockReason] [nvarchar](max) NULL,
	[BlockUserEdit] [bit] NOT NULL,
	[BlockedIpId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IpAddress] [nvarchar](max) NULL,
	[IpRangeEnd] [nvarchar](max) NULL,
	[IpRangeStart] [nvarchar](max) NULL,
	[ParentBlock] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserBlockedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BlockedIps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatPages] [int] NULL,
	[CatTitle] [nvarchar](max) NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NumberOfSubcat] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[CatTitleVI] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfoGroups]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfoGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfoGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterInfos]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterInfos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[CharacterInfoGroupId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsMain] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Characters]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Attack] [int] NOT NULL,
	[CPGain] [real] NOT NULL,
	[Candy] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Defense] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[EvolveFromId] [int] NOT NULL,
	[Height] [real] NOT NULL,
	[MaxCP] [real] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Species] [nvarchar](max) NULL,
	[Stamina] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Weight] [real] NOT NULL,
	[EvolveIntos] [nvarchar](max) NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSectionGroups]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSectionGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSectionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CharacterSections]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[CharacterSectionGroupId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CharacterSections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileArchives]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileArchives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArchiveName] [nvarchar](max) NULL,
	[BitDepth] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[DeletedReason] [nvarchar](max) NULL,
	[FileDescription] [nvarchar](max) NULL,
	[FileMediaType] [nvarchar](max) NULL,
	[FileMime] [nvarchar](max) NULL,
	[FileSize] [int] NOT NULL,
	[FileSource] [nvarchar](max) NULL,
	[Height] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UploadedUserId] [nvarchar](450) NULL,
	[Width] [int] NOT NULL,
 CONSTRAINT [PK_FileArchives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InfoValues]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterInfoId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_InfoValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moves]    Script Date: 9/11/2016 12:05:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moves](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NULL,
	[CharacterId] [int] NULL,
	[CharacterId1] [int] NULL,
	[Cooldown] [real] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[CritChange] [real] NOT NULL,
	[DPS] [real] NOT NULL,
	[Energy] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Power] [real] NOT NULL,
	[Type] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[WithSTAB] [real] NOT NULL,
 CONSTRAINT [PK_Moves] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageContents]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageContents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentFlags] [nvarchar](max) NULL,
	[ContentText] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageContents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageLangs]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageLangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Language] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageLangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageMetas]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[PageId] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PageRestrictions]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCascade] [bit] NOT NULL,
	[PageResctrictedId] [int] NULL,
	[PageRestrictedId] [int] NOT NULL,
	[ResLevel] [int] NOT NULL,
	[ResType] [int] NOT NULL,
	[ResctrictionExpiry] [decimal](18, 2) NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_PageRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContentLanguage] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsNewPage] [bit] NOT NULL,
	[IsRedirect] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[NewestContent] [int] NULL,
	[PageLength] [decimal](18, 2) NOT NULL,
	[TagId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProtectedTitles]    Script Date: 9/11/2016 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtectedTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[ProtectExpiry] [decimal](18, 2) NOT NULL,
	[ProtectReason] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NULL,
	[UserProtectedId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ProtectedTitles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecentChanges]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentChanges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChangeComment] [nvarchar](max) NULL,
	[ChangeFromIpAddress] [nvarchar](max) NULL,
	[ChangeNewLength] [decimal](18, 2) NULL,
	[ChangeOldLength] [decimal](18, 2) NULL,
	[ChangeType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[IsCreateNew] [bit] NOT NULL,
	[IsDeletedAction] [bit] NOT NULL,
	[NameSpace] [int] NOT NULL,
	[PageId] [int] NULL,
	[PageTitle] [nvarchar](max) NULL,
	[RevisionId] [int] NULL,
	[RevisionParentId] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserMakeChangeId] [nvarchar](450) NULL,
 CONSTRAINT [PK_RecentChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[References]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[LinkTo] [int] NOT NULL,
	[LinkToId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UrlFormat] [nvarchar](max) NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Revisions]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BelongToUserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[PageContentId] [int] NOT NULL,
	[PageId] [int] NOT NULL,
	[RevParentId] [int] NULL,
	[RevisionComment] [nvarchar](max) NULL,
	[RevivsionIsDeleted] [bit] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Revisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sites]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[SiteConfig] [nvarchar](max) NULL,
	[SiteDomain] [nvarchar](max) NULL,
	[SiteGroup] [nvarchar](max) NULL,
	[SiteKey] [nvarchar](max) NULL,
	[SiteLanguage] [nvarchar](max) NULL,
	[SiteProtocol] [nvarchar](max) NULL,
	[SiteSource] [nvarchar](max) NULL,
	[SiteType] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Sites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](max) NULL,
	[Level] [smallint] NOT NULL,
	[NickName] [nvarchar](max) NULL,
	[SearchCount] [int] NOT NULL,
	[ShortName] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMetas]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMetas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaValue] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserInUseId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserMetas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNewtalks]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewtalks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[UserIp] [nvarchar](max) NULL,
	[UserLastSeen] [datetime2](7) NOT NULL,
	[UserSeenId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserNewtalks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WatchLists]    Script Date: 9/11/2016 12:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchLists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[NameSpace] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[UserId] [int] NOT NULL,
	[WatchTitle] [nvarchar](max) NULL,
	[WatchedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WatchLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiImages]    Script Date: 9/11/2016 12:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BitDepth] [int] NOT NULL,
	[CharacterId] [int] NULL,
	[CharacterId1] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[ImageDescription] [nvarchar](max) NULL,
	[ImageHeight] [int] NOT NULL,
	[ImageMediaType] [nvarchar](max) NULL,
	[ImageMime] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImageSize] [int] NOT NULL,
	[ImageWidth] [int] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WikiImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WikiVideos]    Script Date: 9/11/2016 12:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WikiVideos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedUserId] [nvarchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Priority] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedUserId] [nvarchar](450) NULL,
	[Url] [nvarchar](max) NULL,
	[VideoType] [int] NOT NULL,
 CONSTRAINT [PK_WikiVideos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (19, 1, N'Type(ENG)', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Type(VI)')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (20, 1, N'Normal', 1030, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thường')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (21, 1, N'Fire', 1009, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Lửa')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (22, 1, N'Water', 1016, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Nước')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (23, 1, N'Electric', 1036, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Điện')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (24, 1, N'Grass', 1002, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Cỏ')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (25, 1, N'Ice', 1021, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Băng')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (26, 1, N'Fighting', 1053, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Giác Đấu')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (27, 1, N'Poison', 1003, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Độc')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (28, 1, N'Ground', 1040, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đất')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (29, 1, N'Flying', 1014, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bay')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (30, 1, N'Psychic', 1007, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tâm Linh')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (31, 1, N'Bug', 1022, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bọ')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (32, 1, N'Rock', 1020, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Đá')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (33, 1, N'Ghost', 1035, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Ma')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (34, 1, N'Dragon', 1014, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Rồng')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (35, 1, N'Dark', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Bóng Tối')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (36, 1, N'Steel', 1060, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Thép')
INSERT [dbo].[Categories] ([Id], [CatPages], [CatTitle], [CharacterId], [CreatedDate], [CreatedUserId], [NumberOfSubcat], [UpdatedDate], [UpdatedUserId], [CatTitleVI]) VALUES (37, 1, N'Fairy', 1044, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, NULL, N'Tiên')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1002, 164, 23.1, 0, CAST(N'2016-09-11T12:02:07.6884182' AS DateTime2), NULL, 152, N'', 0, 1, 1739, N'Tangela', N'#114', N'tangela', N'Pokémon', 130, NULL, NULL, 35, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1003, 190, 30.2, 0, CAST(N'2016-09-11T12:02:07.6724128' AS DateTime2), NULL, 198, N'', 0, 1.2, 2250, N'Weezing', N'#110', N'weezing', N'Pokémon', 130, NULL, NULL, 9.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1004, 156, 22.4, 0, CAST(N'2016-09-11T12:02:07.7920594' AS DateTime2), NULL, 158, N'', 0, 0.8, 1691, N'Porygon', N'#137', N'porygon', N'Pokémon', 130, NULL, NULL, 36.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1005, 232, 40.1, 0, CAST(N'2016-09-11T12:02:07.6418988' AS DateTime2), NULL, 164, N'', 0, 2, 2955, N'Exeggutor', N'#103', N'exeggutor', N'Pokémon', 190, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1006, 222, 34.1, 0, CAST(N'2016-09-11T12:02:07.4453051' AS DateTime2), NULL, 152, N'Victreebel có những sợi dây leo dài trên đầu giúp nó hấp dẫn con mồi và nuốt chửng chúng.', 0, 1.7, 2530, N'Victreebel', N'#071', N'victreebel', N'Pokémon Đớp Ruồi', 160, NULL, NULL, 15.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1007, 220, 44.9, 0, CAST(N'2016-09-11T12:02:07.8955732' AS DateTime2), NULL, 220, N'', 0, 0.4, 3299, N'Mew', N'#151', N'mew', N'Pokémon', 200, NULL, NULL, 4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1008, 202, 33.6, 0, CAST(N'2016-09-11T12:02:07.2854401' AS DateTime2), NULL, 190, N'Vileplume thường thả ra phấn độc gây dịnh ứng mỗi khi bị tiếp cận từ bông hoa xinh đẹp trên đầu nó. Vì vậy, tốt nhất nên tránh xa các bông hoa lớn và đẹp trong rừng.', 0, 1.2, 2492, N'Vileplume', N'#045', N'vileplume', N'Pokémon Hoa', 150, NULL, NULL, 18.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1009, 242, 44.1, 0, CAST(N'2016-09-11T12:02:07.8570710' AS DateTime2), NULL, 194, N'', 0, 2, 3240, N'Moltres', N'#146', N'moltres', N'Pokémon', 180, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1010, 148, 14.2, 50, CAST(N'2016-09-11T12:02:07.8160606' AS DateTime2), NULL, 142, N'', 0, 0.5, 1104, N'Kabuto', N'#140', N'kabuto', N'Pokémon', 60, NULL, NULL, 11.5, N'#141')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1011, 168, 20, 50, CAST(N'2016-09-11T12:02:07.4688107' AS DateTime2), NULL, 138, N'Ponyta khá yếu khi còn nhỏ và dần trở nên mạnh hơn sau nhiều cố gắng để chạy theo mẹ của chúng.', 0, 1, 1516, N'Ponyta', N'#077', N'ponyta', N'Pokémon Ngựa Lửa', 100, NULL, NULL, 30, N'#078')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1012, 160, 20.5, 100, CAST(N'2016-09-11T12:02:07.0733256' AS DateTime2), NULL, 140, N'Charmeleon rất hiếu chiến với bộ vuốt sắc nhọn của nó. Ở trạng thái hưng phấn khi đối đầu với đối thủ mạnh, ngọn lửa trên đuôi của Charmeleon chuyển sang màu trắng xanh.', 0, 1.1, 1557, N'Charmeleon', N'#005', N'charmeleon', N'Pokémon Lửa', 116, NULL, NULL, 19, N'#006')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1013, 214, 30.4, 0, CAST(N'2016-09-11T12:02:07.7309668' AS DateTime2), NULL, 158, N'', 0, 1.3, 2265, N'Magmar', N'#126', N'magmar', N'Pokémon', 130, NULL, NULL, 44.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1014, 250, 47.7, 0, CAST(N'2016-09-11T12:02:07.8755730' AS DateTime2), NULL, 212, N'', 0, 2.2, 3500, N'Dragonite', N'#149', N'dragonite', N'Pokémon', 182, NULL, NULL, 210, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1015, 164, 25.6, 0, CAST(N'2016-09-11T12:02:07.2419203' AS DateTime2), NULL, 164, N'Golbat thường hút máu của động vật sống và nó thường hoạt động về đêm.', 0, 1.6, 1921, N'Golbat', N'#042', N'golbat', N'Pokémon Dơi', 150, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1016, 190, 28.5, 0, CAST(N'2016-09-11T12:02:07.8230588' AS DateTime2), NULL, 190, N'', 0, 1.3, 2130, N'Kabutops', N'#141', N'kabutops', N'Pokémon', 120, NULL, NULL, 40.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1017, 122, 10, 50, CAST(N'2016-09-11T12:02:07.6954133' AS DateTime2), NULL, 100, N'', 0, 0.4, 794, N'Horsea', N'#116', N'horsea', N'Pokémon', 60, NULL, NULL, 8, N'#117')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1018, 170, 23.2, 100, CAST(N'2016-09-11T12:02:07.8670679' AS DateTime2), NULL, 152, N'', 0, 4, 1747, N'Dragonair', N'#148', N'dragonair', N'Pokémon', 122, NULL, NULL, 16.5, N'#149')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1019, 180, 30, 0, CAST(N'2016-09-11T12:02:07.8090599' AS DateTime2), NULL, 202, N'', 0, 1, 2233, N'Omastar', N'#139', N'omastar', N'Pokémon', 140, NULL, NULL, 35, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1020, 182, 29, 0, CAST(N'2016-09-11T12:02:07.8310602' AS DateTime2), NULL, 162, N'', 0, 1.8, 2165, N'Aerodactyl', N'#142', N'aerodactyl', N'Pokémon', 160, NULL, NULL, 59, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1021, 198, 40.4, 0, CAST(N'2016-09-11T12:02:07.8430615' AS DateTime2), NULL, 242, N'', 0, 1.7, 2978, N'Articuno', N'#144', N'articuno', N'Pokémon', 180, NULL, NULL, 55.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1022, 184, 28.4, 0, CAST(N'2016-09-11T12:02:07.7349500' AS DateTime2), NULL, 186, N'', 0, 1.5, 2121, N'Pinsir', N'#127', N'pinsir', N'Pokémon', 130, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1023, 172, 25.2, 0, CAST(N'2016-09-11T12:02:07.3354518' AS DateTime2), NULL, 154, N'Venomoth sống về đêm và thường săn bắt côn trùng nhỏ. Nó thường bị hấp dẫn bởi những đốm ánh sáng vào ban đêm.', 0, 1.5, 1890, N'Venomoth', N'#049', N'venomoth', N'Pokémon Bướm Đêm', 140, NULL, NULL, 12.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1024, 110, 11.8, 0, CAST(N'2016-09-11T12:02:07.7629571' AS DateTime2), NULL, 110, N'', 0, 0.3, 919, N'Ditto', N'#132', N'ditto', N'Pokémon', 96, NULL, NULL, 4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1025, 284, 56.8, 0, CAST(N'2016-09-11T12:02:07.8815735' AS DateTime2), NULL, 202, N'', 0, 2, 4144, N'Mewtwo', N'#150', N'mewtwo', N'Pokémon', 212, NULL, NULL, 122, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1026, 176, 27.7, 0, CAST(N'2016-09-11T12:02:07.7192358' AS DateTime2), NULL, 180, N'', 0, 1.5, 2073, N'Scyther', N'#123', N'scyther', N'Pokémon', 140, NULL, NULL, 56, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1027, 106, 11.6, 50, CAST(N'2016-09-11T12:02:07.4493161' AS DateTime2), NULL, 136, N'Cơ thể của Tentacool được cấu thành từ nước và dễ dàng khô lại rong không khí nên chúng chỉ có thể sống dưới biển.', 0, 0.9, 905, N'Tentacool', N'#072', N'tentacool', N'Pokémon Sứa', 80, NULL, NULL, 45.5, N'#073')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1028, 172, 27.3, 0, CAST(N'2016-09-11T12:02:07.7062385' AS DateTime2), NULL, 160, N'', 0, 1.3, 2043, N'Seaking', N'#119', N'seaking', N'Pokémon', 160, NULL, NULL, 39, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1029, 182, 24.4, 0, CAST(N'2016-09-11T12:02:07.5148417' AS DateTime2), NULL, 150, N'Khi mà ba đầu của Dodrio nhìn theo ba hướng khác nhau thì tốt nhất không nên lại gần vì chúng đang rất cảnh giác xung quanh và có thể tấn công bạn.', 0, 1.8, 1836, N'Dodrio', N'#085', N'dodrio', N'Pokémon Tam Điểu', 120, NULL, NULL, 85.2, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1030, 180, 42.2, 0, CAST(N'2016-09-11T12:02:07.8370580' AS DateTime2), NULL, 180, N'', 0, 2.1, 3112, N'Snorlax', N'#143', N'snorlax', N'Pokémon', 320, NULL, NULL, 460, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1031, 128, 12.6, 25, CAST(N'2016-09-11T12:02:07.8615704' AS DateTime2), NULL, 110, N'', 0, 1.8, 983, N'Dratini', N'#147', N'dratini', N'Pokémon', 82, NULL, NULL, 3.3, N'#148')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1032, 114, 13.9, 25, CAST(N'2016-09-11T12:02:07.7699582' AS DateTime2), NULL, 128, N'', 0, 0.3, 1077, N'Eevee', N'#133', N'eevee', N'Pokémon', 110, NULL, NULL, 6.5, N'#134,#135,#136')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1033, 146, 19, 0, CAST(N'2016-09-11T12:02:07.1613365' AS DateTime2), NULL, 150, N'Với cặp răng nanh lớn, Raticate có khả năng gặm nhấm gỗ, đá và thậm chí là bức tường nhà.', 0, 0.7, 1444, N'Raticate', N'#020', N'raticate', N'Pokémon Chuột', 110, NULL, NULL, 18.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1034, 180, 35.1, 0, CAST(N'2016-09-11T12:02:07.5418413' AS DateTime2), NULL, 188, N'Toàn bộ cơ thể của Muk được bao quanh bởi một lớp bùn quánh độc hại. Chỉ một giọt dịch cơ thể của nó cũng đủ làm ô nhiễm một hồ nước.', 0, 1.2, 2602, N'Muk', N'#089', N'muk', N'Pokémon Bùn', 210, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1035, 204, 27.8, 0, CAST(N'2016-09-11T12:02:07.5768987' AS DateTime2), NULL, 156, N'', 0, 1.5, 2078, N'Gengar', N'#094', N'gengar', N'Pokémon Bóng', 120, NULL, NULL, 40.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1036, 232, 42.3, 0, CAST(N'2016-09-11T12:02:07.8490585' AS DateTime2), NULL, 194, N'', 0, 1.6, 3114, N'Zapdos', N'#145', N'zapdos', N'Pokémon', 180, NULL, NULL, 52.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1037, 150, 21.8, 0, CAST(N'2016-09-11T12:02:07.6288963' AS DateTime2), NULL, 174, N'', 0, 1.2, 1646, N'Electrode', N'#101', N'electrode', N'Pokémon', 120, NULL, NULL, 66.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1038, 142, 27.3, 0, CAST(N'2016-09-11T12:02:07.6924116' AS DateTime2), NULL, 178, N'', 0, 2.2, 2043, N'Kangaskhan', N'#115', N'kangaskhan', N'Pokémon', 210, NULL, NULL, 80, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1039, 198, 28.3, 0, CAST(N'2016-09-11T12:02:07.7269494' AS DateTime2), NULL, 160, N'', 0, 1.1, 2119, N'Electabuzz', N'#125', N'electabuzz', N'Pokémon', 130, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1040, 166, 30.1, 0, CAST(N'2016-09-11T12:02:07.6814234' AS DateTime2), NULL, 160, N'', 0, 1.9, 2243, N'Rhydon', N'#112', N'rhydon', N'Pokémon', 210, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1041, 178, 24.2, 0, CAST(N'2016-09-11T12:02:07.6138976' AS DateTime2), NULL, 168, N'', 0, 1.3, 1823, N'Kingler', N'#099', N'kingler', N'Pokémon', 110, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1042, 110, 15.4, 50, CAST(N'2016-09-11T12:02:07.6764109' AS DateTime2), NULL, 116, N'', 0, 1, 1182, N'Rhyhorn', N'#111', N'rhyhorn', N'Pokémon', 160, NULL, NULL, 115, N'#112')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1043, 148, 24.5, 0, CAST(N'2016-09-11T12:02:07.7419511' AS DateTime2), NULL, 184, N'', 0, 1.4, 1844, N'Tauros', N'#128', N'tauros', N'Pokémon', 150, NULL, NULL, 88.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1044, 154, 19.6, 0, CAST(N'2016-09-11T12:02:07.7162371' AS DateTime2), NULL, 196, N'', 0, 1.3, 1494, N'Mr. Mime', N'#122', N'mr. mime', N'Pokémon', 80, NULL, NULL, 54.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1045, 98, 11.6, 50, CAST(N'2016-09-11T12:02:07.2249215' AS DateTime2), NULL, 54, N'Bằng vào khả năng điều chỉnh giọng của mình, giọng hát của Jigglypuff có khả năng ru ngủ đối thủ.', 0, 0.5, 917, N'Jigglypuff', N'#039', N'jigglypuff', N'Pokémon Bóng Bay', 230, NULL, NULL, 5.5, N'#040')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1046, 40, 8, 0, CAST(N'2016-09-11T12:02:07.6854109' AS DateTime2), NULL, 60, N'', 0, 1.1, 675, N'Chansey', N'#113', N'chansey', N'Pokémon', 500, NULL, NULL, 34.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1047, 156, 21.6, 0, CAST(N'2016-09-11T12:02:07.3684577' AS DateTime2), NULL, 146, N'Bộ ria của Persian giúp nó trông mạnh mẽ hơn và giúp nó cảm nhận không khí xung quanh. Nhưng bộ ria cũng là điểm yếu của nó khi bị chạm vào.', 0, 1, 1631, N'Persian', N'#053', N'persian', N'Pokémon Mèo', 130, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1048, 136, 10.1, 25, CAST(N'2016-09-11T12:02:07.5628511' AS DateTime2), NULL, 82, N'Phần lớn cơ thể của Gastly là các loại khí gas. Nhưng vì vậy mà nó cũng có thể bị gió cuốn đi.', 0, 1.3, 804, N'Gastly', N'#092', N'gastly', N'Pokémon Khí Độc', 60, NULL, NULL, 0.1, N'#093')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1049, 162, 23.2, 0, CAST(N'2016-09-11T12:02:07.3124512' AS DateTime2), NULL, 170, N'Parasect thường tàn phá các cây lớn bằng việc sống và hút chất dinh dưỡng từ các gốc cây.', 0, 1, 1747, N'Parasect', N'#047', N'parasect', N'Pokémon Nấm', 120, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1050, 124, 16.8, 50, CAST(N'2016-09-11T12:02:07.5358417' AS DateTime2), NULL, 110, N'Cơ thể nhớt nhợt của Grimer có thể lách qua bất cứ khe hở nào, cho dù nó có nhỏ đến đâu. Nó thích uống nước thải từ các cống rãnh.', 0, 0.9, 1284, N'Grimer', N'#088', N'grimer', N'Pokémon Bùn', 160, NULL, NULL, 30, N'#089')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1051, 194, 29.2, 0, CAST(N'2016-09-11T12:02:07.7122360' AS DateTime2), NULL, 192, N'', 0, 1.1, 2182, N'Starmie', N'#121', N'starmie', N'Pokémon', 120, NULL, NULL, 80, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1052, 198, 35, 0, CAST(N'2016-09-11T12:02:07.4336562' AS DateTime2), NULL, 180, N'Machamp có đủ sức mạnh để quăng bất cứ thứ gì. Nhưng do có bốn tay mà không suy nghĩ trước khi làm khiến tay của nó thường vướng với nhau.', 0, 1.6, 2594, N'Machamp', N'#068', N'machamp', N'Pokémon Sức Mạnh', 180, NULL, NULL, 130, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1053, 138, 19.9, 0, CAST(N'2016-09-11T12:02:07.6609076' AS DateTime2), NULL, 204, N'', 0, 1.4, 1516, N'Hitmonchan', N'#107', N'hitmonchan', N'Pokémon', 100, NULL, NULL, 50.2, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1054, 148, 19.6, 0, CAST(N'2016-09-11T12:02:07.6569073' AS DateTime2), NULL, 172, N'', 0, 1.5, 1492, N'Hitmonlee', N'#106', N'hitmonlee', N'Pokémon', 100, NULL, NULL, 49.8, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1055, 230, 40.5, 0, CAST(N'2016-09-11T12:02:07.4054691' AS DateTime2), NULL, 180, N'Arcanine được biết đến với khả năng chạy kì nhanh dựa vào nguồn năng lượng lửa bên trong cơ thể nó.', 0, 1.9, 2983, N'Arcanine', N'#059', N'arcanine', N'Pokémon Huyền Thoại', 180, NULL, NULL, 155, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1056, 130, 12, 50, CAST(N'2016-09-11T12:02:07.7092368' AS DateTime2), NULL, 128, N'', 0, 0.8, 937, N'Staryu', N'#120', N'staryu', N'Pokémon', 60, NULL, NULL, 34.5, N'#121')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1057, 132, 17.6, 100, CAST(N'2016-09-11T12:02:07.4124664' AS DateTime2), NULL, 132, N'Bề mặt da của Poliwhirl khá trơn và nhầy giúp nó có thể trượt và tránh đòn dễ dàng trong chiến đấu.', 0, 1, 1340, N'Poliwhirl', N'#061', N'poliwhirl', N'Pokémon Nòng Nọc', 130, NULL, NULL, 20, N'#062')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1058, 172, 22.8, 0, CAST(N'2016-09-11T12:02:07.7242364' AS DateTime2), NULL, 134, N'', 0, 1.4, 1716, N'Jynx', N'#124', N'jynx', N'Pokémon', 130, NULL, NULL, 40.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1059, 138, 16.5, 0, CAST(N'2016-09-11T12:02:07.4978416' AS DateTime2), NULL, 132, N'Farfetch''d thường cầm một cây hành bên người để ăn cũng như làm vũ khí.', 0, 0.8, 1263, N'Farfetch''d', N'#083', N'farfetch''d', N'PokémonVịt', 104, NULL, NULL, 15, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1060, 186, 25, 0, CAST(N'2016-09-11T12:02:07.4928423' AS DateTime2), NULL, 180, N'Magneton thường phóng ra các luồng từ tính mạng làm nhiễu sóng radio và gây hại tới các thiết bị điện tử.', 0, 1, 1879, N'Magneton', N'#082', N'magneton', N'Pokémon Nam Châm', 100, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1061, 186, 40.4, 0, CAST(N'2016-09-11T12:02:07.7599575' AS DateTime2), NULL, 190, N'', 0, 2.5, 2980, N'Lapras', N'#131', N'lapras', N'Pokémon', 260, NULL, NULL, 220, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1062, 136, 14.9, 50, CAST(N'2016-09-11T12:02:07.6684095' AS DateTime2), NULL, 142, N'', 0, 0.6, 1151, N'Koffing', N'#109', N'koffing', N'Pokémon', 80, NULL, NULL, 1, N'#110')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1063, 140, 21.9, 0, CAST(N'2016-09-11T12:02:07.6518995' AS DateTime2), NULL, 202, N'', 0, 1, 1656, N'Marowak', N'#105', N'marowak', N'Pokémon', 120, NULL, NULL, 45, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1064, 42, 3, 400, CAST(N'2016-09-11T12:02:07.7449490' AS DateTime2), NULL, 84, N'', 0, 0.9, 262, N'Magikarp', N'#129', N'magikarp', N'Pokémon', 40, NULL, NULL, 10, N'#130')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1065, 132, 14.4, 50, CAST(N'2016-09-11T12:02:07.8010602' AS DateTime2), NULL, 160, N'', 0, 0.4, 1119, N'Omanyte', N'#138', N'omanyte', N'Pokémon', 70, NULL, NULL, 7.5, N'#139')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1066, 126, 13.8, 25, CAST(N'2016-09-11T12:02:07.0443076' AS DateTime2), NULL, 126, N'Trên lưng của Bulbasaur có một hạt giống có thể nở nhờ ánh sáng nên nó thường ngủ trưa dưới ánh mặt trời. ', 0, 0.7, 1071, N'Bulbasaur', N'#001', N'bulbasaur', N'Pokémon Hạt Giống', 90, NULL, NULL, 6.9, N'#002')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1067, 156, 21.6, 100, CAST(N'2016-09-11T12:02:07.0523090' AS DateTime2), NULL, 158, N'Sau khi tiến hoá từ Bulbasaur, hạt giống trên lưng trở thành nụ hoa. Vì vậy nó dành nhiều hơn thời gian dưới ánh mặt trời để tiến hoá.', 0, 1, 1632, N'Ivysaur', N'#002', N'ivysaur', N'Pokémon Hạt Giống', 120, NULL, NULL, 13, N'#003')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1068, 198, 34.8, 0, CAST(N'2016-09-11T12:02:07.0613167' AS DateTime2), NULL, 200, N'Dạng tiến hoá cao nhất khi mà hạt giống trên lưng đã nở thành hoa.Hương thơm từ hoa có thể làm dịu cảm xúc khi hít phải.', 0, 2, 2580, N'Venusaur', N'#003', N'venusaur', N'Pokémon Hạt Giống', 160, NULL, NULL, 100, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1069, 128, 12.2, 25, CAST(N'2016-09-11T12:02:07.0673167' AS DateTime2), NULL, 108, N'Ngọn lửa cháy trên đuôi biểu hiện cho cảm xúc của Charmander. Ngọn lửa nhấp nháy những lúc vui buồn hoặc cháy dữ dội khi chiến đấu.', 0, 0.6, 955, N'Charmander', N'#004', N'charmander', N'Pokémon Thằn Lằn', 78, NULL, NULL, 8.5, N'#005')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1070, 212, 35.1, 0, CAST(N'2016-09-11T12:02:07.0813271' AS DateTime2), NULL, 182, N'Charizard có khả năng bay lượn và luôn tìm những đối thủ mạnh mẽ hơn nó để chiến đấu. Nó có khả năng thổi ra những ngọn lửa với nhiệt độ cực cao và làm tan chảy tất cả.', 0, 1.7, 2602, N'Charizard', N'#006', N'charizard', N'Pokémon Lửa', 156, NULL, NULL, 90.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1071, 112, 13, 25, CAST(N'2016-09-11T12:02:07.0883278' AS DateTime2), NULL, 142, N'Mai của Squirtle ngoài khả năng phòng thủ còn giúp nó bơi lội cực nhanh trong nước bằng vào hình dáng tròn trịa của mình.', 0, 0.5, 1008, N'Squirtle', N'#007', N'squirtle', N'Pokémon Rùa Con', 88, NULL, NULL, 9, N'#008')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1072, 144, 20.9, 100, CAST(N'2016-09-11T12:02:07.0923250' AS DateTime2), NULL, 176, N'Sau khi tiến hoá, đuôi của Wartortle lớn và dày hơn, đồng thời màu sắc của đuôi cũng đại diện cho tuổi thọ của nó. Bên cạnh đó, những vết sẹo trên mai cũng thể hiện cho chiến tích của nó qua những trận đấu.', 0, 1, 1582, N'Wartortle', N'#008', N'wartortle', N'Pokémon Rùa', 118, NULL, NULL, 22.5, N'#009')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1073, 186, 34.3, 0, CAST(N'2016-09-11T12:02:07.0983263' AS DateTime2), NULL, 222, N'Blastoise có hai cây súng nước trên mai của nó với khả năng bắn ra nhưng viên đạn nước có độ chính xác cực cao và xa.', 0, 1.6, 2542, N'Blastoise', N'#009', N'blastoise', N'Pokémon Rùa', 158, NULL, NULL, 85.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1074, 62, 5.3, 12, CAST(N'2016-09-11T12:02:07.1033273' AS DateTime2), NULL, 66, N'Caterpie rất tham ăn, nó có thể ăn lượng lá cây lớn hơn nó nhiều lần. Sừng của nó có khả năng toả ra mùi cực mạnh để xua đuổi pokémon khác.', 0, 0.3, 443, N'Caterpie', N'#010', N'caterpie', N'Pokémon Sâu', 90, NULL, NULL, 2.9, N'#011')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1075, 56, 5.8, 50, CAST(N'2016-09-11T12:02:07.1083274' AS DateTime2), NULL, 86, N'Metapod có lớp vỏ cứng như sắt. Nó rất ít di chuyển mà chờ đợi tới lúc tiến hoá sau này.', 0, 0.7, 477, N'Metapod', N'#011', N'metapod', N'Pokémon Nhộng', 100, NULL, NULL, 9.9, N'#012')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1076, 144, 19.1, 0, CAST(N'2016-09-11T12:02:07.1173249' AS DateTime2), NULL, 144, N'Butterfree rất giỏi trong việc tìm kiếm và thu thập mật hoa từ khoảng cách xa.', 0, 1.1, 1454, N'Butterfree', N'#012', N'butterfree', N'Pokémon Bướm', 120, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1077, 68, 5.4, 12, CAST(N'2016-09-11T12:02:07.1233266' AS DateTime2), NULL, 64, N'Weedle có khứa giác rất nhạy. Bằng cái mũi to tròn của mình nó có thể tìm kiếm những loại lá yêu thích.', 0, 0.3, 449, N'Weedle', N'#013', N'weedle', N'Pokémon Sâu Lông', 80, NULL, NULL, 3.2, N'#014')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1078, 62, 5.9, 50, CAST(N'2016-09-11T12:02:07.1283263' AS DateTime2), NULL, 82, N'Kakuna luôn treo mình trên cây để chuẩn bị tiến hoá. Quá trình tiến hoá càng lâu, vỏ của nó sẽ càng nóng.', 0, 0.6, 485, N'Kakuna', N'#014', N'kakuna', N'Pokémon Nhộng', 90, NULL, NULL, 10, N'#015')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1079, 144, 18.9, 0, CAST(N'2016-09-11T12:02:07.1363260' AS DateTime2), NULL, 130, N'Beedrill trở nên cực kì nguy hiểm khi có người tiếp cận tổ của nó. Đáng sợ nhất là nó luôn tấn công theo bầy.', 0, 1, 1439, N'Beedrill', N'#015', N'beedrill', N'Pokémon Ong độc', 130, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1080, 94, 8.5, 12, CAST(N'2016-09-11T12:02:07.1433254' AS DateTime2), NULL, 90, N'Pidgey có khả năng xác định phương hướng rất tốt giúp nó di chuyển khoảng cách xa mà không bị lac.', 0, 0.3, 679, N'Pidgey', N'#016', N'pidgey', N'Pokémon Chim Con', 80, NULL, NULL, 1.8, N'#017')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1081, 126, 16, 50, CAST(N'2016-09-11T12:02:07.1503257' AS DateTime2), NULL, 122, N'Pidgeotto luôn chiếm một khu vực lãnh thổ rất rộng và luôn tấn công những kẻ xâm nhập bằng bộ móng sắc nhọn của nó.', 0, 1.1, 1223, N'Pidgeotto', N'#017', N'pidgeotto', N'Pokémon Chim', 126, NULL, NULL, 30, N'#018')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1082, 170, 28, 0, CAST(N'2016-09-11T12:02:07.1563359' AS DateTime2), NULL, 166, N'Pidgeot có một bộ lông rực rỡ với nhưng chiếc lông lộng lẫy. Đặc biệt là những chiếc lông trên đầu của nó khiến rất nhiều huấn luyện viên chọn Pidgeot trở thành pokémon của họ.', 0, 1.5, 2091, N'Pidgeot', N'#018', N'pidgeot', N'Pokémon Chim', 166, NULL, NULL, 39.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1083, 92, 7.2, 25, CAST(N'2016-09-11T12:02:07.1588369' AS DateTime2), NULL, 86, N'Rattata cực kì cẩn thận và đề phòng xung quanh bằng đôi tai lớn của nó. Nó khá dễ tính và có thể sống ở bất cứ đâu.', 0, 0.3, 581, N'Rattata', N'#019', N'rattata', N'Pokémon Chuột', 60, NULL, NULL, 3.5, N'#020')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1084, 102, 8.6, 50, CAST(N'2016-09-11T12:02:07.1638374' AS DateTime2), NULL, 78, N'Spearow có tiếng kêu rất lớn nhằm cảnh báo nguy hiểm cho đồng loại của nó.', 0, 0.3, 686, N'Spearow', N'#021', N'spearow', N'Pokémon Chim Con', 80, NULL, NULL, 2, N'#022')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1085, 168, 23.2, 0, CAST(N'2016-09-11T12:02:07.1698361' AS DateTime2), NULL, 146, N'Fearow có cổ và đặc biệt là mỏ của nó khá dài giúp nó dễ dàng di chuyển và bắt mồi.', 0, 1.2, 1746, N'Fearow', N'#022', N'fearow', N'Pokémon Chim', 130, NULL, NULL, 38, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1086, 112, 10.5, 50, CAST(N'2016-09-11T12:02:07.1729225' AS DateTime2), NULL, 112, N'Ekans thường cuộn tròn lại nằm nghỉ đồng thời giúp nó phản ứng nhanh khi có nguy hiểm xung quanh.', 0, 2, 824, N'Ekans', N'#023', N'ekans', N'Pokémon Rắn', 70, NULL, NULL, 6.9, N'#024')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1087, 166, 23.5, 0, CAST(N'2016-09-11T12:02:07.1759182' AS DateTime2), NULL, 166, N'Bằng khả năng quấn chặt cực mạnh của mình,đối thủ của  Arbok gần như không thể thoát khỏi khi bị nó quấn phải.', 0, 3.5, 1767, N'Arbok', N'#024', N'arbok', N'Pokémon Rắn Hổ Mang', 120, NULL, NULL, 65, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1088, 124, 11.3, 50, CAST(N'2016-09-11T12:02:07.1779184' AS DateTime2), NULL, 108, N'Pikachu thường thể hiện sự hứng thú của nó bằng các tia điện. Nếu bạn nhìn thì quả berry bị điện cháy đen thì chắc chắn là do Pikachu làm.', 0, 0.4, 887, N'Pikachu', N'#025', N'pikachu', N'Pokémon Chuột', 70, NULL, NULL, 6, N'#026')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1089, 200, 27.1, 0, CAST(N'2016-09-11T12:02:07.1809184' AS DateTime2), NULL, 154, N'Do có khả năng phóng điện mạnh nên mỗi khi dòng điện tích luỹ quá lớn, Raichu thường phóng thích dòng điện xuống đất qua cái đuôi bén nhọn của nó.', 0, 0.8, 2028, N'Raichu', N'#026', N'raichu', N'Pokémon Chuột', 120, NULL, NULL, 30, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1090, 90, 10.1, 50, CAST(N'2016-09-11T12:02:07.1839184' AS DateTime2), NULL, 114, N'Cơ thể của Sandshrew hấp thu nước tốt giúp nó có thể sinh sống trong khu vực sa mạc. Nó thường cuộn tròn cơ thể của mình khi phòng thủ.', 0, 0.6, 798, N'Sandshrew', N'#027', N'sandshrew', N'Pokémon Chuột', 100, NULL, NULL, 12, N'#028')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1091, 150, 24.1, 0, CAST(N'2016-09-11T12:02:07.1869205' AS DateTime2), NULL, 172, N'Sandslash có những cái gai bén nhọn giúp nó phòng thủ cũng như tấn công. Bộ gai của nó thường được thay thế mỗi năm một lần.', 0, 1, 1810, N'Sandslash', N'#028', N'sandslash', N'Pokémon Chuột', 150, NULL, NULL, 29.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1092, 100, 11.2, 25, CAST(N'2016-09-11T12:02:07.1909191' AS DateTime2), NULL, 104, N'Nidoran♀ có những gai cực độc trên cơ thể để bảo vệ nó. Độc cũng có thể truyền từ sừng của nó khi tấn công.', 0, 0.4, 876, N'Nidoran♀', N'#029', N'nidoran♀', N'Pokémon Gai Độc', 110, NULL, NULL, 7, N'#030')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1093, 132, 18.4, 100, CAST(N'2016-09-11T12:02:07.1939246' AS DateTime2), NULL, 136, N'Nidorina có khả năng thu lại những gai độc của mình khi ở cùng với đồng loại của mình. Nó thường khá lo lắng khi bị tách khỏi bầy của mình.', 0, 0.8, 1404, N'Nidorina', N'#030', N'nidorina', N'Pokémon Gai Độc', 140, NULL, NULL, 20, N'#031')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1094, 184, 33.5, 0, CAST(N'2016-09-11T12:02:07.1969182' AS DateTime2), NULL, 190, N'Nidoqueen có cơ thể to lớn với bộ giáp cực kì cứng giúp nó dễ dàng húc bay đối thủ. Nidoqueen trở nên rất đáng sợ khi có kẻ đụng vào con của nó.', 0, 1.3, 2485, N'Nidoqueen', N'#031', N'nidoqueen', N'Pokémon Mũi Khoan', 180, NULL, NULL, 60, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1095, 110, 10.7, 25, CAST(N'2016-09-11T12:02:07.1999182' AS DateTime2), NULL, 94, N'Nidoran♂ có đôi tai cực lớn giúp nó nhận biết xung quanh và di chuyển một cách an toàn.', 0, 0.5, 843, N'Nidoran♂', N'#032', N'nidoran♂', N'Pokémon Gai Độc', 92, NULL, NULL, 9, N'#033')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1096, 142, 18, 100, CAST(N'2016-09-11T12:02:07.2019192' AS DateTime2), NULL, 128, N'Nidorino có sừng cứng hơn cả kim cương. Khi cảm thấy nguy hiểm, gai lưng của nó thường dựng lên để chiến đấu.', 0, 0.9, 1372, N'Nidorino', N'#033', N'nidorino', N'Pokémon Gai Độc', 122, NULL, NULL, 19.5, N'#034')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1097, 204, 33.3, 0, CAST(N'2016-09-11T12:02:07.2049252' AS DateTime2), NULL, 170, N'Với cái đuôi to lớn và mạnh mẽ có thể phá nát kim loại, rất ít pokémon có thể ngăn cản Nidoking khi nó nổi giận.', 0, 1.4, 2475, N'Nidoking', N'#034', N'nidoking', N'Pokémon Mũi Khoan', 162, NULL, NULL, 62, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1098, 116, 15.6, 50, CAST(N'2016-09-11T12:02:07.2099185' AS DateTime2), NULL, 124, N'Clefairy thường xuất hiện vào đêm trăng tròn để chơi cùng đồng bọn và trở về tổ khi bình minh đến.', 0, 0.6, 1200, N'Clefairy', N'#035', N'clefairy', N'Pokémon Tiên', 140, NULL, NULL, 7.5, N'#036')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1099, 178, 32.3, 0, CAST(N'2016-09-11T12:02:07.2119182' AS DateTime2), NULL, 178, N'Clefable có thể nhảy nhẹ nhàng bằng cặp cánh nhỏ của nó, kể cả trên nước. Nó thường đi dạo trên mặt hồ vào đêm trăng.', 0, 1.3, 2397, N'Clefable', N'#036', N'clefable', N'Pokémon Tiên', 190, NULL, NULL, 40, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1100, 106, 10.6, 50, CAST(N'2016-09-11T12:02:07.2149199' AS DateTime2), NULL, 118, N'Vulpix có một đuôi khi sinh ra và dần dần mọc tới sáu đuôi khi lớn. Đuôi của nó rất cong và đẹp.', 0, 0.6, 831, N'Vulpix', N'#037', N'vulpix', N'Pokémon Cáo', 76, NULL, NULL, 9.9, N'#038')
GO
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1101, 176, 29.3, 0, CAST(N'2016-09-11T12:02:07.2189193' AS DateTime2), NULL, 194, N'Đôi mắt của Ninetales có thể phóng ra ánh sáng với khả năng điều khiển đối thủ. Ninetales được cho là có khả năng sống tới một ngàn năm.', 0, 1.1, 2188, N'Ninetales', N'#038', N'ninetales', N'Pokémon Cáo', 146, NULL, NULL, 19.9, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1102, 168, 29.1, 0, CAST(N'2016-09-11T12:02:07.2289218' AS DateTime2), NULL, 108, N'Wigglytuff có đôi mắt đẹp to tròn với một lớp nước mắt bảo vệ mắt nó khỏi bụi bẩn.', 0, 1, 2177, N'Wigglytuff', N'#040', N'wigglytuff', N'Pokémon Bóng Bay', 280, NULL, NULL, 12, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1103, 88, 8, 50, CAST(N'2016-09-11T12:02:07.2329186' AS DateTime2), NULL, 90, N'Zubat có thể bị thiêu cháy dưới ánh sáng mặt trời nên nó thường trốn trong bóng tối vào ban ngày.', 0, 0.8, 642, N'Zubat', N'#041', N'zubat', N'Pokémon Dơi', 80, NULL, NULL, 7.5, N'#042')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1104, 134, 14.9, 25, CAST(N'2016-09-11T12:02:07.2529196' AS DateTime2), NULL, 130, N'Oddish thường chôn mình dưới đất để hấp thu chất dinh dưỡng. Càng nhiều chất dinh dưỡng được hấp thu, lá của nó càng sáng bóng.', 0, 0.5, 1148, N'Oddish', N'#043', N'oddish', N'Pokémon Cỏ', 90, NULL, NULL, 5.4, N'#044')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1105, 162, 22.4, 100, CAST(N'2016-09-11T12:02:07.2689275' AS DateTime2), NULL, 158, N'Khi cảm thấy nguy hiểm, Gloom phóng thích mùi hôi từ nhuỵ của nó để đe doạ kẻ thù.', 0, 0.8, 1689, N'Gloom', N'#044', N'gloom', N'Pokémon Cỏ', 120, NULL, NULL, 8.6, N'#045')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1106, 122, 11.7, 50, CAST(N'2016-09-11T12:02:07.2984528' AS DateTime2), NULL, 120, N'Paras có hai cây nấm sống kí sinh trên lưng nó. Chúng lớn lên bằng chất dinh dưỡng Paras hút từ cây lớn và là vị thuốc có giá trị giúp kéo dài tuổi thọ.', 0, 0.3, 916, N'Paras', N'#046', N'paras', N'Pokémon Nấm', 70, NULL, NULL, 5.4, N'#047')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1107, 108, 13.3, 50, CAST(N'2016-09-11T12:02:07.3244516' AS DateTime2), NULL, 118, N'Venonat có một bộ lông xù, mỏng và cứng giúp bảo vệ cơ thể của nó. Đôi mắt lớn giúp nó phát hiện con mồi dù rất nhỏ.', 0, 1, 1029, N'Venonat', N'#048', N'venonat', N'Pokémon Côn Trùng', 120, NULL, NULL, 30, N'#049')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1108, 108, 5.3, 50, CAST(N'2016-09-11T12:02:07.3444501' AS DateTime2), NULL, 86, N'Diglett thường chôn mình dưới đất và sống trong các trang trại. Nhờ có nó mà đất rất màu mỡ và thích hợp để trồng cây.', 0, 0.2, 456, N'Diglett', N'#050', N'diglett', N'Pokémon Chuột Chũi', 20, NULL, NULL, 0.8, N'#051')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1109, 148, 15.1, 0, CAST(N'2016-09-11T12:02:07.3524528' AS DateTime2), NULL, 140, N'Dugtrio có ba đầu trên một cơ thể giúp nó phối hợp đào đất nhanh hơn.', 0, 0.7, 1168, N'Dugtrio', N'#051', N'dugtrio', N'Pokémon Chuột Chũi', 70, NULL, NULL, 33.3, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1110, 104, 9.6, 50, CAST(N'2016-09-11T12:02:07.3594590' AS DateTime2), NULL, 94, N'Meowth thu bộ vuốt của nó lại để di chuyển nhẹ nhàng hơn. Nó rất thích các đồng tiền sáng lấp lánh.', 0, 0.4, 756, N'Meowth', N'#052', N'meowth', N'Pokémon Mèo Cào', 80, NULL, NULL, 4.2, N'#053')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1111, 132, 14.4, 50, CAST(N'2016-09-11T12:02:07.3754644' AS DateTime2), NULL, 112, N'Psyduck có năng lực bí ẩn phát ra sóng não chỉ xuất hiện khi ngủ. Nhưng điều này còn gây tranh cãi khá nhiều giữa các nhà nghiên cứu.', 0, 0.8, 1109, N'Psyduck', N'#054', N'psyduck', N'Pokémon Vịt', 100, NULL, NULL, 19.6, N'#055')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1112, 194, 32.1, 0, CAST(N'2016-09-11T12:02:07.3824651' AS DateTime2), NULL, 176, N'Màng tay, chân và cơ thể dạng thuỷ động học giúp Golduck bơi rất nhanh dưới nước.', 0, 1.7, 2386, N'Golduck', N'#055', N'golduck', N'Pokémon Vịt', 160, NULL, NULL, 76.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1113, 122, 11.2, 50, CAST(N'2016-09-11T12:02:07.3904657' AS DateTime2), NULL, 96, N'Thở mạnh là dấu hiệu cho thấy Mankey đang nổi giận. Không có bất cứ ai có thể thoát khỏi cơn thịnh nộ của nó.', 0, 0.5, 878, N'Mankey', N'#056', N'mankey', N'Pokémon Khỉ Heo', 80, NULL, NULL, 28, N'#057')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1114, 178, 24.8, 0, CAST(N'2016-09-11T12:02:07.3964648' AS DateTime2), NULL, 150, N'Khi Primeape nổi giận, máu trong cơ thể nó vận chuyển nhanh hơn làm tăng sức mạnh cơ bắp nhưng cũng khiến nó trở nên khá ngu ngốc.', 0, 1, 1864, N'Primeape', N'#057', N'primeape', N'Pokémon Khỉ Heo', 130, NULL, NULL, 32, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1115, 156, 17.5, 50, CAST(N'2016-09-11T12:02:07.4014654' AS DateTime2), NULL, 110, N'Growlithe có khả năng đánh hơi và ghi nhớ mùi mạnh mẽ. Khứu giác của nó còn có khả năng nhận biết được cảm xúc của sinh vật sống khác.', 0, 0.7, 1335, N'Growlithe', N'#058', N'growlithe', N'Pokémon Chó Con', 110, NULL, NULL, 19, N'#059')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1116, 108, 10.1, 25, CAST(N'2016-09-11T12:02:07.4094655' AS DateTime2), NULL, 98, N'Poliwag có da mỏng nhưng cũng rất mềm dẻo đủ để giúp nó chống lại những chiếc răng nanh bén nhọn.', 0, 0.6, 795, N'Poliwag', N'#060', N'poliwag', N'Pokémon Nòng Nọc', 80, NULL, NULL, 12.4, N'#061')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1117, 180, 33.8, 0, CAST(N'2016-09-11T12:02:07.4154642' AS DateTime2), NULL, 202, N'Poliwrath có cơ bắp cực kì mạnh mẽ và không biết mệt mỏi giúp nó có thể dễ dàng bơi xuyên đại dương.', 0, 1.3, 2505, N'Poliwrath', N'#062', N'poliwrath', N'Pokémon Nòng Nọc', 180, NULL, NULL, 54, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1118, 110, 7.4, 25, CAST(N'2016-09-11T12:02:07.4184655' AS DateTime2), NULL, 76, N'Abra ngủ 18 giờ một ngày nhưng nó vẫn có thể cảm nhận nguy hiểm xung quanh và dịch chuyển để bỏ chạy.', 0, 0.9, 600, N'Abra', N'#063', N'abra', N'Pokémon Tâm Linh', 50, NULL, NULL, 19.5, N'#064')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1119, 150, 14.6, 100, CAST(N'2016-09-11T12:02:07.4214668' AS DateTime2), NULL, 112, N'Kadabra luôn phát ra một luồng sóng alpha xung quanh nó gây nhức đầu cho người khác. Vì vậy, chỉ có những nhà huấn luyện có năng lực tâm linh mạnh mẽ mới điều khiển được nó.', 0, 1.3, 1131, N'Kadabra', N'#064', N'kadabra', N'Pokémon Tâm Linh', 80, NULL, NULL, 56.5, N'#065')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1120, 186, 24.1, 0, CAST(N'2016-09-11T12:02:07.4244664' AS DateTime2), NULL, 152, N'Não của Alakazam phát triển liên tục khiến cho đầu ngày càng to ra đến mức nó phải dùng năng lực tâm linh để nâng đầu lên.', 0, 1.5, 1813, N'Alakazam', N'#065', N'alakazam', N'Pokémon Tâm Linh', 110, NULL, NULL, 48, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1121, 118, 14.1, 25, CAST(N'2016-09-11T12:02:07.4274664' AS DateTime2), NULL, 96, N'Cơ bắp của Machop không bao giờ cảm thấy mệt mỏi trong khi sức mạnh của nó đủ để nâng hàng trăm người.', 0, 0.8, 1089, N'Machop', N'#066', N'machop', N'Pokémon Sức Mạnh', 140, NULL, NULL, 19.5, N'#067')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1122, 154, 23.4, 100, CAST(N'2016-09-11T12:02:07.4304642' AS DateTime2), NULL, 144, N'Machoke luôn rèn luyện cơ bắp của nó trở nên cứng như thép. Nó có thể dễ dàng nâng một Sumo chỉ bằng một ngón tay.', 0, 1.5, 1760, N'Machoke', N'#067', N'machoke', N'Pokémon Sức Mạnh', 160, NULL, NULL, 70.5, N'#068')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1123, 158, 14.4, 25, CAST(N'2016-09-11T12:02:07.4376433' AS DateTime2), NULL, 78, N'Với cơ thể nhỏ và mêm dẽo, Bellsprout có thể dễ dàng né tránh các đòn đánh. Còn miệng của nó thì có khả năng phun ra chất dịch có thể ăn mòn cả sắt.', 0, 0.7, 1117, N'Bellsprout', N'#069', N'bellsprout', N'Pokémon Hoa', 100, NULL, NULL, 4, N'#070')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1124, 190, 22.8, 100, CAST(N'2016-09-11T12:02:07.4413224' AS DateTime2), NULL, 110, N'Weepinbell có một cái móc nhỏ trên đầu giúp nó treo lơ lửng trên cây khi ngủ. Dù nó cỏ thể dễ dàng rơi xuống đất khi nhúc nhích.', 0, 1, 1723, N'Weepinbell', N'#070', N'weepinbell', N'Pokémon Đớp Ruồi', 130, NULL, NULL, 6.4, N'#071')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1125, 170, 29.8, 0, CAST(N'2016-09-11T12:02:07.4533048' AS DateTime2), NULL, 196, N'Hai quả cầu trên đầu Tentacruel có khả năng phát ra sóng siêu âm cực mạnh để tấn công đối thủ xung quanh.', 0, 1.6, 2220, N'Tentacruel', N'#073', N'tentacruel', N'Pokémon Sứa', 160, NULL, NULL, 55, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1126, 106, 10.8, 25, CAST(N'2016-09-11T12:02:07.4578102' AS DateTime2), NULL, 118, N'Geodude sống càng lâu thì cơ thể nó càng trở nên trơn và tròn.', 0, 0.4, 849, N'Geodude', N'#074', N'geodude', N'Pokémon Đá', 80, NULL, NULL, 20, N'#075')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1127, 142, 18.8, 100, CAST(N'2016-09-11T12:02:07.4613118' AS DateTime2), NULL, 156, N'Graveler dùng đá làm thức ăn và ăn một lượng lớn mỗi ngày. Món yêu thích của nó là đá có rêu.', 0, 1, 1433, N'Graveler', N'#075', N'graveler', N'Pokémon Đá', 110, NULL, NULL, 105, N'#076')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1128, 176, 30.9, 0, CAST(N'2016-09-11T12:02:07.4653116' AS DateTime2), NULL, 198, N'Golem thường sống trên núi. Do ảnh hưởng của động đất mà chúng có thể lăn xuống núi và tàn phá tất cả trên đường đi.', 0, 1.4, 2303, N'Golem', N'#076', N'golem', N'Pokémon Siêu Trọng', 160, NULL, NULL, 300, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1129, 200, 29.5, 0, CAST(N'2016-09-11T12:02:07.4718432' AS DateTime2), NULL, 170, N'Rapidash thường xuất hiện tại cánh đồng hoặc thảo nguyên. Chúng có thể phi cực nhanh bằng vào năng lượng toả ra từ cái bờm đầy lửa của mình.', 0, 1.7, 2199, N'Rapidash', N'#078', N'rapidash', N'Pokémon Ngựa Lửa', 130, NULL, NULL, 95, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1130, 110, 15.9, 50, CAST(N'2016-09-11T12:02:07.4748415' AS DateTime2), NULL, 110, N'Slowpoke dùng đuôi của nó để bắt cá nhưng nó rất hay quên và thường nằm cả ngày bên bờ sông.', 0, 1.2, 1218, N'Slowpoke', N'#079', N'slowpoke', N'Pokémon Ngốc', 180, NULL, NULL, 36, N'#080')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1131, 184, 35.1, 0, CAST(N'2016-09-11T12:02:07.4788593' AS DateTime2), NULL, 198, N'Slowpoke tiến hoá thành Slowbro sau khi bị Shellder cắn vào đuôi nó. Vì vậy, nó không thể câu cá nữa mà phải tự bơi đi kiếm ăn.', 0, 1.6, 2597, N'Slowbro', N'#080', N'slowbro', N'Pokémon Cua', 190, NULL, NULL, 78.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1132, 128, 11.3, 50, CAST(N'2016-09-11T12:02:07.4838642' AS DateTime2), NULL, 138, N'Magnemite sống dựa trên các nguồn điện nên chúng thường bám vào các đường đây điện hoặc cấu chì.', 0, 0.3, 890, N'Magnemite', N'#081', N'magnemite', N'Pokémon Nam Châm', 50, NULL, NULL, 6, N'#082')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1133, 126, 10.9, 50, CAST(N'2016-09-11T12:02:07.5068412' AS DateTime2), NULL, 96, N'Hai đầu của Doduo luôn thay nhau ngủ để đề phòng kẻ thù xung quanh.', 0, 1.4, 855, N'Doduo', N'#084', N'doduo', N'Pokémon Song Điểu', 70, NULL, NULL, 39.2, N'#085')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1134, 104, 14.3, 50, CAST(N'2016-09-11T12:02:07.5218429' AS DateTime2), NULL, 138, N'Seel thích sống và bơi trong môi trường lạnh. Chiếc sừng nhô ra ở đầu nó rất cứng và có thể xuyên thủng lớp băng dày.', 0, 1.1, 1107, N'Seel', N'#086', N'seel', N'Pokémon Sư Tử Biển', 130, NULL, NULL, 90, N'#087')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1135, 156, 28.7, 0, CAST(N'2016-09-11T12:02:07.5298421' AS DateTime2), NULL, 192, N'Dewgong thích ngủ trong môi trường băng lạnh. Thỉnh thoảng nó nằm trên những tảng băng trôi và từng bị nhìn nhầm là nàng tiên cá bởi các thủy thủ.', 0, 1.7, 2145, N'Dewgong', N'#087', N'dewgong', N'Pokémon Sư Tử Biển', 180, NULL, NULL, 120, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1136, 120, 10.4, 50, CAST(N'2016-09-11T12:02:07.5478447' AS DateTime2), NULL, 112, N'Vỏ của Shellder cứng hơn cả kim cương, có thể chịu được mọi đòn tấn công. Vào ban đêm, nó dùng chiếc lưỡi để đào một hốc nhỏ trên bề mặt đáy biển để ngủ.', 0, 0.3, 822, N'Shellder', N'#090', N'shellder', N'Pokémon Vỏ Sò', 60, NULL, NULL, 4, N'#091')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1137, 196, 27.4, 0, CAST(N'2016-09-11T12:02:07.5548424' AS DateTime2), NULL, 196, N'Cloyster bơi bằng cách hút nước vào cơ thể rồi bơm ra ngoài theo các rãnh trên vỏ. Nó bắn các gai cũng bằng cơ chế này.', 0, 1.5, 2052, N'Cloyster', N'#091', N'cloyster', N'Pokémon Vỏ Sò', 100, NULL, NULL, 132.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1138, 172, 18, 100, CAST(N'2016-09-11T12:02:07.5693493' AS DateTime2), NULL, 118, N'', 0, 1.6, 1380, N'Haunter', N'#093', N'haunter', N'Pokémon Khí Độc', 90, NULL, NULL, 0.1, N'#094')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1139, 90, 10.9, 0, CAST(N'2016-09-11T12:02:07.5818975' AS DateTime2), NULL, 186, N'', 0, 8.8, 857, N'Onix', N'#095', N'onix', N'Pokémon', 70, NULL, NULL, 210, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1140, 104, 13.9, 50, CAST(N'2016-09-11T12:02:07.5908975' AS DateTime2), NULL, 140, N'', 0, 1, 1075, N'Drowzee', N'#096', N'drowzee', N'Pokémon', 120, NULL, NULL, 32.4, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1141, 162, 29.3, 0, CAST(N'2016-09-11T12:02:07.5988977' AS DateTime2), NULL, 196, N'', 0, 1.6, 2184, N'Hypno', N'#097', N'hypno', N'Pokémon', 170, NULL, NULL, 75.6, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1142, 116, 10, 50, CAST(N'2016-09-11T12:02:07.6068982' AS DateTime2), NULL, 110, N'', 0, 0.4, 792, N'Krabby', N'#098', N'krabby', N'Pokémon', 60, NULL, NULL, 6.5, N'#099')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1143, 102, 10.7, 50, CAST(N'2016-09-11T12:02:07.6228964' AS DateTime2), NULL, 124, N'', 0, 0.5, 839, N'Voltorb', N'#100', N'voltorb', N'Pokémon', 80, NULL, NULL, 10.4, N'#101')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1144, 110, 14.2, 50, CAST(N'2016-09-11T12:02:07.6338965' AS DateTime2), NULL, 132, N'', 0, 0.4, 1099, N'Exeggcute', N'#102', N'exeggcute', N'Pokémon', 120, NULL, NULL, 2.5, N'#103')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1145, 102, 13, 50, CAST(N'2016-09-11T12:02:07.6468985' AS DateTime2), NULL, 150, N'', 0, 0.4, 1006, N'Cubone', N'#104', N'cubone', N'Pokémon', 100, NULL, NULL, 6.5, N'#105')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1146, 126, 21.5, 0, CAST(N'2016-09-11T12:02:07.6644246' AS DateTime2), NULL, 160, N'', 0, 1.2, 1626, N'Lickitung', N'#108', N'lickitung', N'Pokémon', 180, NULL, NULL, 65.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1147, 176, 22.7, 0, CAST(N'2016-09-11T12:02:07.6984133' AS DateTime2), NULL, 150, N'', 0, 1.2, 1713, N'Seadra', N'#117', N'seadra', N'Pokémon', 110, NULL, NULL, 25, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1148, 112, 12.4, 50, CAST(N'2016-09-11T12:02:07.7022365' AS DateTime2), NULL, 126, N'', 0, 0.6, 965, N'Goldeen', N'#118', N'goldeen', N'Pokémon', 90, NULL, NULL, 15, N'#119')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1149, 192, 36.4, 0, CAST(N'2016-09-11T12:02:07.7519488' AS DateTime2), NULL, 196, N'', 0, 6.5, 2688, N'Gyarados', N'#130', N'gyarados', N'Pokémon', 190, NULL, NULL, 235, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1150, 186, 38.1, 0, CAST(N'2016-09-11T12:02:07.7760604' AS DateTime2), NULL, 168, N'', 0, 1, 2816, N'Vaporeon', N'#134', N'vaporeon', N'Pokémon', 260, NULL, NULL, 29, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1151, 192, 28.6, 0, CAST(N'2016-09-11T12:02:07.7820578' AS DateTime2), NULL, 174, N'', 0, 0.8, 2140, N'Jolteon', N'#135', N'jolteon', N'Pokémon', 130, NULL, NULL, 24.5, N'')
INSERT [dbo].[Characters] ([Id], [Attack], [CPGain], [Candy], [CreatedDate], [CreatedUserId], [Defense], [Description], [EvolveFromId], [Height], [MaxCP], [Name], [Number], [Slug], [Species], [Stamina], [UpdatedDate], [UpdatedUserId], [Weight], [EvolveIntos]) VALUES (1152, 238, 35.6, 0, CAST(N'2016-09-11T12:02:07.7860615' AS DateTime2), NULL, 178, N'', 0, 0.9, 2643, N'Flareon', N'#136', N'flareon', N'Pokémon', 130, NULL, NULL, 25, N'')
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (19, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Khu Dân Cư,Trường Học', NULL, NULL, N'Normal')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (20, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Khu Dân Cư,Thành Phố,Khí Hậu Nóng,Khí Hậu Ẩm,Bãi Biển,Công Viên', NULL, NULL, N'Fire')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (21, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Kênh,Hồ,Biển,Sông,Đầm Lầy,Cảng,Bể Nước', NULL, NULL, N'Water')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (22, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Khu Dân Cư,Trường Học,Đường,Khu Mua Sắm', NULL, NULL, N'Electric')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (23, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Đường,Vườn,Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, N'Grass')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (24, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Gần Nước,Khí Hậu Lạnh, Đồng Cỏ', NULL, NULL, N'Ice')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (25, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Gym,Sân Vận Động,Khu Giải Trí', NULL, NULL, N'Fighting')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (26, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Hồ,Đầm Lầy', NULL, NULL, N'Poison')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (27, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Công Viên,Mỏ,Khu Nông Nghiệp,Sân Gôn', NULL, NULL, N'Ground')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (28, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Khu Công Nghiệp,Rừng,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên,Khu Giải Trí,Công Viên,Vườn', NULL, NULL, N'Flying')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (29, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Trừ Mew và Mewtwo chỉ xuất hiện trong các sự kiện đặc biệt', N'Khu Dân Cư(Đêm),Bệnh Viện,Bãi Cỏ', NULL, NULL, N'Psychic')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (30, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Công Viên,Khu Nông Nghiệp,Rừng,Vườn, Sân Gôn,Bãi Cỏ,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, N'Bug')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (31, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Mỏ,Khu Nông Nghiệp,Thành Phố,Đường,Khu Bảo Tồn Thiên Nhiên', NULL, NULL, N'Rock')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (32, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Nhà Thờ,Khu Dân Cư(Đêm),Nghĩa Trang', NULL, NULL, N'Ghost')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (33, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Sân Gôn,Địa Danh,Khu Du Lịch', NULL, NULL, N'Dragon')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (34, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Chưa xác định', N'', NULL, NULL, N'Dark')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (35, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Toà Nhà,Đường', NULL, NULL, N'Steel')
INSERT [dbo].[Locations] ([Id], [CharacterId], [CreatedDate], [CreatedUserId], [Description], [Name], [UpdatedDate], [UpdatedUserId], [Type]) VALUES (36, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'', N'Nhà Thờ,Địa Danh,Khu Du Lịch,Nghĩa Trang', NULL, NULL, N'Fairy')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Moves] ON 

INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (1, N'Charge', NULL, 1030, 1.56, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 32.05, -50, N'Body Slam', 50, N'Normal', NULL, NULL, 40.06)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (2, N'Charge', NULL, 1056, 2.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.62, -25, N'Bubble Beam', 25, N'Water', NULL, NULL, 10.78)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (3, N'Charge', NULL, 1029, 2.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.62, -25, N'Aerial Ace', 25, N'Flying', NULL, NULL, 10.78)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (4, N'Fast', 1028, NULL, 1.15, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.7, 10, N'Peck', 10, N'Flying', NULL, NULL, 10.87)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (5, N'Charge', NULL, 1057, 4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.75, -33, N'Scald', 35, N'Water', NULL, NULL, 10.94)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (6, N'Fast', 1019, NULL, 1.36, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.82, 7, N'Rock Throw', 12, N'Rock', NULL, NULL, 11.03)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (7, N'Charge', NULL, 1042, 3.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.82, -25, N'Bulldoze', 30, N'Ground', NULL, NULL, 11.03)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (8, N'Charge', NULL, 1024, 1.695, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.85, -20, N'Struggle', 15, N'Normal', NULL, NULL, 11.06)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (9, N'Charge', NULL, 1060, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.93, -25, N'Magnet Bomb', 25, N'Steel', NULL, NULL, 11.16)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (10, N'Charge', NULL, 1043, 2.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.09, -25, N'Horn Attack', 20, N'Normal', NULL, NULL, 11.36)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (11, N'Charge', NULL, 1016, 3.3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.09, -25, N'Water Pulse', 30, N'Water', NULL, NULL, 11.36)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (12, N'Charge', NULL, 1004, 3.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.21, -25, N'Psybeam', 35, N'Psychic', NULL, NULL, 11.51)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (13, N'Charge', NULL, 1026, 2.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 9.26, -25, N'Night Slash', 25, N'Dark', NULL, NULL, 11.57)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (14, N'Fast', 1003, NULL, 1.05, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.52, 7, N'Acid', 10, N'Poison', NULL, NULL, 11.9)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (15, N'Fast', 1009, NULL, 1.05, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.52, 7, N'Ember', 10, N'Fire', NULL, NULL, 11.9)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (16, N'Charge', NULL, NULL, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.52, -25, N'Shadow Punch', 20, N'Ghost', NULL, NULL, 11.9)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (17, N'Charge', NULL, 1050, 2.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.62, -25, N'Mud Bomb', 25, N'Ground', NULL, NULL, 12.02)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (18, N'Charge', NULL, 1062, 2.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.62, -25, N'Sludge', 25, N'Poison', NULL, NULL, 12.02)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (19, N'Charge', NULL, NULL, 3.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 9.72, -33, N'Giga Drain', 35, N'Grass', NULL, NULL, 12.15)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (20, N'Fast', 1037, NULL, 0.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10, 4, N'Spark', 7, N'Electric', NULL, NULL, 12.5)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (21, N'Fast', 1035, NULL, 0.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10, 4, N'Sucker Punch', 7, N'Dark', NULL, NULL, 12.5)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (22, N'Fast', 1006, NULL, 1.45, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10.34, 7, N'Razor Leaf', 15, N'Grass', NULL, NULL, 12.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (23, N'Fast', 1027, NULL, 0.575, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10.43, 4, N'Poison Sting', 6, N'Poison', NULL, NULL, 13.04)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (24, N'Fast', 1059, NULL, 1.13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10.62, 7, N'Cut', 12, N'Normal', NULL, NULL, 13.27)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (25, N'Charge', NULL, 1046, 4.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10.71, -33, N'Dazzling Gleam', 45, N'Fairy', NULL, NULL, 13.39)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (26, N'Fast', 1004, NULL, 1.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 10.91, 7, N'Tackle', 12, N'Normal', NULL, NULL, 13.64)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (27, N'Charge', NULL, 1054, 2.25, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.11, -25, N'Low Sweep', 25, N'Fighting', NULL, NULL, 13.89)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (28, N'Charge', NULL, 1029, 2.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.11, -33, N'Drill Peck', 30, N'Flying', NULL, NULL, 13.89)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (29, N'Fast', 1014, NULL, 1.33, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.28, 4, N'Steel Wing', 15, N'Steel', NULL, NULL, 14.1)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (30, N'Charge', NULL, NULL, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.29, -33, N'Rest', 35, N'Normal', NULL, NULL, 14.11)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (31, N'Charge', NULL, 1020, 3.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, -25, N'Ancient Power', 30, N'Rock', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (32, N'Charge', NULL, 1065, 2.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, -25, N'Brine', 20, N'Water', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (33, N'Charge', NULL, 1032, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, -25, N'Swift', 25, N'Normal', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (34, N'Fast', 1036, NULL, 0.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, 7, N'Thunder Shock', 5, N'Electric', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (35, N'Charge', NULL, 1021, 3.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 3.95, -20, N'Icy Wind', 15, N'Ice', NULL, NULL, 4.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (36, N'Charge', NULL, NULL, 3.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Pink', 15, N'Normal', NULL, NULL, 5.07)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (37, N'Charge', NULL, NULL, 3.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 4.05, -20, N'Wrap Green', 15, N'Normal', NULL, NULL, 5.07)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (38, N'Fast', 1038, NULL, 1.35, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 4.44, 9, N'Mud Slap', 6, N'Ground', NULL, NULL, 5.56)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (39, N'Charge', NULL, NULL, 3.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 4.69, -20, N'Mega Drain', 15, N'Grass', NULL, NULL, 5.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (40, N'Charge', NULL, NULL, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 4.84, -20, N'Shadow Sneak', 15, N'Ghost', NULL, NULL, 6.05)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (41, N'Charge', NULL, 1045, 3.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 5.13, -20, N'Disarming Voice', 20, N'Fairy', NULL, NULL, 6.41)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (42, N'Charge', NULL, 1058, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 5.36, -20, N'Draining Kiss', 15, N'Fairy', NULL, NULL, 6.7)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (43, N'Charge', NULL, 1031, 2.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 5.56, -20, N'Twister', 15, N'Dragon', NULL, NULL, 6.94)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (44, N'Charge', NULL, 1023, 2.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 6.25, -20, N'Poison Fang', 15, N'Poison', NULL, NULL, 7.81)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (45, N'Charge', NULL, 1010, 2.35, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 6.38, -20, N'Aqua Jet', 15, N'Water', NULL, NULL, 7.98)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (46, N'Charge', NULL, 1011, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 6.45, -20, N'Flame Charge', 20, N'Fire', NULL, NULL, 8.06)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (47, N'Fast', 1017, NULL, 2.3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 6.52, 15, N'Bubble', 15, N'Water', NULL, NULL, 8.15)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (48, N'Charge', NULL, NULL, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.14, -20, N'Parabolic Charge', 15, N'Electric', NULL, NULL, 8.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (49, N'Charge', NULL, 1004, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.29, -33, N'Signal Beam', 35, N'Bug', NULL, NULL, 14.11)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (50, N'Charge', NULL, 1022, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.14, -20, N'Vice Grip', 15, N'Normal', NULL, NULL, 8.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (51, N'Charge', NULL, 1010, 3.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 7.35, -25, N'Rock Tomb', 25, N'Rock', NULL, NULL, 9.19)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (52, N'Fast', 1013, NULL, 0.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.5, 7, N'Karate Chop', 6, N'Fighting', NULL, NULL, 9.38)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (53, N'Fast', 1016, NULL, 0.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.5, 12, N'Fury Cutter', 3, N'Bug', NULL, NULL, 9.38)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (54, N'Fast', 1004, NULL, 1.33, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.52, 7, N'Quick Attack', 10, N'Normal', NULL, NULL, 9.4)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (55, N'Charge', NULL, 1029, 3.3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 7.58, -25, N'Air Cutter', 25, N'Flying', NULL, NULL, 9.47)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (56, N'Charge', NULL, 1011, 4.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.61, -25, N'Flame Wheel', 35, N'Fire', NULL, NULL, 9.51)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (57, N'Charge', NULL, 1032, 5.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.76, -33, N'Dig', 45, N'Ground', NULL, NULL, 9.7)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (58, N'Charge', NULL, NULL, 2.55, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.84, -25, N'Heart Stamp', 20, N'Psychic', NULL, NULL, 9.8)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (59, N'Fast', 1025, NULL, 1.51, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.95, 7, N'Confusion', 12, N'Psychic', NULL, NULL, 9.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (60, N'Charge', NULL, 1048, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.06, -25, N'Ominous Wind', 25, N'Ghost', NULL, NULL, 10.08)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (61, N'Fast', 1064, NULL, 1.23, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.13, 7, N'Splash', 10, N'Water', NULL, NULL, 10.16)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (62, N'Fast', 1055, NULL, 0.84, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, 4, N'Fire Fang', 7, N'Fire', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (63, N'Fast', 1053, NULL, 1.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, 7, N'Bullet Punch', 10, N'Steel', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (64, N'Fast', 1039, NULL, 0.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 8.33, 7, N'Low Kick', 5, N'Fighting', NULL, NULL, 10.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (65, N'Fast', 1061, NULL, 1.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 7.14, 7, N'Ice Shard', 10, N'Ice', NULL, NULL, 8.93)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (66, N'Fast', 1029, NULL, 1.04, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.54, 7, N'Feint Attack', 12, N'Dark', NULL, NULL, 14.42)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (67, N'Charge', NULL, 1026, 4.25, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.76, -50, N'Bug Buzz', 50, N'Bug', NULL, NULL, 14.71)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (68, N'Charge', NULL, 1028, 3.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 11.76, -33, N'Drill Run', 40, N'Ground', NULL, NULL, 14.71)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (69, N'Charge', NULL, 1019, 3.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.79, -100, N'Hydro Pump', 60, N'Water', NULL, NULL, 19.74)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (70, N'Charge', NULL, 1009, 3.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.79, -100, N'Heat Wave', 60, N'Fire', NULL, NULL, 19.74)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (71, N'Fast', 1015, NULL, 0.75, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 16, 7, N'Wing Attack', 12, N'Flying', NULL, NULL, 20)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (72, N'Charge', NULL, 1036, 2.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 16, -33, N'Discharge', 40, N'Electric', NULL, NULL, 20)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (73, N'Charge', NULL, 1059, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 16.07, -50, N'Leaf Blade', 45, N'Grass', NULL, NULL, 20.09)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (74, N'Charge', NULL, 1033, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 16.67, -33, N'Hyper Fang', 35, N'Normal', NULL, NULL, 20.83)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (75, N'Charge', NULL, 1039, 2.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 16.67, -33, N'Thunder Punch', 40, N'Electric', NULL, NULL, 20.83)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (76, N'Fast', 1035, NULL, 0.95, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 16.84, 7, N'Shadow Claw', 16, N'Ghost', NULL, NULL, 21.05)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (77, N'Charge', NULL, 1028, 3.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 17.19, -100, N'Megahorn', 55, N'Bug', NULL, NULL, 21.48)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (78, N'Charge', NULL, 1047, 2.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 17.24, -50, N'Play Rough', 50, N'Fairy', NULL, NULL, 21.55)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (79, N'Charge', NULL, 1009, 2.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 17.24, -50, N'Flamethrower', 50, N'Fire', NULL, NULL, 21.55)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (80, N'Charge', NULL, 1035, 3.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 17.65, -100, N'Sludge Wave', 60, N'Poison', NULL, NULL, 22.06)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (81, N'Charge', NULL, 1016, 3.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.5, 17.74, -100, N'Stone Edge', 55, N'Rock', NULL, NULL, 22.18)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (82, N'Charge', NULL, 1007, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 17.86, -50, N'Psychic', 50, N'Psychic', NULL, NULL, 22.32)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (83, N'Charge', NULL, 1008, 3.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.63, -50, N'Petal Blizzard', 50, N'Grass', NULL, NULL, 19.53)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (84, N'Charge', NULL, 1036, 2.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 18.52, -50, N'Thunderbolt', 50, N'Electric', NULL, NULL, 23.15)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (85, N'Charge', NULL, 1007, 3.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 18.75, -100, N'Hurricane', 60, N'Flying', NULL, NULL, 23.44)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (86, N'Fast', 1041, NULL, 0.63, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 19.05, 7, N'Metal Claw', 12, N'Steel', NULL, NULL, 23.81)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (87, N'Charge', NULL, 1002, 2.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 19.23, -50, N'Sludge Bomb', 50, N'Poison', NULL, NULL, 24.04)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (88, N'Fast', 1019, NULL, 0.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 20, 7, N'Water Gun', 10, N'Water', NULL, NULL, 25)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (89, N'Fast', 1010, NULL, 0.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 20, 7, N'Scratch', 10, N'Normal', NULL, NULL, 25)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (90, N'Fast', 1030, NULL, 0.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 20, 7, N'Lick', 10, N'Ghost', NULL, NULL, 25)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (91, N'Charge', NULL, 1034, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 20, -100, N'Gunk Shot', 60, N'Poison', NULL, NULL, 25)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (92, N'Charge', NULL, 1020, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 20, -33, N'Iron Head', 40, N'Steel', NULL, NULL, 25)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (93, N'Charge', NULL, 1018, 2.35, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 21.28, -50, N'Aqua Tail', 50, N'Water', NULL, NULL, 26.6)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (94, N'Charge', NULL, 1002, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 21.43, -100, N'Power Whip', 60, N'Grass', NULL, NULL, 26.79)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (95, N'Fast', 1016, NULL, 0.55, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 21.82, 7, N'Mud Shot', 12, N'Ground', NULL, NULL, 27.27)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (96, N'Fast', 1025, NULL, 0.57, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 26.32, 7, N'Psycho Cut', 15, N'Psychic', NULL, NULL, 32.89)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (97, N'Charge', NULL, 1014, 1.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 26.67, -50, N'Dragon Claw', 40, N'Dragon', NULL, NULL, 33.33)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (98, N'Charge', NULL, 1052, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 27.5, -100, N'Cross Chop', 55, N'Fighting', NULL, NULL, 34.38)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (99, N'Charge', NULL, 1038, 1.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 18.75, -33, N'Brick Break', 30, N'Fighting', NULL, NULL, 23.44)
GO
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (100, N'Charge', NULL, 1018, 4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 3.75, -20, N'Wrap', 15, N'Normal', NULL, NULL, 4.69)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (101, N'Charge', NULL, 1021, 3.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.38, -100, N'Blizzard', 60, N'Ice', NULL, NULL, 19.23)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (102, N'Charge', NULL, 1007, 4.3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.12, -100, N'Thunder', 65, N'Electric', NULL, NULL, 18.9)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (103, N'Charge', NULL, 1038, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.9, -25, N'Stomp', 25, N'Normal', NULL, NULL, 14.88)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (104, N'Charge', NULL, 1012, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 11.9, -25, N'Flame Burst', 25, N'Fire', NULL, NULL, 14.88)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (105, N'Fast', 1014, NULL, 0.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12, 7, N'Dragon Breath', 6, N'Dragon', NULL, NULL, 15)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (106, N'Fast', 1020, NULL, 0.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12, 7, N'Bite', 6, N'Dark', NULL, NULL, 15)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (107, N'Charge', NULL, 1013, 2.8, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.5, -33, N'Fire Punch', 35, N'Fire', NULL, NULL, 15.63)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (108, N'Charge', NULL, 1063, 1.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.5, -25, N'Bone Club', 20, N'Ground', NULL, NULL, 15.63)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (109, N'Charge', NULL, 1019, 3.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.5, -33, N'Rock Slide', 40, N'Rock', NULL, NULL, 15.63)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (110, N'Charge', NULL, 1005, 2.4, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.5, -33, N'Seed Bomb', 30, N'Grass', NULL, NULL, 15.63)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (111, N'Charge', NULL, 1058, 3.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.86, -33, N'Ice Punch', 45, N'Ice', NULL, NULL, 16.07)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (112, N'Charge', NULL, 1003, 3.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.86, -33, N'Dark Pulse', 45, N'Dark', NULL, NULL, 16.07)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (113, N'Charge', NULL, 1025, 3.08, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 12.99, -33, N'Shadow Ball', 40, N'Ghost', NULL, NULL, 16.23)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (114, N'Charge', NULL, 1007, 4.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.27, -100, N'Solar Beam', 65, N'Grass', NULL, NULL, 16.58)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (115, N'Fast', 1023, NULL, 0.45, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.33, 7, N'Bug Bite', 6, N'Bug', NULL, NULL, 16.67)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (116, N'Charge', NULL, 1049, 1.5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.25, 13.33, -25, N'Cross Poison', 20, N'Poison', NULL, NULL, 16.67)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (117, N'Fast', 1002, NULL, 0.65, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 15.38, 7, N'Vine Whip', 10, N'Grass', NULL, NULL, 19.23)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (118, N'Charge', NULL, 1021, 3.65, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.7, -50, N'Ice Beam', 50, N'Ice', NULL, NULL, 17.12)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (119, N'Charge', NULL, 1051, 2.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.79, -33, N'Power Gem', 40, N'Rock', NULL, NULL, 17.24)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (120, N'Charge', NULL, 1007, 3.6, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.89, -50, N'Dragon Pulse', 50, N'Dragon', NULL, NULL, 17.36)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (121, N'Charge', NULL, 1007, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14, -100, N'Hyper Beam', 70, N'Normal', NULL, NULL, 17.5)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (122, N'Charge', NULL, 1017, 3.9, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.1, -33, N'Flash Cannon', 55, N'Steel', NULL, NULL, 17.63)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (123, N'Fast', 1030, NULL, 1.05, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.29, 4, N'Zen Headbutt', 15, N'Psychic', NULL, NULL, 17.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (124, N'Fast', 1028, NULL, 1.05, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.29, 7, N'Poison Jab', 15, N'Poison', NULL, NULL, 17.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (125, N'Charge', NULL, 1022, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.29, -33, N'X Scissor', 30, N'Bug', NULL, NULL, 17.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (126, N'Charge', NULL, 1022, 2.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.29, -33, N'Submission', 30, N'Fighting', NULL, NULL, 17.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (127, N'Charge', NULL, 1007, 4.2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.29, -100, N'Earthquake', 60, N'Ground', NULL, NULL, 17.86)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (128, N'Charge', NULL, 1007, 4.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.63, -100, N'Fire Blast', 60, N'Fire', NULL, NULL, 18.29)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (129, N'Charge', NULL, 1007, 4.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.63, -100, N'Moonblast', 60, N'Fairy', NULL, NULL, 18.29)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (130, N'Fast', 1007, NULL, 0.54, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.81, 7, N'Pound', 8, N'Normal', NULL, NULL, 18.52)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (131, N'Fast', 1021, NULL, 0.81, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.81, 7, N'Frost Breath', 12, N'Ice', NULL, NULL, 18.52)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (132, N'Charge', NULL, 1058, 2.7, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 14.81, -33, N'Psyshock', 40, N'Psychic', NULL, NULL, 18.52)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (133, N'Charge', NULL, NULL, 5.1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 13.73, -100, N'Psystrike', 70, N'Psychic', NULL, NULL, 17.16)
INSERT [dbo].[Moves] ([Id], [Category], [CharacterId], [CharacterId1], [Cooldown], [CreatedDate], [CreatedUserId], [CritChange], [DPS], [Energy], [Name], [Power], [Type], [UpdatedDate], [UpdatedUserId], [WithSTAB]) VALUES (134, N'Fast', 1022, NULL, 1.41, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0.05, 3.55, 7, N'Rock Smash', 5, N'Fighting', NULL, NULL, 4.43)
SET IDENTITY_INSERT [dbo].[Moves] OFF
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Archives]  WITH CHECK ADD  CONSTRAINT [FK_Archives_PageContents_ContentId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[PageContents] ([Id])
GO
ALTER TABLE [dbo].[Archives] CHECK CONSTRAINT [FK_Archives_PageContents_ContentId]
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
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId] FOREIGN KEY([BlockByUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_BlockByUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId] FOREIGN KEY([UserBlockedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_AspNetUsers_UserBlockedId]
GO
ALTER TABLE [dbo].[BlockedIps]  WITH CHECK ADD  CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId] FOREIGN KEY([BlockedIpId])
REFERENCES [dbo].[BlockedIps] ([Id])
GO
ALTER TABLE [dbo].[BlockedIps] CHECK CONSTRAINT [FK_BlockedIps_BlockedIps_BlockedIpId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfoGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfoGroups_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfoGroups] CHECK CONSTRAINT [FK_CharacterInfoGroups_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId] FOREIGN KEY([CharacterInfoGroupId])
REFERENCES [dbo].[CharacterInfoGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_CharacterInfoGroups_CharacterInfoGroupId]
GO
ALTER TABLE [dbo].[CharacterInfos]  WITH CHECK ADD  CONSTRAINT [FK_CharacterInfos_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterInfos] CHECK CONSTRAINT [FK_CharacterInfos_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSectionGroups]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSectionGroups_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[CharacterSectionGroups] CHECK CONSTRAINT [FK_CharacterSectionGroups_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_Characters_CharacterId]
GO
ALTER TABLE [dbo].[CharacterSections]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId] FOREIGN KEY([CharacterSectionGroupId])
REFERENCES [dbo].[CharacterSectionGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSections] CHECK CONSTRAINT [FK_CharacterSections_CharacterSectionGroups_CharacterSectionGroupId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[FileArchives]  WITH CHECK ADD  CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId] FOREIGN KEY([UploadedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileArchives] CHECK CONSTRAINT [FK_FileArchives_AspNetUsers_UploadedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[InfoValues]  WITH CHECK ADD  CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId] FOREIGN KEY([CharacterInfoId])
REFERENCES [dbo].[CharacterInfos] ([Id])
GO
ALTER TABLE [dbo].[InfoValues] CHECK CONSTRAINT [FK_InfoValues_CharacterInfos_CharacterInfoId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Moves]  WITH CHECK ADD  CONSTRAINT [FK_Moves_Characters_CharacterId1] FOREIGN KEY([CharacterId1])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[Moves] CHECK CONSTRAINT [FK_Moves_Characters_CharacterId1]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageContents]  WITH CHECK ADD  CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageContents] CHECK CONSTRAINT [FK_PageContents_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageLangs]  WITH CHECK ADD  CONSTRAINT [FK_PageLangs_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageLangs] CHECK CONSTRAINT [FK_PageLangs_Pages_PageId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageMetas]  WITH CHECK ADD  CONSTRAINT [FK_PageMetas_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PageMetas] CHECK CONSTRAINT [FK_PageMetas_Pages_PageId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[PageRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_PageRestrictions_Pages_PageResctrictedId] FOREIGN KEY([PageResctrictedId])
REFERENCES [dbo].[Pages] ([Id])
GO
ALTER TABLE [dbo].[PageRestrictions] CHECK CONSTRAINT [FK_PageRestrictions_Pages_PageResctrictedId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_Tags_TagId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[ProtectedTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId] FOREIGN KEY([UserProtectedId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProtectedTitles] CHECK CONSTRAINT [FK_ProtectedTitles_AspNetUsers_UserProtectedId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[RecentChanges]  WITH CHECK ADD  CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId] FOREIGN KEY([UserMakeChangeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RecentChanges] CHECK CONSTRAINT [FK_RecentChanges_AspNetUsers_UserMakeChangeId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[References]  WITH CHECK ADD  CONSTRAINT [FK_References_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[References] CHECK CONSTRAINT [FK_References_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId] FOREIGN KEY([BelongToUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_BelongToUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_PageContents_PageContentId] FOREIGN KEY([PageContentId])
REFERENCES [dbo].[PageContents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_PageContents_PageContentId]
GO
ALTER TABLE [dbo].[Revisions]  WITH CHECK ADD  CONSTRAINT [FK_Revisions_Pages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[Pages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revisions] CHECK CONSTRAINT [FK_Revisions_Pages_PageId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserMetas]  WITH CHECK ADD  CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId] FOREIGN KEY([UserInUseId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserMetas] CHECK CONSTRAINT [FK_UserMetas_AspNetUsers_UserInUseId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[UserNewtalks]  WITH CHECK ADD  CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId] FOREIGN KEY([UserSeenId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserNewtalks] CHECK CONSTRAINT [FK_UserNewtalks_AspNetUsers_UserSeenId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WatchLists]  WITH CHECK ADD  CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId] FOREIGN KEY([WatchedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WatchLists] CHECK CONSTRAINT [FK_WatchLists_AspNetUsers_WatchedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_Characters_CharacterId]
GO
ALTER TABLE [dbo].[WikiImages]  WITH CHECK ADD  CONSTRAINT [FK_WikiImages_Characters_CharacterId1] FOREIGN KEY([CharacterId1])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiImages] CHECK CONSTRAINT [FK_WikiImages_Characters_CharacterId1]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId] FOREIGN KEY([UpdatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_AspNetUsers_UpdatedUserId]
GO
ALTER TABLE [dbo].[WikiVideos]  WITH CHECK ADD  CONSTRAINT [FK_WikiVideos_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
GO
ALTER TABLE [dbo].[WikiVideos] CHECK CONSTRAINT [FK_WikiVideos_Characters_CharacterId]
GO
