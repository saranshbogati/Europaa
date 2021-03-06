USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUser]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertUser]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSupplier]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertSupplier]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertSupplier]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProductGroup]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertProductGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertProductGroup]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProduct]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertProduct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertProduct]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_mn_In__Invoi__21B6055D]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceDetails]'))
ALTER TABLE [dbo].[tbl_mn_InvoiceDetails] DROP CONSTRAINT [FK__tbl_mn_In__Invoi__21B6055D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbl_mn_Pr__Quant__20C1E124]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_mn_ProductDetails] DROP CONSTRAINT [DF__tbl_mn_Pr__Quant__20C1E124]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbl_mn_Pr__Paren__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_mn_ProductDetails] DROP CONSTRAINT [DF__tbl_mn_Pr__Paren__1FCDBCEB]
END
GO
/****** Object:  Table [dbo].[tbl_mn_User]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_User]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_User]
GO
/****** Object:  Table [dbo].[tbl_mn_Supplier]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_Supplier]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_Supplier]
GO
/****** Object:  Table [dbo].[tbl_mn_ProductDetails]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_ProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_ProductDetails]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceIndex]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceIndex]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_InvoiceIndex]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceDetails]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_InvoiceDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_InvoiceDetails]
GO
/****** Object:  Table [dbo].[tbl_mn_Inventory]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_Inventory]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_Inventory]
GO
/****** Object:  Table [dbo].[tbl_mn_Customer]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_Customer]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_Customer]
GO
/****** Object:  Table [dbo].[tbl_mn_Company]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_mn_Company]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_mn_Company]
GO
/****** Object:  Table [dbo].[tbl_lg_DetailLog]    Script Date: 3/15/2021 6:44:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_lg_DetailLog]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_lg_DetailLog]
GO
/****** Object:  Table [dbo].[tbl_lg_DetailLog]    Script Date: 3/15/2021 6:44:19 PM ******/
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
/****** Object:  Table [dbo].[tbl_mn_Company]    Script Date: 3/15/2021 6:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_Company](
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
/****** Object:  Table [dbo].[tbl_mn_Customer]    Script Date: 3/15/2021 6:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[CustomerMobileNo] [bigint] NOT NULL,
	[CustomerVatNo] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_Inventory]    Script Date: 3/15/2021 6:44:19 PM ******/
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
/****** Object:  Table [dbo].[tbl_mn_InvoiceDetails]    Script Date: 3/15/2021 6:44:19 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_InvoiceIndex]    Script Date: 3/15/2021 6:44:19 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_ProductDetails]    Script Date: 3/15/2021 6:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_ProductDetails](
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
/****** Object:  Table [dbo].[tbl_mn_Supplier]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierAddress] [nvarchar](50) NULL,
	[SupplierMobileNo] [bigint] NOT NULL,
	[SupplierVatNo] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_mn_User]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_mn_User](
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
ALTER TABLE [dbo].[tbl_mn_ProductDetails] ADD  DEFAULT ((0)) FOR [ParentGroup]
GO
ALTER TABLE [dbo].[tbl_mn_ProductDetails] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[tbl_mn_InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[tbl_mn_InvoiceIndex] ([InvoiceId])

INSERT INTO tbl_mn_User (Username,[Password],IsAdmin,RegisterDate,MobileNo,[Address]) VALUES ('admin','ss',1,GETDATE(),0000000000,'')
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProduct]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saransh Bogati
-- Create date: 7/10/2020
-- Description:	Inserts products into table 
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertProduct]
	@productName nvarchar(20),
	@unit nvarchar(50),
	@price bigint,
	@parentGroup int,
	@oStatus bit OUTPUT,
	@oMessage nvarchar(max) OUTPUT
AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @oStatus = 0;
	SET @oMessage = ' ';
	 BEGIN TRY
		insert into tbl_mn_ProductDetails 
		(ProductName,
		Unit,
		Price,
		ParentGroup)
		values
		(@productName,
		@unit,
		@price,
		@parentGroup)
	 END TRY
	 BEGIN CATCH
	 SET @oStatus = 0;
	SET @oMessage = 'ERROR_NUMBER: ' + CONVERT(nvarchar, ERROR_NUMBER()) + ' | ERROR_STATE: ' +  CONVERT(nvarchar, ERROR_STATE()) + ' | ' + 
						'ERROR_SEVERITY: ' + CONVERT(nvarchar, ERROR_SEVERITY()) + ' | ERROR_PROCEDURE: ' +  + ERROR_PROCEDURE() + ' | ' + 
						'ERROR_LINE: ' + CONVERT(nvarchar, ERROR_LINE()) + ' | ERROR_MESSAGE: ' +  + ERROR_MESSAGE() ;
	RETURN;	
	 END CATCH
	 --insert successful
	 set @oMessage = 'ADD SUCCESSFUL';
	 set @oStatus = 1;

    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProductGroup]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saransh Bogati
-- Create date: 7/10/2020
-- Description:	Inserts products into table 
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertProductGroup]
	@name nvarchar(50),
	@unit nvarchar(50),
	@oStatus bit OUTPUT,
	@oMessage nvarchar(max) OUTPUT
AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @oStatus = 0;
	SET @oMessage = ' ';
	 BEGIN TRY
		insert into tbl_mn_ProductGroup
		(GroupName,
		Unit)
		values
		(@name,
		@unit)
	 END TRY
	 BEGIN CATCH
	 SET @oStatus = 0;
	SET @oMessage = 'ERROR_NUMBER: ' + CONVERT(nvarchar, ERROR_NUMBER()) + ' | ERROR_STATE: ' +  CONVERT(nvarchar, ERROR_STATE()) + ' | ' + 
						'ERROR_SEVERITY: ' + CONVERT(nvarchar, ERROR_SEVERITY()) + ' | ERROR_PROCEDURE: ' +  + ERROR_PROCEDURE() + ' | ' + 
						'ERROR_LINE: ' + CONVERT(nvarchar, ERROR_LINE()) + ' | ERROR_MESSAGE: ' +  + ERROR_MESSAGE() ;
	RETURN;	
	 END CATCH
	 --insert successful
	 set @oMessage = 'ADD SUCCESSFUL';
	 set @oStatus = 1;

    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSupplier]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saransh Bogati
-- Create date: 7/10/2020
-- Description:	Inserts products into table 
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertSupplier]
	@name nvarchar(50),
	@address nvarchar(100),
	@mobileNo bigint,
	@vatNo bigint,
	@oStatus bit OUTPUT,
	@oMessage nvarchar(max) OUTPUT
AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @oStatus = 0;
	SET @oMessage = ' ';
	 BEGIN TRY
		insert into tbl_mn_Supplier 
		(SupplierName,
		SupplierAddress,
		SupplierMobileNo,
		SupplierVatNo)
		values
		(@name,
		@address,
		@mobileNo,
		@vatNo)
	 END TRY
	 BEGIN CATCH
	 SET @oStatus = 0;
	SET @oMessage = 'ERROR_NUMBER: ' + CONVERT(nvarchar, ERROR_NUMBER()) + ' | ERROR_STATE: ' +  CONVERT(nvarchar, ERROR_STATE()) + ' | ' + 
						'ERROR_SEVERITY: ' + CONVERT(nvarchar, ERROR_SEVERITY()) + ' | ERROR_PROCEDURE: ' +  + ERROR_PROCEDURE() + ' | ' + 
						'ERROR_LINE: ' + CONVERT(nvarchar, ERROR_LINE()) + ' | ERROR_MESSAGE: ' +  + ERROR_MESSAGE() ;
	RETURN;	
	 END CATCH
	 --insert successful
	 set @oMessage = 'ADD SUCCESSFUL';
	 set @oStatus = 1;

    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUser]    Script Date: 3/15/2021 6:44:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saransh Bogati
-- Create date: 6/10/2020
-- Description:	Inserts user into table 
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUser]
	@userName nvarchar(20),
	@passWord nvarchar(20),
	@mobileNo bigint,
	@address nvarchar(50),
	@oStatus bit OUTPUT,
	@oMessage nvarchar(max) OUTPUT
AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @oStatus = 0;
	SET @oMessage = ' ';
	 BEGIN TRY
		insert into tbl_mn_User 
		(Username,
		Password,
		MobileNo,
		Address,
		IsAdmin,
		RegisterDate)
		values
		(@userName,
		@passWord,
		@mobileNo,
		@address,
		0,
		GETDATE())
	 END TRY
	 BEGIN CATCH
	 SET @oStatus = 0;
	SET @oMessage = 'ERROR_NUMBER: ' + CONVERT(nvarchar, ERROR_NUMBER()) + ' | ERROR_STATE: ' +  CONVERT(nvarchar, ERROR_STATE()) + ' | ' + 
						'ERROR_SEVERITY: ' + CONVERT(nvarchar, ERROR_SEVERITY()) + ' | ERROR_PROCEDURE: ' +  + ERROR_PROCEDURE() + ' | ' + 
						'ERROR_LINE: ' + CONVERT(nvarchar, ERROR_LINE()) + ' | ERROR_MESSAGE: ' +  + ERROR_MESSAGE() ;
	RETURN;	
	 END CATCH
	 --insert successful
	 set @oMessage = 'ADD SUCCESSFUL';
	 set @oStatus = 1;

    
END
GO
