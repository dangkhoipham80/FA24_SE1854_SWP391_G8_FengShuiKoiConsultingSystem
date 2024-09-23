USE [SWP391]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[fullname] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone_number] [nvarchar](255) NULL,
	[gender] [bit] NOT NULL,
	[avatar] [nvarchar](255) NULL,
	[dob] [date] NULL,
	[code] [int] NULL,
	[status] [varchar](20) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](50) NOT NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](50) NULL,
 CONSTRAINT [PK__Member__B29B85348DCC0312] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_role]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_role](
	[account_id] [int] NOT NULL,
	[role_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalCategory]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalCategory](
	[animal_category_id] [int] IDENTITY(1,1) NOT NULL,
	[animal_category_name] [nvarchar](255) NOT NULL,
	[animal_image_id] [int] NULL,
	[color_list] [int] NULL,
	[discription] [nvarchar](1000) NULL,
	[origin] [nvarchar](255) NULL,
	[status] [bit] NOT NULL,
	[creat_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [animalcategory_animal_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[animal_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalImage]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalImage](
	[animal_image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_url] [varchar](255) NULL,
	[status] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
 CONSTRAINT [PK__AnimalIm__A6C1C08B22DC671E] PRIMARY KEY CLUSTERED 
(
	[animal_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[payment_id] [int] NOT NULL,
	[total_amount] [decimal](10, 2) NOT NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
 CONSTRAINT [PK__Bill__D706DDB383B7FBAF] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[content] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [comment_commentid_primary] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationAnimal]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationAnimal](
	[consultation_animal_id] [int] IDENTITY(1,1) NOT NULL,
	[consultation_id] [int] NULL,
	[color_list] [int] NULL,
	[quantity] [int] NULL,
	[animal_category_id] [int] NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_ConsultationAnimal] PRIMARY KEY CLUSTERED 
(
	[consultation_animal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationCategory]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationCategory](
	[consultation_category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [text] NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationRequest]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationRequest](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[request_date] [datetime] NULL,
	[description] [nvarchar](1000) NULL,
	[sub_amount] [decimal](18, 2) NULL,
	[VAT] [float] NULL,
	[VAT_amount] [decimal](18, 2) NULL,
	[total_amount] [nchar](10) NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_ConsultationRequest] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationRequestDetail]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationRequestDetail](
	[ConsultationRequestDetailId] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[shelter_category_id] [int] NULL,
	[animal_category_id] [int] NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_ConsultationRequestDetail] PRIMARY KEY CLUSTERED 
(
	[ConsultationRequestDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationResult]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationResult](
	[consultation_result_id] [int] IDENTITY(1,1) NOT NULL,
	[request_id] [int] NULL,
	[account_id] [int] NULL,
	[ConsultationRequestDetailId] [int] NULL,
	[consultation_category_id] [int] NULL,
	[animal_category_id] [int] NULL,
	[shelter_category_id] [int] NULL,
	[consultation_date] [datetime] NULL,
	[consultant_name] [nvarchar](500) NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__Consulta__650FE0FBC236618A] PRIMARY KEY CLUSTERED 
(
	[consultation_result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationShelter]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationShelter](
	[consultation_shelter_id] [int] IDENTITY(1,1) NOT NULL,
	[consultation_id] [int] NULL,
	[shelter_category_id] [int] NULL,
	[direction] [nvarchar](50) NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_ConsultationShelter] PRIMARY KEY CLUSTERED 
(
	[consultation_shelter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destiny]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destiny](
	[destiny_id] [int] IDENTITY(1,1) NOT NULL,
	[destiny] [nchar](10) NULL,
	[code] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[min_value] [int] NULL,
	[max_value] [int] NULL,
	[status] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](255) NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](255) NULL,
 CONSTRAINT [PK_Destiny] PRIMARY KEY CLUSTERED 
(
	[destiny_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DestinyYear]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestinyYear](
	[destiny_year_id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NULL,
	[destiny] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](255) NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](255) NULL,
 CONSTRAINT [PK_DestinyYear] PRIMARY KEY CLUSTERED 
(
	[destiny_year_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](100) NOT NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](100) NULL,
 CONSTRAINT [PK__Feedback__7A6B2B8CE30F9B68] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interaction]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction](
	[interaction_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[timestamp] [timestamp] NOT NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__Interact__605F8FE6A7B2C4B5] PRIMARY KEY CLUSTERED 
(
	[interaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](100) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[duration] [int] NOT NULL,
	[description] [text] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [PK__Package__63846AE82ED0134A] PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package_bill]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package_bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[package_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [varchar](50) NOT NULL,
	[payment_date] [datetime] NOT NULL,
	[payment_status] [varchar](20) NOT NULL,
	[status] [bit] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__Payment__ED1FC9EAD5EF78DD] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_category_id] [int] NOT NULL,
	[destiny] [nvarchar](50) NULL,
	[content] [text] NOT NULL,
	[like_number] [int] NOT NULL,
	[dislike_number] [int] NOT NULL,
	[share_number] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[creat_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [post_post_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[post_category_id] [int] IDENTITY(1,1) NOT NULL,
	[post_category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [postcategory_post_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostImage]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostImage](
	[post_image_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[image_name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [postimage_post_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [role_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterCategory]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterCategory](
	[shelter_category_id] [int] IDENTITY(1,1) NOT NULL,
	[shelter_image_id] [int] NULL,
	[shelter_category_name] [int] NOT NULL,
	[shape] [nvarchar](255) NULL,
	[width] [float] NULL,
	[height] [float] NULL,
	[length] [float] NULL,
	[diameter] [float] NULL,
	[water_volume] [float] NULL,
	[water_filtration_system] [nvarchar](255) NULL,
	[description] [nvarchar](1000) NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [sheltercategory_shelter_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterImage]    Script Date: 23/09/2024 18:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterImage](
	[shelter_image_id] [int] IDENTITY(1,1) NOT NULL,
	[shelter_id] [bigint] NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
	[created_date] [datetime] NOT NULL,
	[created_by] [nvarchar](300) NOT NULL,
	[updateted_date] [datetime] NOT NULL,
	[updateted_by] [nvarchar](300) NOT NULL,
 CONSTRAINT [shelterimage_shelter_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Destiny] ON 

INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (1, N'KIM       ', N'HUONG', N'Tây Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (2, N'KIM       ', N'HUONG', N'Tây Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (3, N'KIM       ', N'HUONG', N'Đông Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (4, N'KIM       ', N'HUONG', N'Tây', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (6, N'KIM       ', N'MAU', N'Trắng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (7, N'KIM       ', N'MAU', N'Xám', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (8, N'KIM       ', N'MAU', N'Nâu', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (9, N'KIM       ', N'MAU', N'Vàng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (11, N'KIM       ', N'SO', N'4', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (13, N'KIM       ', N'SO', N'9', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (14, N'THO       ', N'HUONG', N'Tây Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (16, N'THO       ', N'HUONG', N'Tây Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (17, N'THO       ', N'HUONG', N'Đông Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (18, N'THO       ', N'HUONG', N'Tây', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (19, N'THO       ', N'MAU', N'Đỏ', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (20, N'THO       ', N'MAU', N'Nâu', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (21, N'THO       ', N'MAU', N'Vàng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (22, N'THO       ', N'MAU', N'Hồng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (23, N'THO       ', N'SO', N'5', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (24, N'THO       ', N'SO', N'10', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (25, N'THUY      ', N'HUONG', N'Đông Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (26, N'THUY      ', N'HUONG', N'Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (27, N'THUY      ', N'HUONG', N'Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (28, N'THUY      ', N'HUONG', N'Đông', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (29, N'THUY      ', N'MAU', N'Đen', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (30, N'THUY      ', N'MAU', N'Xanh da trời', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (31, N'THUY      ', N'MAU', N'Trắng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (32, N'THUY      ', N'MAU', N'Xám', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (33, N'THUY      ', N'SO', N'1', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (34, N'THUY      ', N'SO', N'6', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (35, N'MOC       ', N'HUONG', N'Đông Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (36, N'MOC       ', N'HUONG', N'Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (37, N'MOC       ', N'HUONG', N'Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (38, N'MOC       ', N'HUONG', N'Đông', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (39, N'MOC       ', N'MAU', N'Đen', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (40, N'MOC       ', N'MAU', N'Xanh da trời', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (41, N'MOC       ', N'MAU', N'Xanh Lá', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (43, N'MOC       ', N'SO', N'3', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (44, N'MOC       ', N'SO', N'8', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (45, N'HOA       ', N'HUONG', N'Đông Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (46, N'HOA       ', N'HUONG', N'Bắc', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (47, N'HOA       ', N'HUONG', N'Nam', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (48, N'HOA       ', N'HUONG', N'Đông', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (49, N'HOA       ', N'MAU', N'Đỏ', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (50, N'HOA       ', N'MAU', N'Xanh Lá', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (51, N'HOA       ', N'MAU', N'Hồng', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (53, N'HOA       ', N'SO', N'2', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Destiny] ([destiny_id], [destiny], [code], [name], [min_value], [max_value], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (54, N'HOA       ', N'SO', N'7', 1, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Destiny] OFF
GO
SET IDENTITY_INSERT [dbo].[DestinyYear] ON 

INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (3, 1930, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (4, 1931, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (5, 1932, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (6, 1933, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (7, 1934, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (8, 1935, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (9, 1936, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (10, 1937, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (11, 1938, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (12, 1939, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (13, 1940, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (14, 1941, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (15, 1942, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (16, 1943, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (17, 1944, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (18, 1945, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (19, 1946, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (20, 1947, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (21, 1948, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (22, 1949, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (23, 1950, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (24, 1951, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (25, 1952, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (26, 1953, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (27, 1954, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (28, 1955, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (29, 1956, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (30, 1957, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (31, 1958, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (32, 1959, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (33, 1960, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (34, 1961, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (35, 1962, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (36, 1963, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (37, 1964, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (38, 1965, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (39, 1966, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (40, 1967, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (41, 1968, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (42, 1969, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (43, 1970, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (44, 1971, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (45, 1972, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (46, 1973, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (47, 1974, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (48, 1975, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (49, 1976, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (50, 1977, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (51, 1978, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (52, 1979, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (53, 1980, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (54, 1981, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (55, 1982, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (56, 1983, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (57, 1984, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (58, 1985, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (59, 1986, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (60, 1987, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (61, 1988, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (62, 1989, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (63, 1990, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (64, 1991, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (65, 1992, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (66, 1993, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (67, 1994, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (68, 1995, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (69, 1996, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (70, 1997, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (71, 1998, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (72, 1999, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (73, 2000, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (74, 2001, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (75, 2002, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (76, 2003, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (77, 2004, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (78, 2005, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (79, 2006, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (80, 2007, N'THO', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (81, 2008, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (82, 2009, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (83, 2010, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (84, 2011, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (85, 2012, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (86, 2013, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (87, 2014, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (88, 2015, N'KIM', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (89, 2016, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (90, 2017, N'HOA', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (91, 2018, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (92, 2019, N'MOC', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (93, 2020, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (94, 2021, N'THUY', 1, CAST(N'2024-09-23T17:27:10.353' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (95, 2022, N'KIM', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (96, 2023, N'KIM', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (97, 2024, N'HOA', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (98, 2025, N'HOA', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (99, 2026, N'THUY', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (100, 2027, N'THUY', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (101, 2028, N'THO', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
GO
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (102, 2029, N'THO', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
INSERT [dbo].[DestinyYear] ([destiny_year_id], [year], [destiny], [status], [created_date], [created_by], [updated_date], [updated_by]) VALUES (103, 2030, N'KIM', 1, CAST(N'2024-09-23T17:27:16.403' AS DateTime), N'admin', NULL, NULL)
SET IDENTITY_INSERT [dbo].[DestinyYear] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Member__AB6E616449763A80]    Script Date: 23/09/2024 18:17:12 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UQ__Member__AB6E616449763A80] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Member__F3DBC57297FADEC9]    Script Date: 23/09/2024 18:17:12 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UQ__Member__F3DBC57297FADEC9] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF__Feedback__create__7D439ABD]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [member_role_member_id_foreign] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [member_role_member_id_foreign]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [member_role_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [member_role_role_id_foreign]
GO
ALTER TABLE [dbo].[AnimalCategory]  WITH CHECK ADD  CONSTRAINT [FK_AnimalCategory_AnimalImage] FOREIGN KEY([animal_image_id])
REFERENCES [dbo].[AnimalImage] ([animal_image_id])
GO
ALTER TABLE [dbo].[AnimalCategory] CHECK CONSTRAINT [FK_AnimalCategory_AnimalImage]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__member_id__02084FDA] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__member_id__02084FDA]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__member_id__02FC7413] FOREIGN KEY([account_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__member_id__02FC7413]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [post_comment_id_foreign] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [post_comment_id_foreign]
GO
ALTER TABLE [dbo].[ConsultationAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationAnimal_AnimalCategory] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[AnimalCategory] ([animal_category_id])
GO
ALTER TABLE [dbo].[ConsultationAnimal] CHECK CONSTRAINT [FK_ConsultationAnimal_AnimalCategory]
GO
ALTER TABLE [dbo].[ConsultationAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationAnimal_Consultation] FOREIGN KEY([consultation_id])
REFERENCES [dbo].[ConsultationResult] ([consultation_result_id])
GO
ALTER TABLE [dbo].[ConsultationAnimal] CHECK CONSTRAINT [FK_ConsultationAnimal_Consultation]
GO
ALTER TABLE [dbo].[ConsultationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationRequest_Member] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[ConsultationRequest] CHECK CONSTRAINT [FK_ConsultationRequest_Member]
GO
ALTER TABLE [dbo].[ConsultationRequestDetail]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationRequestDetail_AnimalCategory] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[AnimalCategory] ([animal_category_id])
GO
ALTER TABLE [dbo].[ConsultationRequestDetail] CHECK CONSTRAINT [FK_ConsultationRequestDetail_AnimalCategory]
GO
ALTER TABLE [dbo].[ConsultationRequestDetail]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationRequestDetail_ConsultationRequest] FOREIGN KEY([request_id])
REFERENCES [dbo].[ConsultationRequest] ([request_id])
GO
ALTER TABLE [dbo].[ConsultationRequestDetail] CHECK CONSTRAINT [FK_ConsultationRequestDetail_ConsultationRequest]
GO
ALTER TABLE [dbo].[ConsultationRequestDetail]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationRequestDetail_ShelterCategory] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[ShelterCategory] ([shelter_category_id])
GO
ALTER TABLE [dbo].[ConsultationRequestDetail] CHECK CONSTRAINT [FK_ConsultationRequestDetail_ShelterCategory]
GO
ALTER TABLE [dbo].[ConsultationResult]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_ConsultationCategory] FOREIGN KEY([consultation_category_id])
REFERENCES [dbo].[ConsultationCategory] ([consultation_category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConsultationResult] CHECK CONSTRAINT [FK_Consultation_ConsultationCategory]
GO
ALTER TABLE [dbo].[ConsultationResult]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationResult_ConsultationRequest] FOREIGN KEY([request_id])
REFERENCES [dbo].[ConsultationRequest] ([request_id])
GO
ALTER TABLE [dbo].[ConsultationResult] CHECK CONSTRAINT [FK_ConsultationResult_ConsultationRequest]
GO
ALTER TABLE [dbo].[ConsultationResult]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationResult_ConsultationRequestDetail] FOREIGN KEY([ConsultationRequestDetailId])
REFERENCES [dbo].[ConsultationRequestDetail] ([ConsultationRequestDetailId])
GO
ALTER TABLE [dbo].[ConsultationResult] CHECK CONSTRAINT [FK_ConsultationResult_ConsultationRequestDetail]
GO
ALTER TABLE [dbo].[ConsultationResult]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationResult_Member] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[ConsultationResult] CHECK CONSTRAINT [FK_ConsultationResult_Member]
GO
ALTER TABLE [dbo].[ConsultationShelter]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationShelter_Consultation] FOREIGN KEY([consultation_id])
REFERENCES [dbo].[ConsultationResult] ([consultation_result_id])
GO
ALTER TABLE [dbo].[ConsultationShelter] CHECK CONSTRAINT [FK_ConsultationShelter_Consultation]
GO
ALTER TABLE [dbo].[ConsultationShelter]  WITH CHECK ADD  CONSTRAINT [FK_ConsultationShelter_ShelterCategory] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[ShelterCategory] ([shelter_category_id])
GO
ALTER TABLE [dbo].[ConsultationShelter] CHECK CONSTRAINT [FK_ConsultationShelter_ShelterCategory]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Member] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Member]
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD  CONSTRAINT [FK__Interacti__post___0C85DE4D] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[Interaction] CHECK CONSTRAINT [FK__Interacti__post___0C85DE4D]
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD  CONSTRAINT [FK_Interaction_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Interaction] CHECK CONSTRAINT [FK_Interaction_Account]
GO
ALTER TABLE [dbo].[package_bill]  WITH CHECK ADD  CONSTRAINT [package_bill_bill_id_foreign] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([bill_id])
GO
ALTER TABLE [dbo].[package_bill] CHECK CONSTRAINT [package_bill_bill_id_foreign]
GO
ALTER TABLE [dbo].[package_bill]  WITH CHECK ADD  CONSTRAINT [package_bill_package_id_foreign] FOREIGN KEY([package_id])
REFERENCES [dbo].[Package] ([package_id])
GO
ALTER TABLE [dbo].[package_bill] CHECK CONSTRAINT [package_bill_package_id_foreign]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [post_post_category_id_foreign] FOREIGN KEY([post_category_id])
REFERENCES [dbo].[PostCategory] ([post_category_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [post_post_category_id_foreign]
GO
ALTER TABLE [dbo].[PostImage]  WITH CHECK ADD  CONSTRAINT [FK_PostImage_post] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[PostImage] CHECK CONSTRAINT [FK_PostImage_post]
GO
ALTER TABLE [dbo].[ShelterCategory]  WITH CHECK ADD  CONSTRAINT [FK_ShelterCategory_ShelterImage] FOREIGN KEY([shelter_image_id])
REFERENCES [dbo].[ShelterImage] ([shelter_image_id])
GO
ALTER TABLE [dbo].[ShelterCategory] CHECK CONSTRAINT [FK_ShelterCategory_ShelterImage]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [CK__Member__gender__19DFD96B] CHECK  (([gender]='Other' OR [gender]='Female' OR [gender]='Male'))
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [CK__Member__gender__19DFD96B]
GO
