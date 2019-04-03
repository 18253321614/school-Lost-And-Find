USE [master]
GO
/****** Object:  Database [school-Lost-And-Find]    Script Date: 04/03/2019 22:16:34 ******/
CREATE DATABASE [school-Lost-And-Find] ON  PRIMARY 
( NAME = N'school-Lost-And-Find', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\school-Lost-And-Find.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'school-Lost-And-Find_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\school-Lost-And-Find_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [school-Lost-And-Find] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [school-Lost-And-Find].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [school-Lost-And-Find] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET ANSI_NULLS OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET ANSI_PADDING OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET ARITHABORT OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [school-Lost-And-Find] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [school-Lost-And-Find] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [school-Lost-And-Find] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET  ENABLE_BROKER
GO
ALTER DATABASE [school-Lost-And-Find] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [school-Lost-And-Find] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [school-Lost-And-Find] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [school-Lost-And-Find] SET  READ_WRITE
GO
ALTER DATABASE [school-Lost-And-Find] SET RECOVERY FULL
GO
ALTER DATABASE [school-Lost-And-Find] SET  MULTI_USER
GO
ALTER DATABASE [school-Lost-And-Find] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [school-Lost-And-Find] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'school-Lost-And-Find', N'ON'
GO
USE [school-Lost-And-Find]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/03/2019 22:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nickName] [nvarchar](max) NOT NULL,
	[headImg] [nvarchar](max) NULL,
	[realName] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[stuNumble] [nvarchar](20) NOT NULL,
	[college] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[contact] [nvarchar](max) NULL,
	[userInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [nickName], [headImg], [realName], [Gender], [stuNumble], [college], [password], [contact], [userInfo]) VALUES (1, N'风和树里', N'wu', N'王伟强', 1, N'20164186', N'信息', N'111', N'110', N'wu')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[LostItems]    Script Date: 04/03/2019 22:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LostItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[itemName] [nvarchar](max) NULL,
	[itemInfo] [nvarchar](max) NULL,
	[itemImg] [nvarchar](max) NULL,
	[UserID] [int] NOT NULL,
	[check] [int] NOT NULL,
	[type] [int] NOT NULL,
	[releaseTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.LostItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LostItems] ON
INSERT [dbo].[LostItems] ([ID], [itemName], [itemInfo], [itemImg], [UserID], [check], [type], [releaseTime]) VALUES (1, N'校园卡', N'信息学院李洋，20164198', N'wu', 1, 0, 0, CAST(0x0000AA24016E145F AS DateTime))
SET IDENTITY_INSERT [dbo].[LostItems] OFF
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 04/03/2019 22:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201904031412490_InitialCreate', N'LostAndFind_of_School.DAL.LostItemContext', 0x1F8B0800000000000400CD58CD6EDB3810BE2FB0EF20E8B40B24667E2EDD406EE1B5E385B171125469AF052D8D1CA214A925A9C07EB61EF691F6157668FD9AB21DFFA445E18B349CF966389CF938F27FDFFE0D3E2C52EEBD80D24C8ABE7FD9BBF03D10918C9998F7FDDC24E7EFFC0FEF7FFD25B88DD385F7B9D2BBB67A682974DF7F3626BB214447CF9052DD4B59A4A49689E94532253496E4EAE2E20F72794900217CC4F2BCE0632E0C4B61F582AF432922C84C4EF954C6C07529C7957085EADDD314744623E8FB77529B8188C74CC45F64F20515A4E4BDD1E0CEF7069C510C28049EF81E15421A6A30DC9B4F1A42A3A49887190A287F5A66807A09E51ACA6DDC34EAFBEEE8E2CAEE8834861554946B23D303012FAFCB1411D7FCA844FB750A3189B7986CB3B4BB5E25B2C8E1C440AA7DCFF57633E4CA6A6E4B747140BD1AE1CC6BE99DCBE4BCD03BAB6B054BCAFECEBC61CE4DAEA02F20378AA2C6633EE32CFA1B964FF22B88BEC8396F878D81E3DA9A00458F4A66A0CCF22324E5662623DF23EB76C435ACCD5A36C52E27C25C5FF9DE3D3AA7330E7555B432121AA9E02F10A0A881F8911A030A0F7512C32AAF1DEF8E2F8669B24F95472C456C2EDF9BD2C51D88B979EEFBF8E87B63B680B89294517C120C7B118D8CCA611F471391C81FE3289D7F773FD8B7EAF593DA8D81CD127D3D0DC2A0ED69080A38500D4FACA98211D652F1BE132B204DF3765B1A79D3508685E9F4B595C3C26CE86E4C69D9E0BA3C83F5C00BDC104C97299A400A8AEDB5D636855C07D7B03929E8BCA27DB285F78329CD322CA9D63D504ABCB0B80486E7E1E1B498161824D21BD8B18EB6F6845D4FE7E0ACA26B8C74CC943678827446ED810DE3B4A3E61EC5963457DEDC6CBBB4D724BFB2B0CF8DD5C61BB1B715AFC9E81837992291ADF60B755C3B6259598711E5546D60D5A1E4792AB631F32EEB8627DB188DF430A482085DA4427A209265BA0E9015EE8F5331591BA692ED8F5272591BA414ED8F5190591BA290EC8FB046666DA0B5852E5E409C92736B9C748ADCB9D5DDAED9453AAE4AEDBD261F876482B2E15F9F403B0C50A8F81E26EA85C5B6FBC3A5C622E959855EF80F1F7286FB6D14A654B004B429061F1F09EA9D33BDFE3C9324D13AE6FB8E933F7C7C6336ADAF0E68075ED7EEC4265EA88A9EA9FA2DA58BDFDB68C74C65A7833593D74958EBD3D52A91A7CC56C700B427AB63EC37CC5531968079EBB9AA7BE7BFC9D454F006C63CB3D551C47AFA50D5E5B180B4BFB7831168366F20ECD7B780C81244035AE9D8CAAD928EFB6B4754A93867320543F110E8401996D0C8E072045AAFBE103E539EA3CA6D3A8378221E7293E566A035A433BEF6191590DDFE5793E37ACCC14366DFF45B6C01C364B68E1EC49F39E3711DF778431D6D81B01553321246855F4808375FD648F752EC0954A66F041908CB674F90661CC1F48308E90B1C131B36FE1DCC69B4ACAEA3ED20AF1FC47ADA8311A37345535D6234F6F63F2462FF447AFF3F6495E4CA76120000, N'6.2.0-61023')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201904031412534_InitialCreate', N'LostAndFind_of_School.DAL.UserContext', 0x1F8B0800000000000400CD58CD6EE33610BE17E83B083CB5406239C9651B48BB70EDA4301A27C12ABBD7052D8D6C61295225A9D47EB61EFA487D850EAD3F5AB21D394E8AC2177934F3CDCC477266A87FFEFADBFBB44A99F30C522582FBE46230240EF05044095FF824D7F1F907F2E9E38F3F783751BA72BE567A57460F2DB9F2C952EBECDA7555B88494AA419A84522811EB4128529746C2BD1C0E7F712F2E5C400882588EE37DCEB94E52D8FCC1BF63C143C8744ED94C44C05429C737C106D5B9A729A88C86E0933BA1F48847B7098FBE89F81B2A08C10693D11D71462CA11850002C260EE55C68AA31DCEB2F0A022D055F04190A287B5A67807A31650ACA34AE1BF5BE190D2F4D466E63584185B9D2223D12F0E2AAA4C86D9BBF8A6852538824DE20D97A6DB2DE10E913244412A7EDE87ACCA451DAC771B13603637CE6582AE7223E2F54CEEA1D821BC9FCCE9C71CE742EC1E7906B4951E3319FB324FC1DD64FE23B709FE78CD9C162B8F86E4B80A2472932907AFD19E23285E98438EEB69DDB36ACCD2C9B22C129D75797C4B947E774CEA0DE0B16198116127E030E926A881EA9D6207129A7116CD8EC786FF9E249F8DD3C551E7103E29122CE8CAEEE802FF4D227F8489CDB6405512529A3F882C6C8B54FB4CC614794873D2F8146D374F1068E0FFB9140D91B6578D8112E4264F6EBE1A53B8CA1747E9FA7A87F20DACBE17B2C47281883C5FBB39451A5FE14327A7747A1E09A86FADDFDE45867A63C166FECC8739B72D82D9263935C8287DEAA9446062BBDA360E2DBB266AAD2D57646056600DA4253C46902289AD5A0A8C7BBA2ACE3695AA25BF4C4AA77BA7B9AA737A359868459CDB4943841D149C7E7C1F1BD252D30DC50ED683175B4B5272CA27401ADB7E81A23BD4DA4D213AAE99C9A251B476947CD667F0FB395279BE076F768F8AEB4CD7361B1779C2816A505D590788B79A5D80A3629421D4ED95B3B669B5186322A77B4A4B16079CAF7B5B543D64D93B1311A697FA4BA69D840B5B03F4ED3146CA046DA1FA9AAFA364E25EB8F62D57D1BC812F7C7AA2BB98D540BFBE33495DA066AA4C7445496E2ED884A617F9CA6D4DA408DB48BE4B9AD73D03E736EE7D0B586B5F6093E54FCDA2AB5F7BA08B68A9D57169E97AF139D4A54A81007297A4E22538582B5D2900E8CC220F8838D5982F9360A33CA9318942EE6599C22861F5A5791FFCFB5C0552A623DEE06FFF9409E18465F1CB98F1CBDDA33387FA6325C52F9534A573F9F3A57EF057BCDEC7C12D8F67CBC61F2D4E9B88AA7331F9F36FC9E94667BC03D09AC35C49E84D51E548F003B6E18ED4E4D2F8F9B7BA7CDA2CEF9249A9BC08B00CBF9F4958368B7E67AAEFDA1C79B804A160D84F9ECC32134C5AC01AD740CA115CF98911D51A5D25A8619681A213123A99318D7165F87A0D4E6CEF095B21C556ED2394453FE90EB2CD723A500F7FCD64DDE730FFBDF4CDBDB317B0F99F9A7DE22050C33C114E081FF9A272CAAE3BEED9EB57D10668F942514A3C23B13C22DD635D2BDE03D814AFA269099F2C2F513A4194330F5C003FA0CAF890DB7D71D2C68B8AE5AE77E909717629B766F92D085A4A92A311A7BF3F1D2355F2F3FFE0B396C8014EF140000, N'6.2.0-61023')
