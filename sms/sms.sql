USE [SMS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_mn_In__Invoi__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceDetails]'))
ALTER TABLE [dbo].[tbl_mn_InvoiceDetails] DROP CONSTRAINT [FK__tbl_mn_In__Invoi__21B6055D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbl_mn_Pr__Quant__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductDetailsModel] DROP CONSTRAINT [DF__tbl_mn_Pr__Quant__20C1E124]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbl_mn_Pr__Paren__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductDetailsModel] DROP CONSTRAINT [DF__tbl_mn_Pr__Paren__1FCDBCEB]
END
GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserModel]') AND type in (N'U'))
DROP TABLE [dbo].[UserModel]
GO
/****** Object:  Table [dbo].[UnitModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnitModel]') AND type in (N'U'))
DROP TABLE [dbo].[UnitModel]
GO
/****** Object:  Table [dbo].[SupplierModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupplierModel]') AND type in (N'U'))
DROP TABLE [dbo].[SupplierModel]
GO
/****** Object:  Table [dbo].[ProductDetailsModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDetailsModel]') AND type in (N'U'))
DROP TABLE [dbo].[ProductDetailsModel]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceIndex]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceIndex]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_InvoiceIndex]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceDetails]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_InvoiceDetails]
GO
/****** Object:  Table [dbo].[tbl_mn_Inventory]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_Inventory]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_Inventory]
GO
/****** Object:  Table [dbo].[GroupModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupModel]') AND type in (N'U'))
DROP TABLE [dbo].[GroupModel]
GO
/****** Object:  Table [dbo].[CustomerModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerModel]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerModel]
GO
/****** Object:  Table [dbo].[CompanyModel]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyModel]') AND type in (N'U'))
DROP TABLE [dbo].[CompanyModel]
GO
/****** Object:  Table [dbo].[tbl_lg_DetailLog]    Script Date: 6/19/2021 2:28:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_lg_DetailLog]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_lg_DetailLog]
GO
/****** Object:  Table [dbo].[tbl_lg_DetailLog]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lg_DetailLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[Module] [nvarchar](100) NOT NULL,
	[LogType] [nvarchar](50) NOT NULL,
	[LogMessage] [nvarchar](500) NOT NULL,
	[LogDetails] [nvarchar](2000) NOT NULL,
	[LoggedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyModel](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](200) NULL,
	[Country] [nvarchar](200) NULL,
	[City] [nvarchar](200) NULL,
	[State] [nvarchar](200) NULL,
	[PhoneNumber] [bigint] NULL,
	[PAN] [bigint] NULL,
	[Logo] [nvarchar](200) NULL,
	[StartDate] [nvarchar](200) NULL,
	[MobileNumber] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerModel](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[CustomerMobileNo] [bigint] NOT NULL,
	[CustomerVatNo] [bigint] NULL,
	[DueAmount] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupModel](
	[GroupId] [bigint] NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[GroupDescription] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_Inventory]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_Inventory](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceDetails]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_InvoiceDetails](
	[InvoiceDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ItemsCount] [int] NULL,
	[TotalQuantity] [int] NOT NULL,
	[GrandTotal] [bigint] NOT NULL,
	[TotalDiscount] [bigint] NOT NULL,
	[InvoiceId] [int] NULL,
	[InvoiceDate] [datetime] NULL,
	[InvoiceDetails] [nvarchar](max) NULL,
	[PartyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceIndex]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_InvoiceIndex](
	[InvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[FilePath] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatorId] [int] NULL,
	[InvoiceCategory] [nvarchar](20) NULL,
	[BillNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetailsModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetailsModel](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Price] [bigint] NULL,
	[ParentGroup] [int] NULL,
	[Quantity] [int] NULL,
	[Total] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierModel](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierAddress] [nvarchar](50) NULL,
	[SupplierMobileNo] [bigint] NOT NULL,
	[SupplierVatNo] [bigint] NULL,
	[DueAmount] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitModel](
	[UnitId] [bigint] NOT NULL,
	[UnitName] [nvarchar](20) NULL,
	[UnitShortName] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 6/19/2021 2:28:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserModel](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[MobileNo] [bigint] NULL,
	[Address] [nvarchar](50) NULL,
	[IsAdmin] [bit] NULL,
	[RegisterDate] [datetime] NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductDetailsModel] ADD  DEFAULT ((0)) FOR [ParentGroup]
GO
ALTER TABLE [dbo].[ProductDetailsModel] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[tbl_mn_InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[tbl_mn_InvoiceIndex] ([InvoiceId])
GO
