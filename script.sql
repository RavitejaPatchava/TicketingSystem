USE [TicketingSystem]
GO
/****** Object:  Table [dbo].[DepartmentList]    Script Date: 2021-06-07 7:19:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_DepartmentList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDepartmentDetails]    Script Date: 2021-06-07 7:19:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDepartmentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[DepartmentId] [int] NULL,
	[CreatedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_EmployeeDepartmentDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeList]    Script Date: 2021-06-07 7:19:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[CreatedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_EmployeeList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketRequests]    Script Date: 2021-06-07 7:19:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[EmployeeDeparmentId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_TicketRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DepartmentList] ON 

INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (1, N'Office of Statistical Data Connectivity', CAST(N'2021-06-05T10:52:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (2, N'Division of Telecommunications Extranet Development', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (3, N'Hardware Backup Department', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (4, N'Network Maintenance and Multimedia Implementation Committee', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (5, N'Database Programming Branch', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (6, N'Extranet Multimedia Connectivity and Security Division', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (7, N'Software Technology and Networking Department', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (8, N'Bureau of Business-Oriented PC Backup and Wireless Telecommunications Control', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (9, N'Multimedia Troubleshooting and Maintenance Team', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (10, N'Branch of Extranet Implementation', CAST(N'2021-06-05T10:54:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (11, N'Wireless Extranet Backup Team', CAST(N'2021-06-05T10:55:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (12, N'Branch of Intranet Computer Maintenance and E-Commerce PC Programming', CAST(N'2021-06-05T10:55:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (13, N'Mainframe PC Development and Practical Source Code Acquisition Team', CAST(N'2021-06-05T10:55:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (14, N'PC Maintenance Department', CAST(N'2021-06-05T10:55:00' AS SmallDateTime))
INSERT [dbo].[DepartmentList] ([Id], [DepartmentName], [CreatedDate]) VALUES (15, N'Division of Application Security', CAST(N'2021-06-05T10:56:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[DepartmentList] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeDepartmentDetails] ON 

INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (1, 1, 1, CAST(N'2021-06-05T11:41:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (2, 2, 2, CAST(N'2021-06-05T11:43:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (3, 3, 3, CAST(N'2021-06-05T11:43:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (4, 4, 4, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (5, 5, 3, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (6, 6, 3, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (7, 7, 5, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (8, 8, 6, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (9, 9, 7, CAST(N'2021-06-05T11:49:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (10, 10, 3, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (11, 11, 8, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (12, 12, 9, CAST(N'2021-06-05T11:44:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (13, 13, 6, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (14, 14, 10, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (15, 15, 9, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (16, 16, 2, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (17, 17, 11, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (18, 18, 9, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (19, 19, 4, CAST(N'2021-06-05T11:45:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (20, 20, 10, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (21, 21, 12, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (22, 22, 1, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (23, 23, 3, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (24, 24, 4, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (25, 25, 6, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (26, 26, 2, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (27, 27, 13, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (28, 28, 5, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (29, 29, 12, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (30, 30, 14, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (31, 31, 15, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (32, 32, 11, CAST(N'2021-06-05T11:46:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (33, 33, 2, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (34, 34, 15, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (35, 35, 9, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (36, 36, 12, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (37, 37, 11, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (38, 38, 6, CAST(N'2021-06-05T11:47:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (39, 39, 5, CAST(N'2021-06-05T11:48:00' AS SmallDateTime))
INSERT [dbo].[EmployeeDepartmentDetails] ([Id], [EmployeeId], [DepartmentId], [CreatedDate]) VALUES (40, 40, 4, CAST(N'2021-06-05T11:48:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[EmployeeDepartmentDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeList] ON 

INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (1, N'Alexandra', N'Brendle', CAST(N'2021-06-05T10:57:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (2, N'Alissa', N'Perlman', CAST(N'2021-06-05T11:06:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (3, N'Altha', N'Rudisill', CAST(N'2021-06-05T11:06:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (4, N'Boyce', N'Perales', CAST(N'2021-06-05T11:07:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (5, N'Claudine', N'Valderrama', CAST(N'2021-06-05T11:08:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (6, N'Colton', N'Kranz', CAST(N'2021-06-05T11:08:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (7, N'Dalila', N'Vickrey', CAST(N'2021-06-05T11:09:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (8, N'Delorse', N'Searle', CAST(N'2021-06-05T11:10:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (9, N'Diego', N'Hasbrouck', CAST(N'2021-06-05T11:10:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (10, N'Farah', N'Eldridge', CAST(N'2021-06-05T11:10:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (11, N'Greta', N'Quigg', CAST(N'2021-06-05T11:11:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (12, N'Hilario', N'Masterson', CAST(N'2021-06-05T11:11:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (13, N'Hugo', N'Wess', CAST(N'2021-06-05T11:11:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (14, N'Idella', N'Dallman', CAST(N'2021-06-05T11:12:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (15, N'Ione', N'Tomlin', CAST(N'2021-06-05T11:12:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (16, N'Janelle', N'Newberg', CAST(N'2021-06-05T11:13:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (17, N'Janice', N'Skipper', CAST(N'2021-06-05T11:14:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (18, N'Kasie', N'Barclay', CAST(N'2021-06-05T11:14:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (19, N'Katheryn', N'Lepak', CAST(N'2021-06-05T11:14:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (20, N'Kelvin', N'Lahr', CAST(N'2021-06-05T11:15:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (21, N'Kenneth', N'Bowie', CAST(N'2021-06-05T11:15:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (22, N'Keren', N'Gillespi', CAST(N'2021-06-05T11:15:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (23, N'Lana', N'Montes', CAST(N'2021-06-05T11:15:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (24, N'Latoyia', N'Kremer', CAST(N'2021-06-05T11:16:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (25, N'Leola', N'Thornburg', CAST(N'2021-06-05T11:16:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (26, N'Linh', N'Leitzel', CAST(N'2021-06-05T11:16:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (27, N'Luciano', N'Riddell', CAST(N'2021-06-05T11:17:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (28, N'Marcelo', N'Paris', CAST(N'2021-06-05T11:17:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (29, N'Mellie', N'Lombard', CAST(N'2021-06-05T11:17:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (30, N'Olene', N'Pyron', CAST(N'2021-06-05T11:18:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (31, N'Olympia', N'Vien', CAST(N'2021-06-05T11:18:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (32, N'Reita', N'Abshire', CAST(N'2021-06-05T11:18:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (33, N'Roma', N'Marcell', CAST(N'2021-06-05T11:19:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (34, N'Rosalia', N'Ayoub', CAST(N'2021-06-05T11:19:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (35, N'Sage', N'Bow', CAST(N'2021-06-05T11:19:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (36, N'Shawna', N'Hood', CAST(N'2021-06-05T11:20:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (37, N'Tawna', N'Blackmore', CAST(N'2021-06-05T11:20:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (38, N'Thresa', N'Levins', CAST(N'2021-06-05T11:20:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (39, N'Tomoko', N'Gale', CAST(N'2021-06-05T11:20:00' AS SmallDateTime))
INSERT [dbo].[EmployeeList] ([Id], [FirstName], [LastName], [CreatedDate]) VALUES (40, N'Wilfredo', N'Stumpf', CAST(N'2021-06-05T11:21:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[EmployeeList] OFF
GO
SET IDENTITY_INSERT [dbo].[TicketRequests] ON 

INSERT [dbo].[TicketRequests] ([Id], [ProjectName], [EmployeeDeparmentId], [Description], [CreatedDate]) VALUES (1, N'Test 1', 16, N'sample data', CAST(N'2021-06-05T19:40:00' AS SmallDateTime))
INSERT [dbo].[TicketRequests] ([Id], [ProjectName], [EmployeeDeparmentId], [Description], [CreatedDate]) VALUES (2, N'Test 2', 24, N'Issue in system', CAST(N'2021-06-05T20:24:00' AS SmallDateTime))
INSERT [dbo].[TicketRequests] ([Id], [ProjectName], [EmployeeDeparmentId], [Description], [CreatedDate]) VALUES (3, N'Test 3', 2, N'System not working', CAST(N'2021-06-06T08:55:00' AS SmallDateTime))
INSERT [dbo].[TicketRequests] ([Id], [ProjectName], [EmployeeDeparmentId], [Description], [CreatedDate]) VALUES (4, N'Test 1', 22, N'Unable to login', CAST(N'2021-06-06T09:32:00' AS SmallDateTime))
INSERT [dbo].[TicketRequests] ([Id], [ProjectName], [EmployeeDeparmentId], [Description], [CreatedDate]) VALUES (5, N'Test 2', 4, N'Server not available', CAST(N'2021-06-06T09:35:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TicketRequests] OFF
GO
ALTER TABLE [dbo].[DepartmentList] ADD  CONSTRAINT [DF_DepartmentList_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeDepartmentDetails] ADD  CONSTRAINT [DF_EmployeeDepartmentDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeList] ADD  CONSTRAINT [DF_EmployeeList_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TicketRequests] ADD  CONSTRAINT [DF_TicketRequests_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeDepartmentDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDepartmentDetails_DepartmentList] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DepartmentList] ([Id])
GO
ALTER TABLE [dbo].[EmployeeDepartmentDetails] CHECK CONSTRAINT [FK_EmployeeDepartmentDetails_DepartmentList]
GO
ALTER TABLE [dbo].[EmployeeDepartmentDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDepartmentDetails_EmployeeList] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeList] ([Id])
GO
ALTER TABLE [dbo].[EmployeeDepartmentDetails] CHECK CONSTRAINT [FK_EmployeeDepartmentDetails_EmployeeList]
GO
ALTER TABLE [dbo].[TicketRequests]  WITH CHECK ADD  CONSTRAINT [FK_TicketRequests_EmployeeDepartmentDetails] FOREIGN KEY([EmployeeDeparmentId])
REFERENCES [dbo].[EmployeeDepartmentDetails] ([Id])
GO
ALTER TABLE [dbo].[TicketRequests] CHECK CONSTRAINT [FK_TicketRequests_EmployeeDepartmentDetails]
GO
