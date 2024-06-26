

USE [Book_Shop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL ,
	[sell_ID] [int] NULL,
	FOREIGN KEY (cateID) REFERENCES [dbo].[Category] ([cid]),
	FOREIGN KEY (sell_ID) REFERENCES [dbo].[Account] ([uID])
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[Cart](
	[uid] [int] NOT NULL PRIMARY KEY references [dbo].[Account] ([uID]),
	[prodid] [int] references [dbo].[product] ([id]),
	[amount] [money]
)
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Huytran', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Tiểu thuyết')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Giáo Dục')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Sách Giáo Khoa')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Truyện Tranh')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Không Gia Đình - Hector Malot', N'https://simg.zalopay.com.vn/zlp-website/assets/khong_gia_dinh_8ae2708ff5.jpg', 120.0000, N'Không Gia Đình - Hector Malot', N'Không Gia Đình là một trong những cuốn tiểu thuyết hay và nổi tiếng trong giới văn học, đã mang đến thành công vang dội cho nhà văn Hector Malot. Nội dung cuốn tiểu thuyết kể về cuộc đời phiêu bạt của một cậu bé Remi - không có cha, không có mẹ. ', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Ông Già Và Biển Cả - Ernest Hemingway', N'https://simg.zalopay.com.vn/zlp-website/assets/Ong_Gia_Va_Bien_Ca_Ernest_Hemingway_835dd9296a.jpg', 40.0000, N'Ông Già Và Biển Cả - Ernest Hemingway', N'Ông Già Và Biển Cả hay còn có tên tiếng Anh là The Old Man and the Sea, đây là một cuốn tiểu thuyết hay và vô cùng nổi tiếng được viết dưới ngòi bút của nhà văn người Mỹ - Ernest Hemingway. Tác phẩm được nhà văn sáng tác vào năm 1951 tại Cuba, đã mang về giải thưởng giá trị Pulitzer. ', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Âm Thanh Và Cuồng Nộ - William Faulkner', N'https://simg.zalopay.com.vn/zlp-website/assets/Am_Thanh_Va_Cuong_No_2c0bf46f70.jpg', 129.0000, N'Âm Thanh Và Cuồng Nộ - William Faulkner', N'Âm Thanh Và Cuồng Nộ là một trong những cuốn tiểu thuyết hay mà bạn không thể bỏ qua, được viết bởi hào văn William Faulkner. Tiểu thuyết được ấn hành lần đầu tiên vào ngày 7.10.1929, chính là tác phẩm đã giúp William Faulkner đạt đến đỉnh cao của sự thành công.  ', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Thép Đã Tôi Thế Đấy - Nikolai Ostrovsky', N'https://simg.zalopay.com.vn/zlp-website/assets/Thep_Da_Toi_The_Day_8805a69aa1.jpg', 88.0000, N'Thép Đã Tôi Thế Đấy - Nikolai Ostrovsky', N'Đối với những ai đam mê văn học lịch sử thì có lẽ sẽ biết đến Thép Đã Tôi Thế Đấy của nhà văn Nikolai Ostrovsky. Tác phẩm là một cuốn nhật ký ghi chép lại cả quá trình tôi thép, những bước đường gian khổ trưởng thành của thế hệ thanh niên Xô Viết đời đầu.  ', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Nhà Giả Kim - Paulo Coelho', N'https://simg.zalopay.com.vn/zlp-website/assets/Tieu_thuyet_Nha_Gia_Kim_169e9966ba.jpg', 48.0000, N'Nhà Giả Kim - Paulo Coelho', N'Cuốn tiểu thuyết là cả một cuộc hành trình trải nghiệm và theo đuổi vận mệnh của cậu bé chăn cừu Santiago. Cậu muốn được khám phá mọi nơi nên đã tự đi theo cuộc hành trình riêng của mình. ', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Ươm mầm - Osho', N'https://bloganchoi.com/wp-content/uploads/2022/04/uom-mam-osho-1.jpg', 109.0000, N'Ươm mầm - Osho', N'Bất cứ ai cũng đã từng là trẻ con, chúng ta đều có sự ngây thơ, thuần khiết một cách đặc biệt thế nhưng càng lớn lên chúng ta lại dễ dàng đánh mất những phẩm chất tốt đẹp này. Cuốn sách Ươm mầm của Osho sẽ giúp bạn đọc một lần nữa giải phóng tâm trí, loại bỏ tình trạng mang những khuôn mẫu sẵn có, áp đặt lên con, em của chúng ta. ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Khuyến học - Fukuzawa Yukichi', N'https://bloganchoi.com/wp-content/uploads/2022/04/khuyen-hoc-696x696.jpg', 65.0000, N'Khuyến học - Fukuzawa Yukichi', N'Khuyến học là một trong những cuốn sách về giáo dục vô cùng nổi tiếng và có tầm sâu rộng đến không chỉ là người dân Nhật Bản mà còn là trên toàn thế giới. Tinh thần tự cường, học tập để phát triển bản thân hay xóa bỏ những giới hạn, định kiến kìm hãm sự phát triển của con người,... ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Được học - Tara Westover', N'https://bloganchoi.com/wp-content/uploads/2022/04/sach-giao-duc-696x928.jpg', 182.0000, N'Được học - Tara Westover', N'Cuốn tự truyện đầy xúc động cùng sự nể phục của bạn đọc đối với nhân vật chính, Tara Westover – một người phụ nữ đã đấu tranh đến cùng chỉ để được đến trường. Cô gái Tara sinh ra trong một gia đình mang nặng những định kiến áp đặt, kìm hãm sự phát triển của một con người. ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Tôi tự học - Thu Giang Nguyễn Duy Cần', N'https://bloganchoi.com/wp-content/uploads/2022/04/toi-tu-hoc-2-696x1044.jpg', 75.0000, N'Tôi tự học - Thu Giang Nguyễn Duy Cần', N'Việc học là một hoạt động gắn liền với cuộc đời của tất cả chúng ta nhưng ít ai trong chúng ta có cách nhìn nhận đúng đắn về việc tự học. Cuốn sách Tôi tự học sẽ giúp bạn đọc lĩnh hội những phương pháp học tập, định nghĩa, mục đích về việc trau dồi kiến thức cho chính mình. Cuốn sách đã được xuất bản rất lâu đời nhưng những giá trị mà nó để lại vẫn còn nguyên vẹn và phù hợp với bất kỳ ai trong chúng ta. ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Mẹ Teresa – Trên cả tình yêu ', N'https://bloganchoi.com/wp-content/uploads/2022/04/me-teresa-tren-ca-tinh-yeu-1.jpg', 88.0000, N'Mẹ Teresa – Trên cả tình yêu', N'Không gì đơn giản hơn một hành động tử tế ta dành cho đời, cho mọi người xung quanh mình. Cuốn sách Mẹ Teresa – Trên cả tình yêu chia sẻ đến bạn đọc những thông điệp ý nghĩa về hành động tử tế chúng ta có thể lan tỏa đến cuộc sống này. ', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'SGK Toán 1', N'https://th.bing.com/th/id/OIP.ZP8wCTn5uw3PeBjem3hXogHaKZ?w=186&h=261&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 58.0000, N'SGK Toán 1', N'Sách giáo khao toán lớp 1 ', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'SGK Toán 2', N'https://th.bing.com/th/id/OIP.zpTA1c8vJ6rL9W5VPUQrDgHaKZ?w=186&h=261&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 58.0000, N'SGK Toán 2', N'Sách giáo khao toán lớp 2 ', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'SGK Toán 3', N'https://th.bing.com/th/id/OIP.o4emwgN-LbBQYBKpBm4BSgHaKZ?w=186&h=261&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 58.0000, N'SGK Toán 3', N'Sách giáo khao toán lớp 3 ', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'SGK Toán 4', N'https://th.bing.com/th/id/OIP.2GockC-gifxHOP9COn8QHAHaGk?w=186&h=165&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 58.0000, N'SGK Toán 4', N'Sách giáo khao toán lớp 4 ', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'SGK Toán 5', N'https://th.bing.com/th/id/OIP.qqrIX3E4oYxQ5mdZX9wwYQHaHa?w=186&h=186&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 58.0000, N'SGK Toán 5', N'Sách giáo khao toán lớp 5 ', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Naruto tập 1', N'https://th.bing.com/th/id/OIP.0w5z8CgJaQqhC2OiGHyFfAHaK-?w=186&h=276&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 25.0000, N'Naruto tập 1', N'Truyện tranh Naruto tập 1', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Naruto tập 2', N'https://th.bing.com/th/id/OIP.y7WxKqVwS9h8mCCulmyRwAHaLi?w=186&h=290&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 25.0000, N'Naruto tập 2', N'Truyện tranh Naruto tập 2', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Naruto tập 3', N'https://th.bing.com/th/id/OIP.vSMIr25Q2rhMoL7eXvSLNwHaLi?w=186&h=289&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 25.0000, N'Naruto tập 3', N'Truyện tranh Naruto tập 3', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'Naruto tập 4', N'https://th.bing.com/th/id/OIP.O0pkvZT_u27geuZrqHLv8QAAAA?w=186&h=302&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 25.0000, N'Naruto tập 4', N'Truyện tranh Naruto tập 4', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'Naruto tập 5', N'https://th.bing.com/th/id/OIP.AXfRLo-KvcVNTs3v4OfugQAAAA?w=186&h=261&c=7&r=0&o=5&cb=11&dpr=1.3&pid=1.7', 25.0000, N'Naruto tập 5', N'Truyện tranh Naruto tập 5', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
