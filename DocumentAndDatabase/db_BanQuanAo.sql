USE [db_BanQuanAo]
GO
/****** Object:  Table [dbo].[bag]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bag](
	[bag_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_size_id] [int] NULL,
	[amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_discount_event]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_discount_event](
	[discount_event_id] [int] IDENTITY(1,1) NOT NULL,
	[category_product_id] [int] NULL,
	[discount_event_name] [nvarchar](255) NULL,
	[discount_event_description] [nvarchar](255) NULL,
	[discount_event_img] [nvarchar](255) NULL,
	[discount_event_dateCreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[discount_event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_product]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_product](
	[category_product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_product_name] [nvarchar](255) NULL,
	[category_product_description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history_search]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history_search](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[text_search] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_parent_id] [int] NULL,
	[product_more_info] [nvarchar](255) NULL,
	[product_img] [nvarchar](255) NULL,
	[product_size_and_fit] [nvarchar](255) NULL,
	[product_style_code] [nvarchar](50) NULL,
	[product_color_shown] [nvarchar](50) NULL,
	[product_description] [nvarchar](255) NULL,
	[product_description2] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_icons]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_icons](
	[product_icons_id] [int] IDENTITY(1,1) NOT NULL,
	[icon_name] [varchar](255) NULL,
	[thumbnail] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_icons_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_img]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_img](
	[product_img_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[product_img_file_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_object]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_object](
	[product_object_id] [int] IDENTITY(1,1) NOT NULL,
	[product_object_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_object_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_parent]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_parent](
	[product_parent_id] [int] IDENTITY(1,1) NOT NULL,
	[product_parent_name] [nvarchar](100) NULL,
	[product_object_id] [int] NULL,
	[product_category_id] [int] NULL,
	[thumbnail] [text] NULL,
	[product_price] [money] NULL,
	[is_new_release] [bit] NULL,
	[product_icons_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_parent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_review]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_review](
	[product_review_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[product_review_Title] [nvarchar](255) NULL,
	[product_review_content] [nvarchar](255) NULL,
	[product_review_time] [datetime] NULL,
	[product_review_rate] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_size]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_size](
	[product_size_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[size_id] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_product_size] PRIMARY KEY CLUSTERED 
(
	[product_size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_account]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_username] [varchar](100) NULL,
	[user_password] [varchar](255) NULL,
	[user_gender] [nvarchar](5) NULL,
	[user_email] [varchar](255) NULL,
	[user_phone_number] [varchar](11) NULL,
	[user_address] [nvarchar](max) NULL,
	[user_first_name] [nvarchar](100) NULL,
	[user_last_name] [nvarchar](100) NULL,
	[user_member_tier] [int] NULL,
	[user_point] [int] NULL,
	[user_url] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_favorite_products]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_favorite_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_user_favorite_products_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_order]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_order](
	[user_order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[first_name] [nvarchar](60) NULL,
	[last_name] [nvarchar](60) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone_number] [nvarchar](255) NULL,
	[is_processed] [int] NULL,
	[payment_method] [nvarchar](255) NULL,
	[total_price] [money] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK__user_ord__3E79E7F1DA606466] PRIMARY KEY CLUSTERED 
(
	[user_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_order_products]    Script Date: 6/11/2024 2:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_order_products](
	[user_order_id] [int] NOT NULL,
	[product_size_id] [int] NOT NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_UOP] PRIMARY KEY CLUSTERED 
(
	[user_order_id] ASC,
	[product_size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bag] ON 

INSERT [dbo].[bag] ([bag_id], [user_id], [product_size_id], [amount]) VALUES (4, 11, 35, 1)
INSERT [dbo].[bag] ([bag_id], [user_id], [product_size_id], [amount]) VALUES (5, 8, 35, 1)
SET IDENTITY_INSERT [dbo].[bag] OFF
GO
SET IDENTITY_INSERT [dbo].[category_discount_event] ON 

INSERT [dbo].[category_discount_event] ([discount_event_id], [category_product_id], [discount_event_name], [discount_event_description], [discount_event_img], [discount_event_dateCreated]) VALUES (1, 1, N'Hello bro', N'Testing bro', N'https://product.hstatic.net/200000581855/product/giay_nike_court_borough_low_2_white_black__gs_6_6f17354237f94765b89a076a5399cf76_master.jpeg', CAST(N'2024-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[category_discount_event] OFF
GO
SET IDENTITY_INSERT [dbo].[category_product] ON 

INSERT [dbo].[category_product] ([category_product_id], [category_product_name], [category_product_description]) VALUES (1, N'Clothing', N'Various types of clothing for men and women')
INSERT [dbo].[category_product] ([category_product_id], [category_product_name], [category_product_description]) VALUES (2, N'Shoes', N'Various types of shoes and sneakers')
SET IDENTITY_INSERT [dbo].[category_product] OFF
GO
SET IDENTITY_INSERT [dbo].[history_search] ON 

INSERT [dbo].[history_search] ([id], [user_id], [text_search]) VALUES (158, 17, N'nike')
INSERT [dbo].[history_search] ([id], [user_id], [text_search]) VALUES (159, 8, N'sdf')
SET IDENTITY_INSERT [dbo].[history_search] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (1, 4, N'Limited to (1) pair per consumer\n\nThe ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_force_1_07_shoes_white_thumbnail.png', N'Fits large; we recommend ordering half a size down', N'CW2288-111', N'White/White', N'The radiance lives on in the Nike Air Force 1 ''07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', N'')
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (2, 4, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_force_1_07_shoes_black_thumbnail.png', N'Fits large; we recommend ordering half a size down', N'CW2288-001', N'Black/Black', N'The radiance lives on in the Nike Air Force 1''07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', N'')
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (3, 2, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_mid_white_black_thumbnail.png', N'', N'DV0991-101', N'White/White/Black', N'Never mess with a classic. Keep heritage on your feet with a white-on-white look that will never go out of style.', N'')
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (4, 2, N'Limited to (1) pair per consumer

The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_mid_shoes_7cdjgS_thumbnail.png', N'', N'DV0991-111', N'White/White/White', N'Never mess with a classic. Keep heritage on your feet with a white-on-white look that will never go out of style.', N'')
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (5, 3, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_thumbnail.png', N'', N'553558-161', N'White/Varsity Red/White/Black', N'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that''s familiar yet always fresh. With an iconic design that pairs perfectly with any ''fit, these kicks ensure you''ll always be on point.', N'')
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (6, 5, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_thumbnail.png', N'Fits large; we recommend ordering half a size down', N'FQ1925-100', N'Muslin/Sail/Coconut Milk/Legend Pink', N'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that''s familiar yet always fresh. With an iconic design that pairs perfectly with any ''fit, these kicks ensure you''ll always be on point.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (7, 5, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_thumbnail.png', N'Fits large; we recommend ordering half a size down', N'FQ1925-102', N'Muslin/Sail/Coconut Milk/Legend Pink', N'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that''s familiar yet always fresh. With an iconic design that pairs perfectly with any ''fit, these kicks ensure you''ll always be on point.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (8, 7, N'Lightweight and breezy, these unlined Flow shorts from our Nike Club collection are built for all your warm-weather activities. The relaxed, above-the-knee fit makes them easy to style, so pull them on with a tee or hoodie and make your move.', N'clubmensflowshortsPsQ5w3_thumbnail.png', N'Big & Tall model is wearing size 3XL and is 6''1"/185cm', N'FN3098-010', N'Black/White', N'Lightweight and breezy, these unlined Flow shorts from our Nike Club collection are built for all your warm-weather activities. The relaxed, above-the-knee fit makes them easy to style, so pull them on with a tee or hoodie and make your move.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (9, 7, N'Lightweight and breezy, these unlined Flow shorts from our Nike Club collection are built for all your warm-weather activities. The relaxed, above-the-knee fit makes them easy to style, so pull them on with a tee or hoodie and make your move.', N'clubmensflowshortsPsQ5w3green_thumbnail.png', N'Big & Tall model is wearing size 3XL and is 6''1"/185cm', N'FN3098-365', N'Malachite/White', N'Lightweight and breezy, these unlined Flow shorts from our Nike Club collection are built for all your warm-weather activities. The relaxed, above-the-knee fit makes them easy to style, so pull them on with a tee or hoodie and make your move.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (10, 8, N'Women''s Dri-FIT Short-Sleeve Cropped Top
', N'one_classic_womens_dri_fit_short_sleeve_cropped_top_H4198j_thumbnail.png', N'easy and traditional', N'FN2824-361', N'Bicoastal/Black', N'Up for a workout or down to chill, this Nike One Classic top is ready for whatever you are. Lightweight, silky-smooth fabric dries quickly and works for wherever your day takes you', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (11, 8, N'Women''s Dri-FIT Short-Sleeve Cropped Top
', N'one_classic_womens_dri_fit_short_sleeve_cropped_pink_top1.png', N'easy and traditional', N'FN2824-675', N'Playful Pink/Black', N'Up for a workout or down to chill, this Nike One Classic top is ready for whatever you are. Lightweight, silky-smooth fabric dries quickly and works for wherever your day takes you', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (18, 3, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_se_shoes_nxMDqp_thumbnail.png', N'', N'FZ3972-294', N'Pale Vanilla', N'Delectable in its design, this tonal take on the AJ1 brings in a Pale Vanilla colourway atop a clear rubber sole. Tumbled leather overlays wrap the nubuck upper for a premium mix of softened textures.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (19, 3, N'', N'jordan_1_low_alt_se_younger_shoe_thumbnail.png', N'', N'FN9744-018', N'Football Grey/Pine Green', N'Along with being easy to get on, these special edition sneakers are a nod to the colourful sports drinks that help us and MJ fuel up for fun. Clear overlays on the heel and the Swoosh logo mimic the outside of a bottle with condensation-like details.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (20, 3, N'Limited to (1) pair per consumer

The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_se_shoes_xq1gdm_thumbnail.png', N'', N'DC6991-400', N'Cyber Teal/White', N'The sneaker that always steps out with a fresh blast of eye-catching attitude. The Air Jordan 1 Low SE has the profile and timeless details that you adore, in colours that resonate with your personal expression.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (22, 3, N'', N'air_jordan_1_low_g_nrg_golf_shoe_thumbnail.png', N'', N'FZ4159-100', N'White/Black', N'Where do you envision the game going years from now? The oncoming evolution is today, in this special AJ1 Low. An iridescent double Swoosh design and the metallic finishes are a nod to golf''s future through a luxe lens', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (24, 3, N'', N'air_jordan_1_low_se_shoes_xmgzfl_thumbnail.png', N'', N'HF4823-100', N'White/Lightning/Chlorophyll', N'Fresh colours give you an updated AJ1 without losing its iconic silhouette and familiar feel. Made from premium leather, this all-time favourite comes decked out with comfortable Nike Air cushioning', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (25, 3, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_ZHhKk2_white_thumbnail.png', N'', N'553560-132', N'White/Black', N'An iconic look that lasts. This AJ1 pairs the classic design of the original with premium materials that will keep you going all day.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (26, 3, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_zTWr01_thumbnail.png', N'', N'553558-131', N'White/Green Glow', N'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that''s familiar yet always fresh. With an iconic design that pairs perfectly with any ''fit, these kicks ensure you''ll always be on point.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (27, 3, N'', N'air_jordan_1_low_se_shoes_hgcLbC_thumbnail.png', N'', N'FN9137-141', N'White/Blue Grey/Sail/Industrial Blue', N'The AJ1 is a classic. New colours and textures give this version a fresh look, while classic Air cushioning helps keep every step comfortable. Plus, embroidered details add heritage Jordan style you can''t help but show off.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (28, 3, N'', N'air_jordan_1_low_se_shoes_L9LvW5_thumbnail.png', N'', N'HF5753-221', N'Hemp/Sail/Oatmeal/Light British Tan', N'Here are some straightforward, good-looking AJ1s. Were you expecting anything less? Crafted from crisp leather, they feature comfortable Nike Air cushioning in the heel.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (29, 3, N'', N'air_jordan_1_low_se_craft_shoes_thumbnail.png', N'', N'FQ3055-100', N'Pale Ivory/Legend Light Brown/Sail', N'Each Craft released puts a handmade feel on the AJ1 and these low-cut sneakers are no exception. Sandy neutrals come together in kicks that beg to be a part of every outfit. ', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (30, 3, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_low_shoes_ZHhKk2_thumbnail.png', N'', N'DM1206-060', N' Black/Cement Grey/White/Fire Red', N'Lock in your style with this AJ1. We kept everything you love about the classic design—premium leather, Air cushioning, iconic Wings logo—while adding the Nike FlyEase closure system to make on and off a breeze. ', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (31, 2, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_mid_se_shoes_qG5ltp_thumbnail.png', N'', N'FJ3458-160', N'White/Dune Red/Sail/Lobster', N'You know they''re crisp, clean and cutting but how are you gonna pair these AJ1s? They''re made from leather and textiles in the upper and have that cushioned comfort Nike Air in the sole. So what''s it gonna be?', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (32, 2, N'', N'air_jordan_1_mid_se_shoes_4wVkRK_thumbnail.png', N'', N'FN5031-100', N'White/Wolf Grey/Metallic Silver', N'The shoe that started it all gets some sparkle in this stunning iteration of the AJ1. The iconic mid-top silhouette glows with a dazzling, chrome-like upper that catches eyes and turn heads.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (34, 2, N'', N'air_jordan_1_mid_se_shoes_v8XHxD_thumbnail.png', N'', N'FN5215-161', N'White/Sail/Legend Pink', N'Ready to turn heads? Step into the AJ1. New colours and fresh textures update this all-time favourite without losing its classic look and familiar feel.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (35, 2, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_mid_shoes_SQf7DM_thumbnail.png', N'', N'DQ8423-132', N'White/White/Black/Black', N'This iteration of the AJ1 re-imagines Mike''s first signature model with a fresh mix of colours. Premium materials, soft cushioning and a padded ankle collar offer total support and celebrate the shoe that started it all', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (36, 2, N'The ® may appear once or twice on the tongue and/or sockliner as a result of a change implemented by Nike. The product you purchase may appear differently in this respect than the one depicted on Nike.com or NikeApp.', N'air_jordan_1_mid_shoes_86f1ZW_thumbnail.png', N'', N'FN5277-161', N'Red/Black', N'The shoe that started it all gets some sparkle in this stunning iteration of the AJ1. The iconic mid-top silhouette glows with a dazzling, chrome-like upper that catches eyes and turn heads.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (37, 2, N'', N'air_jordan_1_mid_se_shoes_JFn5S2_thumbnail.png', N'', N'FQ1926-161', N'Coconut Milk/Sail/Legend Pink', N'Add some pop to your outfit with this refreshed AJ1. Subtle stripes, premium leather, soft suede and a touch of durable cotton give this icon a fresh look. Plus, classic Air cushioning lets you comfortably step into your day.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (38, 2, N'', N'air_jordan_1_mid_se_craft_shoes_thumbnail.png', N'', N' FQ3224-100', N'Pale Ivory/Legend Light Brown/Sail', N'Each Craft we release puts a handmade feel on the AJ1, and this Mid is no exception. Sandy neutrals come together in kicks that beg to be a part of every outfit.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (39, 4, N'', N'air_force_1_low_evo_shoes_QcbnHZ_thumbnail.png', N'', N'DV3907-900', N'Multi-Colour/Multi-Colour/Multi-Colour', N'Shine in satin, stay classic in canvas or get luxe with leather. No matter what you choose, these AF-1s are all about you.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (40, 4, N'', N'air_force_1_07_shoes_7d5sHw_thumbnail.png', N'', N'HF4298-100', N'White/Fir/Phantom/Obsidian', N'Comfortable, durable and timeless—it''s number 1 for a reason. This AF-1''s classic ''80s construction pairs with bold details for style that tracks whether you''re on the court or on the go.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (41, 4, N'', N'air_force_1_07_shoes_5fFrTT_thumbnail.png', N'', N'FQ4296-100', N'White/White/Aquarius Blue', N'Comfortable, durable and timeless—it''s number 1 for a reason. The classic ''80s construction pairs with contrasting colours for style that tracks whether you''re on court or on the go.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (42, 4, N'', N'air_force_1_07_shoes_RgcF1Q_thumbnail.png', N'', N'FZ7187-100', N'White/University Red/White', N'Score major style points with this legendary hoops classic. Crossing hardwood comfort with off-court flair, this AF-1 pairs smooth overlays with subtle pops of colour for nothing-but-net style', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (43, 4, N'', N'air_force_1_shadow_shoes_DmvLlC_thumbnail.png', N'', N'HF5064-100', N'White/Photo Blue/Lilac Bloom/Alchemy Pink', N'Everything you love about the AF-1—but doubled! The Nike Air Force 1 Shadow puts a playful twist on a hoops icon to highlight the best of AF-1 DNA.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (44, 4, N'', N'air_force_1_07_next_nature_shoes_thumbnail.png', N'', N'DV3808-107', N'White/White/Volt/Dusty Cactus', N'The breezy canvas, embroidered details and a bouquet of spring colours bring summertime vibes to what you already know and love: Nike Air cushioning, classic construction and style for days.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (45, 4, N'', N'air_force_1_07_easyon_shoes_LKXP_thumbnail.png', N'', N' FD1146-101', N'White/Photo Blue', N'Quicker than 1, 2, 3—the original hoops shoe lets you get going. This version of the AF-1 features Nike EasyOn technology for a hands-free experience.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (46, 7, N'This product is made from 100% sustainable materials, using a blend of both recycled polyester and organic cotton fibres. The blend is at least 10% recycled fibres or at least 10% organic cotton fibres.', N'acg_dri_fit_t_shirt_SWsTdl_thumbnail.png', N'Model is wearing size M and is 5′11″ (180cm approx.)
Loose fit: roomy and relaxed
Size Guide', N'FV3493-121', N'Summit White', N'A mix of heavyweight blended fabric and a roomy fit makes this ACG tee the GOAT. Nike Dri-FIT technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (47, 7, N'This product is made from at least 75% recycled polyester fibres', N'sb_print_bowler_short_sleeve_but_thumbnail.png', N'Female model is wearing size S and is 5''7" (170cm approx.). Male model is wearing size M and is 6''0" (183cm approx.)', N'FN2596-410', N'Midnight Navy', N'This Nike SB woven top draws inspiration from classic bowling shirts—with a bold, all-over print. It''s made from stretchy, lightweight fabric and cut with extra room through the chest and body for easy movement.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (48, 7, N'', N'jordan_flight_essentials_oversiz_thumbnail.png', N'Model is wearing size M and is 6′1″ (185cm approx.). Oversized fit: exaggerated and spacious', N' DZ0604-457', N'Industrial Blue', N'Big ''n'' baggy for comfort and style. This super-soft tee features longer sleeves and dropped shoulders. Combined with a minimal Jumpman woven chest patch, you''re lookin'' n-i-c-e.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (49, 7, N'', N'sportswear_max90_t_shirt_trzSnl_thumbnail.png', N'Model is wearing size M and is 6′1″ (185cm approx.)
Standard fit: easy and traditional
Size Guide', N'HF6169-133', N'Sail', N'Suit up in our sweat-wicking, UV-shielding top and let the soft feel and classic fit help you get through your wild workout. Fitness plans have variety, so we''ve made a top comfortable enough for whatever adventure you get up to.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (50, 7, N'', N'club_marina_anorak_ddXpmD_thumbnail.png', N'Model is wearing size M and is 5′9″ (175cm approx.)
Loose fit: roomy and relaxed
Size Guide', N'FN3893-100', N'White/Black', N'Crisp and lightweight, this water-repellent anorak from our Nike Club collection gives you a fresh layer to help shield you from the elements. The roomy fit is combined with an adjustable hood and hem to let you layer it how you like.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (51, 7, N'', N'sportswear_club_t_shirt_K8nM0q_thumbnail.png', N'Female model is wearing size S and is 5''9" (175cm approx.)
Male model is wearing size M and is 6''0" (183cm approx.)
Loose fit: roomy and relaxed
Size Guide', N'FV3502-133', N'Sail', N'Pull on this roomy, midweight cotton tee from Nike SB and get out there for a fresh sesh. Stylish graphics, vibrant colours and the perfect fit set you up for a good day on and off your board.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (52, 7, N'', N'sportswear_hooded_woven_jacket_B_thumbnail.png', N'Model is wearing size L and is 6′1″ (185cm approx.)
Loose fit: roomy and relaxed
Size Guide', N'HF6170-200', N'Hemp', N'Made from durable woven fabric, the Nike Sportswear Jacket has a relaxed, loose fit while watercolour graphics across the back complement the tonal panel-blocking.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (53, 7, N'', N'sportswear_essentials_long_sleev_thumbnail.png', N'Model is wearing size L and is 6′2″ (188cm approx.)
Loose fit: roomy and relaxed
Size Guide', N'HF6173-133', N'Sail', N'This tee has a loose fit for a carefree look and heavyweight fabric that feels thick and soft. What else could you need? How about words to live by on the back?', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (54, 7, N'', N'nocta_nocta_big_body_cs_tee_c84j_thumbnail.png', N'Standard fit: easy and traditional
Size Guide', N'FN7660-010', N'Black/White', N'This premium sweatshirt features new exclusive fleece with reflective design piping, a silicone Swoosh logo and standard NOCTA branding. Guarantees both style and comfort.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (58, 7, N'', N'nocta_fleece_trousers_HdGDS7_thumbnail.png', N'Standard fit: easy and traditional
Size Guide', N'FN7662-010', N'Black/White', N'The NOCTA-exclusive fleece, polished branding and sleek cuffed ankle of these trousers will take your joggers game from basic to bold. Reflective design piping and a silicone Swoosh logo make a statement.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (61, 9, N'', N'kid_thumbnail.png', N'', N'FB4412-006', N'Black/White/Varsity Red', N'Pulled out of the vault, these low tops are back. Inspired by the original Wings logo and design of the AJ1, these all-day, everyday shoes are ready for whatever.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (62, 10, N'', N'aokid_thumbnail.png', N'', N'FV5344-010', N'Black', N'Our favourite shoe box is ready for a day at the pool. In fact, Boxy has never met a pool float he didn''t like. Keep the good times afloat in this soft, easy-fitting cotton tee.', NULL)
INSERT [dbo].[product] ([product_id], [product_parent_id], [product_more_info], [product_img], [product_size_and_fit], [product_style_code], [product_color_shown], [product_description], [product_description2]) VALUES (63, 11, N'', N'women_thumbnail.png', N'', N'HF6291-687', N'Gym Red', N'Get classic comfort—times 2—with this layered short-sleeve top. Nike graphics, a relaxed fit and a patchwork-inspired design serve up a fresh look.', NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_icons] ON 

INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (1, N'Air Force 1', N'air_force_1.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (2, N'Dunk', N'dunk.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (3, N'Air Jordan 1', N'air_jordan_1.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (7, N'Blazer', N'blazer.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (8, N'Men''s Flow Shorts', N'lifemenscampshortsnKf9Hl.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (9, N'Nike One Classic
', N'one_classic_womens_dri_fit_short_sleeve_cropped_top_H4198j_thumbnail.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (10, N'Boys Clothing', N'icon_kid_thumbnail.png')
INSERT [dbo].[product_icons] ([product_icons_id], [icon_name], [thumbnail]) VALUES (11, N'Women''s Clothing', N'icon_women_thumbnail.png')
SET IDENTITY_INSERT [dbo].[product_icons] OFF
GO
SET IDENTITY_INSERT [dbo].[product_img] ON 

INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (1, 1, N'air_force_1_07_shoes_white.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (2, 1, N'air_force_1_07_shoes_white2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (3, 1, N'air_force_1_07_shoes_white3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (4, 1, N'air_force_1_07_shoes_white4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (5, 1, N'air_force_1_07_shoes_white5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (6, 1, N'air_force_1_07_shoes_white6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (7, 1, N'air_force_1_07_shoes_white7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (8, 1, N'air_force_1_07_shoes_white8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (9, 1, N'air_force_1_07_shoes_white9.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (10, 2, N'air_force_1_07_shoes_black1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (11, 2, N'air_force_1_07_shoes_black2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (12, 2, N'air_force_1_07_shoes_black3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (13, 2, N'air_force_1_07_shoes_black4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (15, 2, N'air_force_1_07_shoes_black5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (16, 2, N'air_force_1_07_shoes_black6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (17, 2, N'air_force_1_07_shoes_black7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (18, 2, N'air_force_1_07_shoes_black8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (19, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (20, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (21, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (22, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (23, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (24, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (25, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (26, 3, N'air_jordan_1_mid-_shoes_7cdjgS_black_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (27, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (28, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (29, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (30, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (31, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (32, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (33, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (34, 4, N'air_jordan_1_mid-_shoes_7cdjgS_white_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (35, 5, N'air_jordan_1_low_shoes_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (36, 5, N'air_jordan_1_low_shoes_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (37, 5, N'air_jordan_1_low_shoes_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (38, 5, N'air_jordan_1_low_shoes_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (39, 5, N'air_jordan_1_low_shoes_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (40, 5, N'air_jordan_1_low_shoes_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (41, 5, N'air_jordan_1_low_shoes_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (42, 5, N'air_jordan_1_low_shoes_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (43, 6, N'air_jordan_1_low_shoes_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (44, 6, N'air_jordan_1_low_shoes_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (45, 6, N'air_jordan_1_low_shoes_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (46, 6, N'air_force_1_07_shoes_black6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (47, 8, N'clubmensflowshortsPsQ5w3_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (48, 8, N'clubmensflowshortsPsQ5w3_t.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (49, 8, N'club-mens-flow-shorts-PsQ5w3_o.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (50, 9, N'clubmensflowshortsPsQ5w3green_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (51, 9, N'clubmensflowshorts_PsQ5w3green2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (52, 9, N'clubmensflowshortsPsQ5w3green3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (53, 10, N'one_classic_womens_dri_fit_short_sleeve_cropped_top_H4198j_thumbnail.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (54, 10, N'one_classic_womens_dri_fit_short_sleeve_cropped_green_top3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (55, 10, N'one_classic_womens_dri_fit_short_sleeve_cropped_green_top2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (56, 11, N'one_classic_womens_dri_fit_short_sleeve_cropped_pink_top1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (57, 11, N'one_classic_womens_dri_fit_short_sleeve_cropped_pink_top2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (58, 11, N'one_classic_womens_dri_fit_short_sleeve_cropped_pink_top3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (59, 18, N'air_jordan_1_low_se_shoes_nxMDqp_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (60, 18, N'air_jordan_1_low_se_shoes_nxMDqp_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (61, 18, N'air_jordan_1_low_se_shoes_nxMDqp_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (62, 18, N'air_jordan_1_low_se_shoes_nxMDqp_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (63, 18, N'air_jordan_1_low_se_shoes_nxMDqp_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (64, 18, N'air_jordan_1_low_se_shoes_nxMDqp_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (65, 18, N'air_jordan_1_low_se_shoes_nxMDqp_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (66, 18, N'air_jordan_1_low_se_shoes_nxMDqp_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (67, 19, N'jordan_1_low_alt_se_younger_shoe_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (68, 19, N'jordan_1_low_alt_se_younger_shoe_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (69, 19, N'jordan_1_low_alt_se_younger_shoe_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (70, 19, N'jordan_1_low_alt_se_younger_shoe_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (71, 19, N'jordan_1_low_alt_se_younger_shoe_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (72, 19, N'jordan_1_low_alt_se_younger_shoe_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (73, 19, N'jordan_1_low_alt_se_younger_shoe_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (74, 19, N'jordan_1_low_alt_se_younger_shoe_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (75, 20, N'air_jordan_1_low_se_shoes_xq1gdm_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (76, 20, N'air_jordan_1_low_se_shoes_xq1gdm_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (77, 20, N'air_jordan_1_low_se_shoes_xq1gdm_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (78, 20, N'air_jordan_1_low_se_shoes_xq1gdm_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (79, 20, N'air_jordan_1_low_se_shoes_xq1gdm_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (80, 20, N'air_jordan_1_low_se_shoes_xq1gdm_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (81, 20, N'air_jordan_1_low_se_shoes_xq1gdm_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (82, 20, N'air_jordan_1_low_se_shoes_xq1gdm_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (83, 22, N'air_jordan_1_low_g_nrg_golf_shoe_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (84, 22, N'air_jordan_1_low_g_nrg_golf_shoe_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (85, 22, N'air_jordan_1_low_g_nrg_golf_shoe_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (86, 22, N'air_jordan_1_low_g_nrg_golf_shoe_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (87, 22, N'air_jordan_1_low_g_nrg_golf_shoe_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (88, 22, N'air_jordan_1_low_g_nrg_golf_shoe_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (89, 22, N'air_jordan_1_low_g_nrg_golf_shoe_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (90, 22, N'air_jordan_1_low_g_nrg_golf_shoe_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (91, 24, N'air_jordan_1_low_se_shoes_xmgzfl_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (92, 24, N'air_jordan_1_low_se_shoes_xmgzfl_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (93, 24, N'air_jordan_1_low_se_shoes_xmgzfl_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (94, 24, N'air_jordan_1_low_se_shoes_xmgzfl_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (95, 24, N'air_jordan_1_low_se_shoes_xmgzfl_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (96, 24, N'air_jordan_1_low_se_shoes_xmgzfl_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (97, 24, N'air_jordan_1_low_se_shoes_xmgzfl_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (98, 24, N'air_jordan_1_low_se_shoes_xmgzfl_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (99, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (100, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_2.png')
GO
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (101, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (102, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (103, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (104, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (105, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (106, 25, N'air_jordan_1_low_shoes_ZHhKk2_white_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (107, 26, N'air_jordan_1_low_shoes_zTWr01_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (108, 26, N'air_jordan_1_low_shoes_zTWr01_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (109, 26, N'air_jordan_1_low_shoes_zTWr01_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (110, 26, N'air_jordan_1_low_shoes_zTWr01_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (111, 26, N'air_jordan_1_low_shoes_zTWr01_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (112, 26, N'air_jordan_1_low_shoes_zTWr01_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (113, 26, N'air_jordan_1_low_shoes_zTWr01_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (114, 26, N'air_jordan_1_low_shoes_zTWr01_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (115, 27, N'air_jordan_1_low_se_shoes_hgcLbC_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (116, 27, N'air_jordan_1_low_se_shoes_hgcLbC_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (117, 27, N'air_jordan_1_low_se_shoes_hgcLbC_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (118, 27, N'air_jordan_1_low_se_shoes_hgcLbC_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (119, 27, N'air_jordan_1_low_se_shoes_hgcLbC_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (120, 27, N'air_jordan_1_low_se_shoes_hgcLbC_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (121, 27, N'air_jordan_1_low_se_shoes_hgcLbC_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (122, 27, N'air_jordan_1_low_se_shoes_hgcLbC_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (123, 28, N'air_jordan_1_low_se_shoes_L9LvW5_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (124, 28, N'air_jordan_1_low_se_shoes_L9LvW5_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (125, 28, N'air_jordan_1_low_se_shoes_L9LvW5_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (126, 28, N'air_jordan_1_low_se_shoes_L9LvW5_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (127, 28, N'air_jordan_1_low_se_shoes_L9LvW5_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (128, 28, N'air_jordan_1_low_se_shoes_L9LvW5_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (129, 28, N'air_jordan_1_low_se_shoes_L9LvW5_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (130, 28, N'air_jordan_1_low_se_shoes_L9LvW5_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (131, 29, N'air_jordan_1_low_se_craft_shoes_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (132, 29, N'air_jordan_1_low_se_craft_shoes_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (133, 29, N'air_jordan_1_low_se_craft_shoes_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (134, 29, N'air_jordan_1_low_se_craft_shoes_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (135, 29, N'air_jordan_1_low_se_craft_shoes_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (136, 29, N'air_jordan_1_low_se_craft_shoes_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (137, 29, N'air_jordan_1_low_se_craft_shoes_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (138, 29, N'air_jordan_1_low_se_craft_shoes_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (139, 30, N'air_jordan_1_low_shoes_ZHhKk2_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (140, 30, N'air_jordan_1_low_shoes_ZHhKk2_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (141, 30, N'air_jordan_1_low_shoes_ZHhKk2_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (142, 30, N'air_jordan_1_low_shoes_ZHhKk2_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (143, 30, N'air_jordan_1_low_shoes_ZHhKk2_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (144, 30, N'air_jordan_1_low_shoes_ZHhKk2_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (145, 30, N'air_jordan_1_low_shoes_ZHhKk2_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (146, 30, N'air_jordan_1_low_shoes_ZHhKk2_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (147, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (148, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (149, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (150, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (151, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (152, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (153, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (154, 31, N'air_jordan_1_mid_se_shoes_qG5ltp_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (155, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (156, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (157, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (158, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (159, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (160, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (161, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (162, 32, N'air_jordan_1_mid_se_shoes_4wVkRK_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (163, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (164, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (165, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (166, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (167, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (168, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (169, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (170, 34, N'air_jordan_1_mid_se_shoes_v8XHxD_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (171, 35, N'air_jordan_1_mid_shoes_SQf7DM_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (172, 35, N'air_jordan_1_mid_shoes_SQf7DM_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (173, 35, N'air_jordan_1_mid_shoes_SQf7DM_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (174, 35, N'air_jordan_1_mid_shoes_SQf7DM_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (175, 35, N'air_jordan_1_mid_shoes_SQf7DM_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (176, 35, N'air_jordan_1_mid_shoes_SQf7DM_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (177, 35, N'air_jordan_1_mid_shoes_SQf7DM_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (178, 35, N'air_jordan_1_mid_shoes_SQf7DM_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (179, 36, N'air_jordan_1_mid_shoes_86f1ZW_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (180, 36, N'air_jordan_1_mid_shoes_86f1ZW_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (181, 36, N'air_jordan_1_mid_shoes_86f1ZW_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (182, 36, N'air_jordan_1_mid_shoes_86f1ZW_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (183, 36, N'air_jordan_1_mid_shoes_86f1ZW_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (184, 36, N'air_jordan_1_mid_shoes_86f1ZW_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (185, 36, N'air_jordan_1_mid_shoes_86f1ZW_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (186, 36, N'air_jordan_1_mid_shoes_86f1ZW_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (187, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (188, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (189, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (190, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (191, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (192, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (193, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (194, 37, N'air_jordan_1_mid_se_shoes_JFn5S2_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (195, 38, N'air_jordan_1_mid_se_craft_shoes_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (196, 38, N'air_jordan_1_mid_se_craft_shoes_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (197, 38, N'air_jordan_1_mid_se_craft_shoes_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (198, 38, N'air_jordan_1_mid_se_craft_shoes_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (199, 38, N'air_jordan_1_mid_se_craft_shoes_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (200, 38, N'air_jordan_1_mid_se_craft_shoes_6.png')
GO
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (201, 38, N'air_jordan_1_mid_se_craft_shoes_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (202, 38, N'air_jordan_1_mid_se_craft_shoes_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (203, 39, N'air_force_1_low_evo_shoes_QcbnHZ_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (204, 39, N'air_force_1_low_evo_shoes_QcbnHZ_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (205, 39, N'air_force_1_low_evo_shoes_QcbnHZ_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (206, 39, N'air_force_1_low_evo_shoes_QcbnHZ_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (207, 39, N'air_force_1_low_evo_shoes_QcbnHZ_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (208, 39, N'air_force_1_low_evo_shoes_QcbnHZ_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (209, 39, N'air_force_1_low_evo_shoes_QcbnHZ_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (210, 39, N'air_force_1_low_evo_shoes_QcbnHZ_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (211, 40, N'air_force_1_07_shoes_7d5sHw_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (212, 40, N'air_force_1_07_shoes_7d5sHw_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (213, 40, N'air_force_1_07_shoes_7d5sHw_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (214, 40, N'air_force_1_07_shoes_7d5sHw_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (215, 40, N'air_force_1_07_shoes_7d5sHw_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (216, 40, N'air_force_1_07_shoes_7d5sHw_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (217, 40, N'air_force_1_07_shoes_7d5sHw_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (218, 40, N'air_force_1_07_shoes_7d5sHw_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (219, 41, N'air_force_1_07_shoes_5fFrTT_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (220, 41, N'air_force_1_07_shoes_5fFrTT_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (221, 41, N'air_force_1_07_shoes_5fFrTT_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (222, 41, N'air_force_1_07_shoes_5fFrTT_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (223, 41, N'air_force_1_07_shoes_5fFrTT_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (224, 41, N'air_force_1_07_shoes_5fFrTT_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (225, 41, N'air_force_1_07_shoes_5fFrTT_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (226, 41, N'air_force_1_07_shoes_5fFrTT_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (227, 42, N'air_force_1_07_shoes_RgcF1Q_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (228, 42, N'air_force_1_07_shoes_RgcF1Q_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (229, 42, N'air_force_1_07_shoes_RgcF1Q_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (230, 42, N'air_force_1_07_shoes_RgcF1Q_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (231, 42, N'air_force_1_07_shoes_RgcF1Q_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (232, 42, N'air_force_1_07_shoes_RgcF1Q_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (233, 42, N'air_force_1_07_shoes_RgcF1Q_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (234, 42, N'air_force_1_07_shoes_RgcF1Q_8png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (235, 43, N'air_force_1_shadow_shoes_DmvLlC_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (236, 43, N'air_force_1_shadow_shoes_DmvLlC_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (237, 43, N'air_force_1_shadow_shoes_DmvLlC_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (238, 43, N'air_force_1_shadow_shoes_DmvLlC_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (239, 43, N'air_force_1_shadow_shoes_DmvLlC_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (240, 43, N'air_force_1_shadow_shoes_DmvLlC_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (241, 43, N'air_force_1_shadow_shoes_DmvLlC_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (242, 43, N'air_force_1_shadow_shoes_DmvLlC_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (243, 44, N'air_force_1_07_next_nature_shoes_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (244, 44, N'air_force_1_07_next_nature_shoes_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (245, 44, N'air_force_1_07_next_nature_shoes_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (246, 44, N'air_force_1_07_next_nature_shoes_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (247, 44, N'air_force_1_07_next_nature_shoes_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (248, 44, N'air_force_1_07_next_nature_shoes_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (249, 44, N'air_force_1_07_next_nature_shoes_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (250, 44, N'air_force_1_07_next_nature_shoes_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (251, 45, N'air_force_1_07_easyon_shoes_LKXP_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (252, 45, N'air_force_1_07_easyon_shoes_LKXP_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (253, 45, N'air_force_1_07_easyon_shoes_LKXP_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (254, 45, N'air_force_1_07_easyon_shoes_LKXP_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (255, 45, N'air_force_1_07_easyon_shoes_LKXP_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (256, 45, N'air_force_1_07_easyon_shoes_LKXP_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (257, 45, N'air_force_1_07_easyon_shoes_LKXP_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (258, 45, N'air_force_1_07_easyon_shoes_LKXP_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (259, 46, N'acg_dri_fit_t_shirt_SWsTdl_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (260, 46, N'acg_dri_fit_t_shirt_SWsTdl_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (261, 46, N'acg_dri_fit_t_shirt_SWsTdl_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (262, 46, N'acg_dri_fit_t_shirt_SWsTdl_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (263, 46, N'acg_dri_fit_t_shirt_SWsTdl_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (264, 47, N'sb_print_bowler_short_sleeve_but_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (265, 47, N'sb_print_bowler_short_sleeve_but_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (266, 47, N'sb_print_bowler_short_sleeve_but_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (267, 47, N'sb_print_bowler_short_sleeve_but_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (268, 47, N'sb_print_bowler_short_sleeve_but_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (269, 47, N'sb_print_bowler_short_sleeve_but_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (270, 47, N'sb_print_bowler_short_sleeve_but_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (271, 48, N'jordan_flight_essentials_oversiz_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (272, 48, N'jordan_flight_essentials_oversiz_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (273, 48, N'jordan_flight_essentials_oversiz_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (274, 48, N'jordan_flight_essentials_oversiz_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (275, 48, N'jordan_flight_essentials_oversiz_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (276, 49, N'sportswear_max90_t_shirt_trzSnl_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (277, 49, N'sportswear_max90_t_shirt_trzSnl_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (278, 49, N'sportswear_max90_t_shirt_trzSnl_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (279, 49, N'sportswear_max90_t_shirt_trzSnl_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (280, 49, N'sportswear_max90_t_shirt_trzSnl_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (281, 49, N'sportswear_max90_t_shirt_trzSnl_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (282, 50, N'club_marina_anorak_ddXpmD_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (283, 50, N'club_marina_anorak_ddXpmD_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (284, 50, N'club_marina_anorak_ddXpmD_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (285, 50, N'club_marina_anorak_ddXpmD_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (286, 50, N'club_marina_anorak_ddXpmD_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (287, 50, N'club_marina_anorak_ddXpmD_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (288, 50, N'club_marina_anorak_ddXpmD_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (289, 50, N'club_marina_anorak_ddXpmD_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (290, 51, N'sportswear_club_t_shirt_K8nM0q_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (291, 51, N'sportswear_club_t_shirt_K8nM0q_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (292, 51, N'sportswear_club_t_shirt_K8nM0q_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (293, 51, N'sportswear_club_t_shirt_K8nM0q_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (294, 51, N'sportswear_club_t_shirt_K8nM0q_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (295, 52, N'sportswear_hooded_woven_jacket_B_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (296, 52, N'sportswear_hooded_woven_jacket_B_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (297, 52, N'sportswear_hooded_woven_jacket_B_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (298, 52, N'sportswear_hooded_woven_jacket_B_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (299, 52, N'sportswear_hooded_woven_jacket_B_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (300, 52, N'sportswear_hooded_woven_jacket_B_6.png')
GO
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (301, 52, N'sportswear_hooded_woven_jacket_B_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (302, 52, N'sportswear_hooded_woven_jacket_B_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (303, 53, N'sportswear_essentials_long_sleev_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (304, 53, N'sportswear_essentials_long_sleev_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (305, 53, N'sportswear_essentials_long_sleev_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (306, 53, N'sportswear_essentials_long_sleev_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (307, 53, N'sportswear_essentials_long_sleev_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (308, 53, N'sportswear_essentials_long_sleev_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (309, 53, N'sportswear_essentials_long_sleev_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (310, 54, N'nocta_nocta_big_body_cs_tee_c84j_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (311, 54, N'nocta_nocta_big_body_cs_tee_c84j_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (312, 54, N'nocta_nocta_big_body_cs_tee_c84j_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (313, 54, N'nocta_nocta_big_body_cs_tee_c84j_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (314, 54, N'nocta_nocta_big_body_cs_tee_c84j_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (315, 54, N'nocta_nocta_big_body_cs_tee_c84j_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (316, 54, N'nocta_nocta_big_body_cs_tee_c84j_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (317, 54, N'nocta_nocta_big_body_cs_tee_c84j_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (318, 58, N'nocta_fleece_trousers_HdGDS7_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (319, 58, N'nocta_fleece_trousers_HdGDS7_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (320, 58, N'nocta_fleece_trousers_HdGDS7_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (321, 58, N'nocta_fleece_trousers_HdGDS7_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (322, 58, N'nocta_fleece_trousers_HdGDS7_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (323, 58, N'nocta_fleece_trousers_HdGDS7_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (324, 58, N'nocta_fleece_trousers_HdGDS7_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (325, 58, N'nocta_fleece_trousers_HdGDS7_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (326, 61, N'kid_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (327, 61, N'kid_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (328, 61, N'kid_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (329, 61, N'kid_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (330, 61, N'kid_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (331, 61, N'kid_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (332, 61, N'kid_7.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (333, 61, N'kid_8.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (334, 62, N'aokid_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (335, 62, N'aokid_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (336, 62, N'aokid_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (337, 62, N'aokid_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (338, 62, N'aokid_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (339, 63, N'women_1.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (340, 63, N'women_2.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (341, 63, N'women_3.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (342, 63, N'women_4.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (343, 63, N'women_5.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (344, 63, N'women_6.png')
INSERT [dbo].[product_img] ([product_img_id], [product_id], [product_img_file_name]) VALUES (345, 63, N'women_7.png')
SET IDENTITY_INSERT [dbo].[product_img] OFF
GO
SET IDENTITY_INSERT [dbo].[product_object] ON 

INSERT [dbo].[product_object] ([product_object_id], [product_object_name]) VALUES (1, N'Men')
INSERT [dbo].[product_object] ([product_object_id], [product_object_name]) VALUES (2, N'Women')
INSERT [dbo].[product_object] ([product_object_id], [product_object_name]) VALUES (3, N'Kids')
SET IDENTITY_INSERT [dbo].[product_object] OFF
GO
SET IDENTITY_INSERT [dbo].[product_parent] ON 

INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (2, N'Air Jordan 1 Mid', 1, 2, N'air_jordan_1_mid_white_black_thumbnail.png', 3519.0000, 1, 3)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (3, N'Air Jordan 1 Low', 1, 2, N'air_jordan_1_low_shoes_6Q1tFM_thumbnail.png', 3239.0000, 1, 3)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (4, N'Nike Air Force 1''07', 1, 2, N'air_force_1_07_shoes_white_thumbnail.png', 2929.0000, 1, 1)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (5, N'Air Jordan 1 Low', 2, 2, N'air-jordan-1-low-shoes-459b4T_thumbnail.png', 3239.0000, 1, 3)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (6, N'Air Jordan 1 Elevate Low', 2, 2, N'air-jordan-1-elevate-low-shoes-XlkVrM_thumbnail.png', 3829.0000, 1, 3)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (7, N'Nike Club
', 1, 1, N'clubmensflowshortsPsQ5w3_thumbnail.png', 5000.0000, 1, 8)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (8, N'Short-Sleeve Cropped Top', 2, 1, N'one_classic_womens_dri_fit_short_sleeve_cropped_top_H4198j_thumbnail.png', 3233.0000, 1, 9)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (9, N'Jordan Nu Retro 1 Low', 3, 2, N'kid_thumbnail.png', 699.0000, 1, 3)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (10, N'Nike Sportswear', 3, 1, N'aokid_thumbnail.png', 799.0000, 1, 10)
INSERT [dbo].[product_parent] ([product_parent_id], [product_parent_name], [product_object_id], [product_category_id], [thumbnail], [product_price], [is_new_release], [product_icons_id]) VALUES (11, N'Nike Sportswear', 2, 1, N'women_thumbnail.png', 1499.0000, 1, 11)
SET IDENTITY_INSERT [dbo].[product_parent] OFF
GO
SET IDENTITY_INSERT [dbo].[product_review] ON 

INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (1, 17, 4, N'hehehehehehehehe', N'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', CAST(N'2024-06-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (2, 17, 3, N'wowwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', N'yes sirrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (3, 17, 32, N'yes sir', N'Niceeeeeeeeeeeeeeeeeeeeeeeeeee', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (4, 11, 32, N'yes madam', N'Niceeeeeeeeeeeeeeeeeeeeeeeeeee', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (5, 11, 34, N'Oce', N'Very Niceeeeeeeeeeeeeeeeeeeeee', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (6, 11, 35, N'Yes sir', N'Meoww meoew meow mewo meow meow', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (7, 11, 36, N'yah sure', N'San Pham 10 diem khong co nhung', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_review] ([product_review_id], [user_id], [product_id], [product_review_Title], [product_review_content], [product_review_time], [product_review_rate]) VALUES (8, 11, 38, N'yahooo', N'ye ye ye ye', CAST(N'2024-06-11T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[product_review] OFF
GO
SET IDENTITY_INSERT [dbo].[product_size] ON 

INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (1, 1, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (2, 1, 11, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (3, 1, 12, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (4, 1, 13, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (5, 1, 14, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (6, 1, 15, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (7, 1, 16, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (8, 1, 17, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (9, 1, 18, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (10, 1, 19, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (11, 1, 20, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (12, 1, 21, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (13, 1, 22, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (14, 1, 23, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (15, 1, 24, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (16, 1, 25, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (17, 1, 26, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (18, 2, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (19, 2, 11, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (20, 2, 12, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (21, 2, 13, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (22, 2, 14, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (23, 2, 15, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (24, 2, 16, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (25, 2, 17, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (26, 2, 18, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (27, 2, 19, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (28, 2, 20, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (29, 2, 21, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (30, 2, 22, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (31, 2, 23, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (32, 2, 24, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (33, 2, 25, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (34, 2, 26, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (35, 3, 5, 48)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (36, 3, 6, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (37, 3, 7, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (38, 3, 8, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (39, 3, 9, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (40, 3, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (41, 3, 11, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (42, 3, 12, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (43, 3, 13, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (44, 3, 14, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (45, 3, 15, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (46, 3, 16, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (47, 4, 5, 48)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (48, 4, 6, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (49, 4, 7, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (50, 4, 8, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (51, 4, 9, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (52, 4, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (53, 4, 11, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (54, 4, 12, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (55, 4, 13, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (56, 4, 14, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (57, 4, 15, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (58, 4, 16, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (59, 5, 5, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (60, 5, 6, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (61, 5, 7, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (62, 5, 8, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (63, 5, 9, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (64, 5, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (65, 5, 11, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (66, 5, 12, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (67, 5, 13, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (68, 5, 14, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (69, 5, 15, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (70, 5, 16, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (72, 8, 27, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (73, 8, 28, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (74, 8, 29, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (75, 8, 31, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (78, 9, 27, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (79, 9, 28, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (81, 9, 29, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (82, 9, 30, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (83, 10, 27, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (84, 10, 28, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (85, 10, 29, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (86, 10, 30, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (87, 18, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (88, 18, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (89, 18, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (91, 18, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (92, 18, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (93, 18, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (94, 18, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (95, 18, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (96, 18, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (97, 18, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (98, 18, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (99, 19, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (100, 19, 7, 5)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (101, 19, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (102, 19, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (103, 19, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (104, 19, 11, 20)
GO
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (105, 19, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (106, 19, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (107, 19, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (108, 19, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (109, 19, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (110, 20, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (111, 20, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (112, 20, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (113, 20, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (114, 20, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (115, 20, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (116, 20, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (117, 20, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (118, 20, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (119, 20, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (120, 20, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (122, 22, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (123, 22, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (124, 22, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (125, 22, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (126, 22, 10, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (127, 22, 12, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (128, 22, 13, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (129, 22, 14, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (130, 22, 15, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (131, 22, 16, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (132, 24, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (133, 24, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (134, 24, 8, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (135, 24, 9, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (136, 24, 10, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (137, 24, 11, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (138, 24, 12, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (139, 24, 13, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (140, 24, 14, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (142, 24, 15, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (143, 24, 16, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (144, 25, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (145, 25, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (146, 25, 8, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (147, 25, 9, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (148, 25, 10, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (149, 25, 11, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (150, 25, 12, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (151, 25, 13, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (152, 25, 14, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (153, 25, 15, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (154, 25, 16, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (155, 26, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (156, 26, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (157, 26, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (158, 26, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (159, 26, 10, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (160, 26, 11, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (162, 26, 12, 12)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (163, 26, 13, 2)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (164, 26, 14, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (165, 26, 15, 5)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (166, 26, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (167, 27, 6, 23)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (168, 27, 7, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (169, 27, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (170, 27, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (171, 27, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (173, 27, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (174, 27, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (175, 27, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (176, 27, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (177, 27, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (178, 27, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (179, 28, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (180, 28, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (181, 28, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (182, 28, 9, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (183, 28, 10, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (184, 28, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (185, 28, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (186, 28, 13, 32)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (187, 28, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (188, 28, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (189, 28, 16, 22)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (191, 29, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (193, 29, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (194, 29, 8, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (195, 29, 9, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (196, 29, 10, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (197, 29, 11, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (200, 29, 12, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (201, 29, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (202, 29, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (203, 29, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (204, 29, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (205, 30, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (206, 30, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (207, 30, 8, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (208, 30, 9, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (209, 30, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (211, 30, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (212, 30, 12, 33)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (213, 30, 13, 33)
GO
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (214, 30, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (215, 30, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (216, 30, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (217, 31, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (218, 31, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (219, 31, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (220, 31, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (221, 31, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (222, 31, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (223, 31, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (224, 31, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (225, 31, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (227, 31, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (228, 31, 16, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (229, 32, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (230, 32, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (231, 32, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (232, 32, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (233, 32, 10, 32)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (234, 32, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (235, 32, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (236, 32, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (237, 32, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (238, 32, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (239, 32, 16, 32)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (240, 34, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (241, 34, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (242, 34, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (243, 34, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (244, 34, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (245, 34, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (246, 34, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (247, 34, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (248, 34, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (249, 34, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (250, 34, 16, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (251, 35, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (252, 35, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (253, 35, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (254, 35, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (255, 35, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (256, 35, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (257, 35, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (258, 35, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (259, 35, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (260, 35, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (261, 35, 16, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (262, 36, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (263, 36, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (264, 36, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (265, 36, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (266, 36, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (267, 36, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (268, 36, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (269, 36, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (270, 36, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (271, 36, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (272, 36, 16, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (274, 37, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (275, 37, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (276, 37, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (277, 37, 9, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (278, 37, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (279, 37, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (280, 37, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (281, 37, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (282, 37, 14, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (283, 37, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (284, 37, 16, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (285, 38, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (286, 38, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (287, 38, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (288, 38, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (289, 38, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (290, 38, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (291, 38, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (292, 38, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (293, 38, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (295, 38, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (296, 38, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (297, 39, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (298, 39, 7, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (299, 39, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (300, 39, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (301, 39, 10, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (302, 39, 11, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (303, 39, 12, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (304, 39, 13, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (305, 39, 14, 39)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (306, 39, 15, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (307, 39, 16, 40)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (308, 40, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (309, 40, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (310, 40, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (311, 40, 9, 40)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (313, 40, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (314, 40, 11, 60)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (315, 40, 12, 70)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (316, 40, 13, 80)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (317, 40, 14, 90)
GO
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (318, 40, 15, 100)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (319, 40, 16, 110)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (320, 41, 6, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (321, 41, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (322, 41, 8, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (323, 41, 9, 40)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (324, 41, 10, 50)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (325, 41, 11, 60)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (326, 41, 12, 70)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (327, 41, 13, 80)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (328, 41, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (329, 41, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (330, 41, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (331, 42, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (332, 42, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (333, 42, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (334, 42, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (335, 42, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (336, 42, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (337, 42, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (340, 42, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (341, 42, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (342, 42, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (343, 42, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (344, 43, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (345, 43, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (346, 43, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (347, 43, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (348, 43, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (349, 43, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (350, 43, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (351, 43, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (352, 43, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (353, 43, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (354, 43, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (355, 44, 6, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (356, 44, 7, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (357, 44, 8, 40)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (358, 44, 9, 40)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (359, 44, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (360, 44, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (361, 44, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (362, 44, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (363, 44, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (364, 44, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (365, 44, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (366, 45, 6, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (367, 45, 7, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (368, 45, 8, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (369, 45, 9, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (370, 45, 10, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (371, 45, 11, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (372, 45, 12, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (373, 45, 13, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (374, 45, 14, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (376, 45, 15, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (377, 45, 16, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (378, 46, 28, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (379, 46, 29, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (380, 46, 30, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (381, 46, 31, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (382, 47, 28, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (383, 47, 29, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (384, 47, 30, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (385, 47, 31, 30)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (386, 47, 28, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (388, 61, 28, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (389, 61, 29, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (390, 61, 30, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (391, 61, 31, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (392, 62, 28, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (393, 62, 29, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (394, 62, 30, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (395, 62, 31, 10)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (396, 63, 28, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (397, 63, 29, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (398, 63, 30, 20)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [soluong]) VALUES (399, 63, 31, 20)
SET IDENTITY_INSERT [dbo].[product_size] OFF
GO
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([size_id], [size_name]) VALUES (1, N'EU 32')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (2, N'EU 33')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (3, N'EU 33.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (4, N'EU 34')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (5, N'EU 35.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (6, N'EU 36')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (7, N'EU 36.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (8, N'EU 37.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (9, N'EU 38')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (10, N'EU 38.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (11, N'EU 39')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (12, N'EU 40')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (13, N'EU 40.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (14, N'EU 41')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (15, N'EU 41.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (16, N'EU 42')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (17, N'EU 42.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (18, N'EU 43')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (19, N'EU 43.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (20, N'EU 44')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (21, N'EU 44.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (22, N'EU 45')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (23, N'EU 45.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (24, N'EU 46')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (25, N'EU 47')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (26, N'EU 47.5')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (27, N'XS')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (28, N'S')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (29, N'M')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (30, N'L')
INSERT [dbo].[size] ([size_id], [size_name]) VALUES (31, N'XL')
SET IDENTITY_INSERT [dbo].[size] OFF
GO
SET IDENTITY_INSERT [dbo].[user_account] ON 

INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (8, NULL, NULL, NULL, N'boquangdieu2003@gmail.com', N'', N'', N'Quang Diệu', N'', NULL, NULL, N'https://lh3.googleusercontent.com/a/ACg8ocJivWsWXeDMeC78aUbQDTZ5yt4byhrAHtPIx6r4yIxOZLK5zJ9S')
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (9, N'dieu2003', N'2c181e47de856cca3dbcfbf2e636c2fe36d8d25a6247361508260eb408b79b14', NULL, N'dieu@gmail.com', N'', N'', N'Quang Dieu', N'Bo', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (10, N'asdas', N'688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6', NULL, N'asdasd', NULL, NULL, N'asd', N'asd', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (11, N'dieucobap2003', N'15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', NULL, N'dieuquangbo@gmail.com', N'0939638912', N'180 Tran Hung Dao', N'Quang Dieu', N'Hello', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (12, N'asd', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, N'asd@gmail.com', NULL, NULL, N'123', N'123', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (13, N'123', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, N'123@gmail.com', NULL, NULL, N'123', N'123', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (15, N'bqdieu2003', N'123', NULL, N'111@gmail.com', NULL, NULL, N'Chin', N'Chong', NULL, NULL, NULL)
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (16, NULL, NULL, NULL, N'ducthien091203@gmail.com', NULL, NULL, N'Thiện', NULL, NULL, NULL, N'')
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (17, NULL, NULL, NULL, N'dungry853@gmail.com', N'0849919901', N'Ho Chi Minh', N'Khắc Dũng', N'Ho Hoang', NULL, NULL, N'https://lh3.googleusercontent.com/a/ACg8ocKdmEL38kziyFPmJh8mfW_AcV22JIHW20Byk4OgKXwE7a1LxD0k')
INSERT [dbo].[user_account] ([user_id], [user_username], [user_password], [user_gender], [user_email], [user_phone_number], [user_address], [user_first_name], [user_last_name], [user_member_tier], [user_point], [user_url]) VALUES (18, NULL, NULL, NULL, N'bqd221203@gmail.com', NULL, NULL, N'Quang', NULL, NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[user_account] OFF
GO
SET IDENTITY_INSERT [dbo].[user_favorite_products] ON 

INSERT [dbo].[user_favorite_products] ([id], [user_id], [product_id]) VALUES (139, 8, 3)
INSERT [dbo].[user_favorite_products] ([id], [user_id], [product_id]) VALUES (132, 11, 5)
INSERT [dbo].[user_favorite_products] ([id], [user_id], [product_id]) VALUES (138, 11, 8)
INSERT [dbo].[user_favorite_products] ([id], [user_id], [product_id]) VALUES (129, 17, 3)
INSERT [dbo].[user_favorite_products] ([id], [user_id], [product_id]) VALUES (140, 17, 4)
SET IDENTITY_INSERT [dbo].[user_favorite_products] OFF
GO
SET IDENTITY_INSERT [dbo].[user_order] ON 

INSERT [dbo].[user_order] ([user_order_id], [user_id], [first_name], [last_name], [address], [email], [phone_number], [is_processed], [payment_method], [total_price], [createdAt], [updatedAt]) VALUES (1, 8, N'Dieu', N'Quang', N'123 qwe', N'boquangdieu2003@gmail.com', N'0939638911', 1, N'Paypal', 10271.0000, CAST(N'2024-06-07T23:41:22.000' AS DateTime), CAST(N'2024-06-07T23:41:22.000' AS DateTime))
INSERT [dbo].[user_order] ([user_order_id], [user_id], [first_name], [last_name], [address], [email], [phone_number], [is_processed], [payment_method], [total_price], [createdAt], [updatedAt]) VALUES (2, 16, N'a', N'b', N'abc', N'a@gmail.com', N'0909090909', 1, N'Paypal', 3769.0000, CAST(N'2024-06-09T15:30:50.000' AS DateTime), CAST(N'2024-06-09T15:30:50.000' AS DateTime))
INSERT [dbo].[user_order] ([user_order_id], [user_id], [first_name], [last_name], [address], [email], [phone_number], [is_processed], [payment_method], [total_price], [createdAt], [updatedAt]) VALUES (3, 17, N'Dung Dep Trai', N'he he he', N'Le Trong Tan', N'dungry853@gmail.com', N'0849919901', 1, N'Paypal', 10557.0000, CAST(N'2024-06-10T15:56:30.000' AS DateTime), CAST(N'2024-06-10T15:56:30.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[user_order] OFF
GO
INSERT [dbo].[user_order_products] ([user_order_id], [product_size_id], [amount]) VALUES (1, 35, 2)
INSERT [dbo].[user_order_products] ([user_order_id], [product_size_id], [amount]) VALUES (1, 83, 1)
INSERT [dbo].[user_order_products] ([user_order_id], [product_size_id], [amount]) VALUES (2, 35, 1)
INSERT [dbo].[user_order_products] ([user_order_id], [product_size_id], [amount]) VALUES (3, 35, 1)
INSERT [dbo].[user_order_products] ([user_order_id], [product_size_id], [amount]) VALUES (3, 47, 2)
GO
/****** Object:  Index [UQ__bag__29DC9EA860C6F951]    Script Date: 6/11/2024 2:01:32 AM ******/
ALTER TABLE [dbo].[bag] ADD UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[product_size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [u_userID_ProductID]    Script Date: 6/11/2024 2:01:32 AM ******/
ALTER TABLE [dbo].[user_favorite_products] ADD  CONSTRAINT [u_userID_ProductID] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bag]  WITH CHECK ADD FOREIGN KEY([product_size_id])
REFERENCES [dbo].[product_size] ([product_size_id])
GO
ALTER TABLE [dbo].[bag]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[category_discount_event]  WITH CHECK ADD  CONSTRAINT [fk_cde_cp] FOREIGN KEY([category_product_id])
REFERENCES [dbo].[category_product] ([category_product_id])
GO
ALTER TABLE [dbo].[category_discount_event] CHECK CONSTRAINT [fk_cde_cp]
GO
ALTER TABLE [dbo].[history_search]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_p_pp] FOREIGN KEY([product_parent_id])
REFERENCES [dbo].[product_parent] ([product_parent_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_p_pp]
GO
ALTER TABLE [dbo].[product_img]  WITH CHECK ADD  CONSTRAINT [fk_pi_p] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_img] CHECK CONSTRAINT [fk_pi_p]
GO
ALTER TABLE [dbo].[product_parent]  WITH CHECK ADD  CONSTRAINT [fk_category_pp] FOREIGN KEY([product_category_id])
REFERENCES [dbo].[category_product] ([category_product_id])
GO
ALTER TABLE [dbo].[product_parent] CHECK CONSTRAINT [fk_category_pp]
GO
ALTER TABLE [dbo].[product_parent]  WITH CHECK ADD  CONSTRAINT [fk_object_pp] FOREIGN KEY([product_object_id])
REFERENCES [dbo].[product_object] ([product_object_id])
GO
ALTER TABLE [dbo].[product_parent] CHECK CONSTRAINT [fk_object_pp]
GO
ALTER TABLE [dbo].[product_parent]  WITH CHECK ADD  CONSTRAINT [FK_PP_PI] FOREIGN KEY([product_icons_id])
REFERENCES [dbo].[product_icons] ([product_icons_id])
GO
ALTER TABLE [dbo].[product_parent] CHECK CONSTRAINT [FK_PP_PI]
GO
ALTER TABLE [dbo].[product_review]  WITH CHECK ADD  CONSTRAINT [fk_pr_p] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_review] CHECK CONSTRAINT [fk_pr_p]
GO
ALTER TABLE [dbo].[product_review]  WITH CHECK ADD  CONSTRAINT [fk_pr_u] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[product_review] CHECK CONSTRAINT [fk_pr_u]
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD  CONSTRAINT [fk_ps_p] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_size] CHECK CONSTRAINT [fk_ps_p]
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD  CONSTRAINT [fk_ps_s] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[product_size] CHECK CONSTRAINT [fk_ps_s]
GO
ALTER TABLE [dbo].[user_favorite_products]  WITH CHECK ADD  CONSTRAINT [FK_PD] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[user_favorite_products] CHECK CONSTRAINT [FK_PD]
GO
ALTER TABLE [dbo].[user_favorite_products]  WITH CHECK ADD  CONSTRAINT [FK_US] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_account] ([user_id])
GO
ALTER TABLE [dbo].[user_favorite_products] CHECK CONSTRAINT [FK_US]
GO
ALTER TABLE [dbo].[user_order_products]  WITH CHECK ADD  CONSTRAINT [FK_uop_ps] FOREIGN KEY([product_size_id])
REFERENCES [dbo].[product_size] ([product_size_id])
GO
ALTER TABLE [dbo].[user_order_products] CHECK CONSTRAINT [FK_uop_ps]
GO
ALTER TABLE [dbo].[user_order_products]  WITH CHECK ADD  CONSTRAINT [fk_uop_uo] FOREIGN KEY([user_order_id])
REFERENCES [dbo].[user_order] ([user_order_id])
GO
ALTER TABLE [dbo].[user_order_products] CHECK CONSTRAINT [fk_uop_uo]
GO
