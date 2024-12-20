USE [FengShuiKoi]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [varchar](max) NULL,
	[code] [varchar](255) NULL,
	[created_by] [varchar](50) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[dob] [date] NULL,
	[email] [nvarchar](255) NULL,
	[fcm_token] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[updated_by] [varchar](50) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[username] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_role]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_role](
	[account_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[animal_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal_category](
	[animal_category_id] [int] IDENTITY(1,1) NOT NULL,
	[animal_category_name] [varchar](255) NOT NULL,
	[created_by] [varchar](255) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [varchar](1000) NULL,
	[origin] [varchar](255) NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [varchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[animal_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[animal_color]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal_color](
	[animal_category_id] [int] NOT NULL,
	[color_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[animal_category_id] ASC,
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[animal_image]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal_image](
	[animal_image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_url] [varchar](max) NULL,
	[animal_category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[animal_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [varchar](50) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[status] [varchar](255) NULL,
	[sub_amount] [numeric](38, 2) NULL,
	[total_amount] [numeric](10, 2) NOT NULL,
	[updated_by] [nvarchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[vat] [numeric](38, 2) NULL,
	[vat_amount] [numeric](38, 2) NULL,
	[account_id] [int] NOT NULL,
	[consultation_request_id] [int] NOT NULL,
	[payment_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color] [nvarchar](50) NULL,
	[created_by] [nvarchar](50) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[status] [varchar](255) NULL,
	[updated_by] [nvarchar](50) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[destiny_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NOT NULL,
	[created_by] [nvarchar](255) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[status] [varchar](255) NULL,
	[updated_by] [nvarchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[post_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_animal]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_animal](
	[consultation_animal_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [varchar](300) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[description] [nvarchar](4000) NOT NULL,
	[status] [varchar](255) NULL,
	[updated_by] [varchar](300) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[animal_category_id] [int] NULL,
	[consultation_result_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_animal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_animal_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_animal_category](
	[consultation_request_detail_id] [int] NOT NULL,
	[animal_category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_request_detail_id] ASC,
	[animal_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_category](
	[consultation_category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[status] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_request]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[full_name] [varchar](100) NOT NULL,
	[gender] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [nvarchar](300) NOT NULL,
	[updated_date] [datetimeoffset](6) NOT NULL,
	[yob] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[package_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_request_detail]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_request_detail](
	[consultation_request_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [nvarchar](300) NOT NULL,
	[updated_date] [datetimeoffset](6) NOT NULL,
	[consultation_request_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_request_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_result]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_result](
	[consultation_result_id] [int] IDENTITY(1,1) NOT NULL,
	[consultant_name] [nvarchar](500) NULL,
	[consultation_date] [datetimeoffset](6) NULL,
	[created_by] [varchar](300) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[description] [nvarchar](4000) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [varchar](300) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[account_id] [int] NULL,
	[consultation_category_id] [int] NULL,
	[request_request_id] [int] NULL,
	[request_detail_consultation_request_detail_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_shelter]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_shelter](
	[consultation_shelter_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[status] [varchar](255) NULL,
	[updated_by] [nvarchar](300) NOT NULL,
	[updated_date] [datetimeoffset](6) NOT NULL,
	[consultation_result_id] [int] NULL,
	[shelter_category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_shelter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultation_shelter_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultation_shelter_category](
	[shelter_category_id] [int] NOT NULL,
	[consultation_request_detail_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shelter_category_id] ASC,
	[consultation_request_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destiny]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destiny](
	[destiny_id] [int] IDENTITY(1,1) NOT NULL,
	[destiny] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[destiny_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direction]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direction](
	[direction_id] [int] IDENTITY(1,1) NOT NULL,
	[direction] [nvarchar](50) NULL,
	[destiny_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[direction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invalidated_token]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invalidated_token](
	[id] [varchar](255) NOT NULL,
	[expiry_time] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[number]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[number](
	[number_id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NULL,
	[destiny_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[number_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](255) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [varchar](max) NULL,
	[package_name] [varchar](100) NOT NULL,
	[price] [numeric](10, 2) NOT NULL,
	[status] [varchar](255) NULL,
	[updated_by] [nvarchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package_bill]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package_bill](
	[package_id] [int] NOT NULL,
	[bill_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[package_id] ASC,
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[payment_method] [varchar](50) NOT NULL,
	[payment_status] [varchar](20) NOT NULL,
	[status] [varchar](255) NULL,
	[updated_by] [nvarchar](300) NOT NULL,
	[updated_date] [datetimeoffset](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](max) NULL,
	[created_by] [nvarchar](255) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[dislike_number] [int] NOT NULL,
	[like_number] [int] NOT NULL,
	[share_number] [int] NOT NULL,
	[status] [varchar](255) NULL,
	[title] [varchar](255) NOT NULL,
	[updated_by] [nvarchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[account_account_id] [int] NULL,
	[destiny_id] [int] NULL,
	[package_id_package_id] [int] NULL,
	[post_category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_category](
	[post_category_id] [int] IDENTITY(1,1) NOT NULL,
	[post_category_name] [nvarchar](255) NOT NULL,
	[status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[post_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_image]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_image](
	[post_image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_url] [nvarchar](max) NOT NULL,
	[post_post_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shape]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shape](
	[shape_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](50) NULL,
	[created_date] [datetimeoffset](6) NULL,
	[shape] [nvarchar](50) NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [nvarchar](50) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[destiny_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shape_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shelter_category]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shelter_category](
	[shelter_category_id] [int] IDENTITY(1,1) NOT NULL,
	[created_by] [nvarchar](255) NOT NULL,
	[created_date] [datetimeoffset](6) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[diameter] [float] NULL,
	[height] [float] NULL,
	[length] [float] NULL,
	[shelter_category_name] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[updated_by] [nvarchar](255) NULL,
	[updated_date] [datetimeoffset](6) NULL,
	[water_filtration_system] [nvarchar](255) NULL,
	[water_volume] [float] NULL,
	[width] [float] NULL,
	[shape_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shelter_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shelter_image]    Script Date: 11/17/2024 3:41:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shelter_image](
	[shelter_image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_url] [varchar](max) NULL,
	[shelter_category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shelter_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [FK1f8y4iy71kb1arff79s71j0dh] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [FK1f8y4iy71kb1arff79s71j0dh]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [FKrs2s3m3039h0xt8d5yhwbuyam] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [FKrs2s3m3039h0xt8d5yhwbuyam]
GO
ALTER TABLE [dbo].[animal_color]  WITH CHECK ADD  CONSTRAINT [FK8e5p8tepvj29rrlrmtyqyeu19] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([color_id])
GO
ALTER TABLE [dbo].[animal_color] CHECK CONSTRAINT [FK8e5p8tepvj29rrlrmtyqyeu19]
GO
ALTER TABLE [dbo].[animal_color]  WITH CHECK ADD  CONSTRAINT [FKm2wup2swdg9jlp1ntinbnpjbg] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[animal_category] ([animal_category_id])
GO
ALTER TABLE [dbo].[animal_color] CHECK CONSTRAINT [FKm2wup2swdg9jlp1ntinbnpjbg]
GO
ALTER TABLE [dbo].[animal_image]  WITH CHECK ADD  CONSTRAINT [FKs8peu47u7j3wqm5onkcdrl1v5] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[animal_category] ([animal_category_id])
GO
ALTER TABLE [dbo].[animal_image] CHECK CONSTRAINT [FKs8peu47u7j3wqm5onkcdrl1v5]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK1ux0g7apuj5q465cl4y37abmy] FOREIGN KEY([consultation_request_id])
REFERENCES [dbo].[consultation_request] ([request_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK1ux0g7apuj5q465cl4y37abmy]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKgpfluataee5ad31ijyu9jfvms] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKgpfluataee5ad31ijyu9jfvms]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FKivsv2kk65fwd2wf855n0bjqvw] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FKivsv2kk65fwd2wf855n0bjqvw]
GO
ALTER TABLE [dbo].[color]  WITH CHECK ADD  CONSTRAINT [FKqqua7sko8gnrndutf9etdegs6] FOREIGN KEY([destiny_id])
REFERENCES [dbo].[destiny] ([destiny_id])
GO
ALTER TABLE [dbo].[color] CHECK CONSTRAINT [FKqqua7sko8gnrndutf9etdegs6]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKs1slvnkuemjsq2kj4h3vhx7i1] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKs1slvnkuemjsq2kj4h3vhx7i1]
GO
ALTER TABLE [dbo].[consultation_animal]  WITH CHECK ADD  CONSTRAINT [FK138gu0x1e3h1yh59w516uirnb] FOREIGN KEY([consultation_result_id])
REFERENCES [dbo].[consultation_result] ([consultation_result_id])
GO
ALTER TABLE [dbo].[consultation_animal] CHECK CONSTRAINT [FK138gu0x1e3h1yh59w516uirnb]
GO
ALTER TABLE [dbo].[consultation_animal]  WITH CHECK ADD  CONSTRAINT [FKog13b4t9uy8yjrmuknb5gwb53] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[animal_category] ([animal_category_id])
GO
ALTER TABLE [dbo].[consultation_animal] CHECK CONSTRAINT [FKog13b4t9uy8yjrmuknb5gwb53]
GO
ALTER TABLE [dbo].[consultation_animal_category]  WITH CHECK ADD  CONSTRAINT [FK39r4kdnknotdcba82s66so85e] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[animal_category] ([animal_category_id])
GO
ALTER TABLE [dbo].[consultation_animal_category] CHECK CONSTRAINT [FK39r4kdnknotdcba82s66so85e]
GO
ALTER TABLE [dbo].[consultation_animal_category]  WITH CHECK ADD  CONSTRAINT [FKncamc81pj9nue3qtv3amx3oxc] FOREIGN KEY([consultation_request_detail_id])
REFERENCES [dbo].[consultation_request_detail] ([consultation_request_detail_id])
GO
ALTER TABLE [dbo].[consultation_animal_category] CHECK CONSTRAINT [FKncamc81pj9nue3qtv3amx3oxc]
GO
ALTER TABLE [dbo].[consultation_request]  WITH CHECK ADD  CONSTRAINT [FK9ptmduu0jj3vvnqs0wthfu68l] FOREIGN KEY([package_id])
REFERENCES [dbo].[package] ([package_id])
GO
ALTER TABLE [dbo].[consultation_request] CHECK CONSTRAINT [FK9ptmduu0jj3vvnqs0wthfu68l]
GO
ALTER TABLE [dbo].[consultation_request]  WITH CHECK ADD  CONSTRAINT [FKqevlvu361piejedvtdkl1stfi] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[consultation_request] CHECK CONSTRAINT [FKqevlvu361piejedvtdkl1stfi]
GO
ALTER TABLE [dbo].[consultation_request_detail]  WITH CHECK ADD  CONSTRAINT [FKrd7abdk5xnxjheq5ntlj0dgo5] FOREIGN KEY([consultation_request_id])
REFERENCES [dbo].[consultation_request] ([request_id])
GO
ALTER TABLE [dbo].[consultation_request_detail] CHECK CONSTRAINT [FKrd7abdk5xnxjheq5ntlj0dgo5]
GO
ALTER TABLE [dbo].[consultation_result]  WITH CHECK ADD  CONSTRAINT [FKnvsunqq4vuc73l4goyp39xa66] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[consultation_result] CHECK CONSTRAINT [FKnvsunqq4vuc73l4goyp39xa66]
GO
ALTER TABLE [dbo].[consultation_result]  WITH CHECK ADD  CONSTRAINT [FKpnb60yhu4iuw12xb0wpiua9ho] FOREIGN KEY([request_detail_consultation_request_detail_id])
REFERENCES [dbo].[consultation_request_detail] ([consultation_request_detail_id])
GO
ALTER TABLE [dbo].[consultation_result] CHECK CONSTRAINT [FKpnb60yhu4iuw12xb0wpiua9ho]
GO
ALTER TABLE [dbo].[consultation_result]  WITH CHECK ADD  CONSTRAINT [FKsfpol65y4gmye17gb4digbj47] FOREIGN KEY([consultation_category_id])
REFERENCES [dbo].[consultation_category] ([consultation_category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[consultation_result] CHECK CONSTRAINT [FKsfpol65y4gmye17gb4digbj47]
GO
ALTER TABLE [dbo].[consultation_result]  WITH CHECK ADD  CONSTRAINT [FKtridyub6hugxwskt2eim0n566] FOREIGN KEY([request_request_id])
REFERENCES [dbo].[consultation_request] ([request_id])
GO
ALTER TABLE [dbo].[consultation_result] CHECK CONSTRAINT [FKtridyub6hugxwskt2eim0n566]
GO
ALTER TABLE [dbo].[consultation_shelter]  WITH CHECK ADD  CONSTRAINT [FK59qi48rn5m7efp6kl8xbey5ns] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[shelter_category] ([shelter_category_id])
GO
ALTER TABLE [dbo].[consultation_shelter] CHECK CONSTRAINT [FK59qi48rn5m7efp6kl8xbey5ns]
GO
ALTER TABLE [dbo].[consultation_shelter]  WITH CHECK ADD  CONSTRAINT [FK91wgrbue6sxxay3tftkwm0psj] FOREIGN KEY([consultation_result_id])
REFERENCES [dbo].[consultation_result] ([consultation_result_id])
GO
ALTER TABLE [dbo].[consultation_shelter] CHECK CONSTRAINT [FK91wgrbue6sxxay3tftkwm0psj]
GO
ALTER TABLE [dbo].[consultation_shelter_category]  WITH CHECK ADD  CONSTRAINT [FK6xdeu53ho2i2dg0ydt9ctb56o] FOREIGN KEY([consultation_request_detail_id])
REFERENCES [dbo].[consultation_request_detail] ([consultation_request_detail_id])
GO
ALTER TABLE [dbo].[consultation_shelter_category] CHECK CONSTRAINT [FK6xdeu53ho2i2dg0ydt9ctb56o]
GO
ALTER TABLE [dbo].[consultation_shelter_category]  WITH CHECK ADD  CONSTRAINT [FKj4v3c3993uc5rb65bn6lgrdom] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[shelter_category] ([shelter_category_id])
GO
ALTER TABLE [dbo].[consultation_shelter_category] CHECK CONSTRAINT [FKj4v3c3993uc5rb65bn6lgrdom]
GO
ALTER TABLE [dbo].[direction]  WITH CHECK ADD  CONSTRAINT [FKt4vdtxceht98j7rkn6ycqo1x4] FOREIGN KEY([destiny_id])
REFERENCES [dbo].[destiny] ([destiny_id])
GO
ALTER TABLE [dbo].[direction] CHECK CONSTRAINT [FKt4vdtxceht98j7rkn6ycqo1x4]
GO
ALTER TABLE [dbo].[number]  WITH CHECK ADD  CONSTRAINT [FKkliqot54bsmsq50onfh9bnbfe] FOREIGN KEY([destiny_id])
REFERENCES [dbo].[destiny] ([destiny_id])
GO
ALTER TABLE [dbo].[number] CHECK CONSTRAINT [FKkliqot54bsmsq50onfh9bnbfe]
GO
ALTER TABLE [dbo].[package_bill]  WITH CHECK ADD  CONSTRAINT [FK7wvlrf3xua7op83xfscthkfkl] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([bill_id])
GO
ALTER TABLE [dbo].[package_bill] CHECK CONSTRAINT [FK7wvlrf3xua7op83xfscthkfkl]
GO
ALTER TABLE [dbo].[package_bill]  WITH CHECK ADD  CONSTRAINT [FKjuvpbviksqtetbbmtkl20dao8] FOREIGN KEY([package_id])
REFERENCES [dbo].[package] ([package_id])
GO
ALTER TABLE [dbo].[package_bill] CHECK CONSTRAINT [FKjuvpbviksqtetbbmtkl20dao8]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK48quhhkoy1ewh4htw0oc50a3c] FOREIGN KEY([destiny_id])
REFERENCES [dbo].[destiny] ([destiny_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK48quhhkoy1ewh4htw0oc50a3c]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK59u555l1rdj2adjmxswcsni84] FOREIGN KEY([post_category_id])
REFERENCES [dbo].[post_category] ([post_category_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK59u555l1rdj2adjmxswcsni84]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FKdqm9dwwa2xlwlbwqfj1x8yyov] FOREIGN KEY([account_account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FKdqm9dwwa2xlwlbwqfj1x8yyov]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FKfjcmxldv6pjvuinfrhbjspoef] FOREIGN KEY([package_id_package_id])
REFERENCES [dbo].[package] ([package_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FKfjcmxldv6pjvuinfrhbjspoef]
GO
ALTER TABLE [dbo].[post_image]  WITH CHECK ADD  CONSTRAINT [FKmh35ffoop5wf2a04tdy0o9v8t] FOREIGN KEY([post_post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[post_image] CHECK CONSTRAINT [FKmh35ffoop5wf2a04tdy0o9v8t]
GO
ALTER TABLE [dbo].[shape]  WITH CHECK ADD  CONSTRAINT [FKs3u3yy8ov6t3k59rgc1wpa22e] FOREIGN KEY([destiny_id])
REFERENCES [dbo].[destiny] ([destiny_id])
GO
ALTER TABLE [dbo].[shape] CHECK CONSTRAINT [FKs3u3yy8ov6t3k59rgc1wpa22e]
GO
ALTER TABLE [dbo].[shelter_category]  WITH CHECK ADD  CONSTRAINT [FKkodn58nhyd9mh3xb8nyybyswt] FOREIGN KEY([shape_id])
REFERENCES [dbo].[shape] ([shape_id])
GO
ALTER TABLE [dbo].[shelter_category] CHECK CONSTRAINT [FKkodn58nhyd9mh3xb8nyybyswt]
GO
ALTER TABLE [dbo].[shelter_image]  WITH CHECK ADD  CONSTRAINT [FKhnq28rsr7btm52vh5p6btnx5u] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[shelter_category] ([shelter_category_id])
GO
ALTER TABLE [dbo].[shelter_image] CHECK CONSTRAINT [FKhnq28rsr7btm52vh5p6btnx5u]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD CHECK  (([gender]='OTHER' OR [gender]='FEMALE' OR [gender]='MALE'))
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[animal_category]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='PAID' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[color]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[consultation_animal]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='COMPLETED' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[consultation_category]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[consultation_request]  WITH CHECK ADD CHECK  (([gender]='OTHER' OR [gender]='FEMALE' OR [gender]='MALE'))
GO
ALTER TABLE [dbo].[consultation_request]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='COMPLETED' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[consultation_request_detail]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='COMPLETED' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[consultation_result]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='COMPLETED' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[consultation_shelter]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='COMPLETED' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[package]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD CHECK  (([payment_status]='DELETED' OR [payment_status]='INACTIVE' OR [payment_status]='ACTIVE'))
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[post_category]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[shape]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[shelter_category]  WITH CHECK ADD CHECK  (([status]='DELETED' OR [status]='INACTIVE' OR [status]='ACTIVE'))
GO
