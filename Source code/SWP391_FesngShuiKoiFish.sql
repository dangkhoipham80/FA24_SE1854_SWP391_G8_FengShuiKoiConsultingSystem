USE [SWP391]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
	[account_name] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[email] [nvarchar](1) NOT NULL,
	[code] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [account_account_id_primary] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[animal_id] [bigint] NOT NULL,
	[color_id] [bigint] NOT NULL,
	[animal_name] [nvarchar](255) NOT NULL,
	[animal_category_id] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [animal_animal_id_primary] PRIMARY KEY CLUSTERED 
(
	[animal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalCategory]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalCategory](
	[animal_category_id] [bigint] NOT NULL,
	[animal_category_name] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[creat_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [animalcategory_animal_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[animal_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalImage]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalImage](
	[animal_image_id] [int] IDENTITY(1,1) NOT NULL,
	[animal_id] [bigint] NULL,
	[image_url] [varchar](255) NULL,
	[status] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[animal_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[member_id] [int] NULL,
	[payment_id] [int] NULL,
	[total_amount] [decimal](10, 2) NULL,
	[created_date] [datetime] NULL,
	[created_by] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [bigint] NOT NULL,
	[post_id] [bigint] NOT NULL,
	[content] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [comment_commentid_primary] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultation]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultation](
	[consultation_id] [int] IDENTITY(1,1) NOT NULL,
	[consultation_category_id] [int] NULL,
	[consultation_content] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationCategory]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationCategory](
	[consultation_category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[consultation_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Element]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Element](
	[element_id] [bigint] NOT NULL,
	[element_name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElementColor]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementColor](
	[color_id] [bigint] NOT NULL,
	[element_id] [bigint] NULL,
	[color_name] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [fishcolor_color_id_primary] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElementDirection]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementDirection](
	[direction_id] [int] IDENTITY(1,1) NOT NULL,
	[element_id] [bigint] NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[direction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELementQuantity]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELementQuantity](
	[animal_quantity_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[element_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[animal_quantity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElementShape]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementShape](
	[shape_id] [bigint] NOT NULL,
	[shape_name] [varchar](50) NULL,
	[Description] [text] NULL,
	[element_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[shape_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] NOT NULL,
	[member_id] [int] NULL,
	[content] [nvarchar](max) NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](100) NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interaction]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction](
	[interaction_id] [int] NOT NULL,
	[account_id] [bigint] NULL,
	[member_id] [int] NULL,
	[post_id] [bigint] NULL,
	[type] [varchar](50) NULL,
	[timestamp] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[interaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[member_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[email] [nvarchar](1) NOT NULL,
	[phone_number] [nvarchar](1) NOT NULL,
	[gender] [bit] NOT NULL,
	[avatar] [nvarchar](1) NOT NULL,
	[dob] [date] NOT NULL,
	[code] [bigint] NOT NULL,
	[status] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[created_by] [nvarchar](50) NULL,
	[updated_date] [datetime] NULL,
	[updated_by] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_role]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_role](
	[member_id] [int] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[package_id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](100) NULL,
	[price] [decimal](10, 2) NULL,
	[duration] [int] NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package_bill]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package_bill](
	[bill_id] [int] NOT NULL,
	[package_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [varchar](50) NULL,
	[payment_date] [datetime] NULL,
	[payment_status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [bigint] NOT NULL,
	[post_category_id] [bigint] NOT NULL,
	[Element_id] [bigint] NULL,
	[content] [text] NOT NULL,
	[like_number] [bigint] NOT NULL,
	[dislike_number] [bigint] NOT NULL,
	[share_number] [bigint] NOT NULL,
	[status] [bit] NOT NULL,
	[creat_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [post_post_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[post_category_id] [bigint] NOT NULL,
	[post_category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [postcategory_post_category_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostImage]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostImage](
	[post_image_id] [bigint] NOT NULL,
	[post_id] [bigint] NULL,
	[image_name] [nvarchar](255) NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
 CONSTRAINT [postimage_post_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[post_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposition]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposition](
	[proposition_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_id] [int] NULL,
	[proposition_detail] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[proposition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [bigint] NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [role_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shelter]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shelter](
	[shelter_id] [bigint] NOT NULL,
	[shape_id] [bigint] NULL,
	[shelter_category_id] [bigint] NOT NULL,
	[shelter_name] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NOT NULL,
	[Element_id] [bigint] NULL,
 CONSTRAINT [shelter_shelter_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShelterCategory]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterCategory](
	[shelter_category_id] [bigint] NOT NULL,
	[shelter_category_name] [bigint] NOT NULL,
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
/****** Object:  Table [dbo].[ShelterImage]    Script Date: 16/09/2024 23:23:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShelterImage](
	[shelter_image_id] [bigint] NOT NULL,
	[shelter_id] [bigint] NOT NULL,
	[image_url] [nvarchar](255) NOT NULL,
	[status] [bit] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[update_date] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
 CONSTRAINT [shelterimage_shelter_image_id_primary] PRIMARY KEY CLUSTERED 
(
	[shelter_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [account_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [account_role_id_foreign]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [animal_animal_category_id_foreign] FOREIGN KEY([animal_category_id])
REFERENCES [dbo].[AnimalCategory] ([animal_category_id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [animal_animal_category_id_foreign]
GO

ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Color] FOREIGN KEY([color_id])
REFERENCES [dbo].[ElementColor] ([color_id])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Color]
GO
ALTER TABLE [dbo].[AnimalImage]  WITH CHECK ADD FOREIGN KEY([animal_id])
REFERENCES [dbo].[Animal] ([animal_id])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [post_comment_id_foreign] FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [post_comment_id_foreign]
GO
ALTER TABLE [dbo].[Consultation]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_ConsultationCategory] FOREIGN KEY([consultation_category_id])
REFERENCES [dbo].[ConsultationCategory] ([consultation_category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Consultation] CHECK CONSTRAINT [FK_Consultation_ConsultationCategory]
GO
ALTER TABLE [dbo].[ElementColor]  WITH CHECK ADD  CONSTRAINT [FK_Color_Element] FOREIGN KEY([element_id])
REFERENCES [dbo].[Element] ([element_id])
GO
ALTER TABLE [dbo].[ElementColor] CHECK CONSTRAINT [FK_Color_Element]
GO
ALTER TABLE [dbo].[ElementDirection]  WITH CHECK ADD FOREIGN KEY([element_id])
REFERENCES [dbo].[Element] ([element_id])
GO
ALTER TABLE [dbo].[ELementQuantity]  WITH CHECK ADD FOREIGN KEY([element_id])
REFERENCES [dbo].[Element] ([element_id])
GO
ALTER TABLE [dbo].[ElementShape]  WITH CHECK ADD  CONSTRAINT [FK_Shape_Element] FOREIGN KEY([element_id])
REFERENCES [dbo].[Element] ([element_id])
GO
ALTER TABLE [dbo].[ElementShape] CHECK CONSTRAINT [FK_Shape_Element]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Member] FOREIGN KEY([member_id])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Member]
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([member_id])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([post_id])
REFERENCES [dbo].[Post] ([post_id])
GO
ALTER TABLE [dbo].[member_role]  WITH CHECK ADD  CONSTRAINT [member_role_member_id_foreign] FOREIGN KEY([member_id])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[member_role] CHECK CONSTRAINT [member_role_member_id_foreign]
GO
ALTER TABLE [dbo].[member_role]  WITH CHECK ADD  CONSTRAINT [member_role_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[member_role] CHECK CONSTRAINT [member_role_role_id_foreign]
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
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Element] FOREIGN KEY([Element_id])
REFERENCES [dbo].[Element] ([element_id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Element]
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
ALTER TABLE [dbo].[Proposition]  WITH CHECK ADD FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([bill_id])
GO
ALTER TABLE [dbo].[Shelter]  WITH CHECK ADD  CONSTRAINT [FK_Shelter_Shape] FOREIGN KEY([shape_id])
REFERENCES [dbo].[ElementShape] ([shape_id])
GO
ALTER TABLE [dbo].[Shelter] CHECK CONSTRAINT [FK_Shelter_Shape]
GO
ALTER TABLE [dbo].[Shelter]  WITH CHECK ADD  CONSTRAINT [shelter_shelter_category_id_foreign] FOREIGN KEY([shelter_category_id])
REFERENCES [dbo].[ShelterCategory] ([shelter_category_id])
GO
ALTER TABLE [dbo].[Shelter] CHECK CONSTRAINT [shelter_shelter_category_id_foreign]
GO
ALTER TABLE [dbo].[ShelterImage]  WITH CHECK ADD  CONSTRAINT [shelterimage_shelter_id_foreign] FOREIGN KEY([shelter_id])
REFERENCES [dbo].[Shelter] ([shelter_id])
GO
ALTER TABLE [dbo].[ShelterImage] CHECK CONSTRAINT [shelterimage_shelter_id_foreign]
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD CHECK  (([element_name]='earth' OR [element_name]='fire' OR [element_name]='water' OR [element_name]='wood' OR [element_name]='metal'))
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD CHECK  (([element_name]='earth' OR [element_name]='fire' OR [element_name]='water' OR [element_name]='wood' OR [element_name]='metal'))
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD CHECK  (([gender]='Other' OR [gender]='Female' OR [gender]='Male'))
GO
