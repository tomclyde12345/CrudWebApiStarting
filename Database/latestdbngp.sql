USE [Webapidb]
GO
/****** Object:  Table [dbo].[ngp_contract]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_contract](
	[contractID] [int] IDENTITY(1,1) NOT NULL,
	[location_municipality] [int] NULL,
	[location_barangay] [int] NULL,
	[location_sitio] [nvarchar](100) NULL,
	[area] [nvarchar](100) NULL,
	[commodity] [nvarchar](50) NULL,
	[commodity_type] [int] NULL,
	[survival_rate] [nvarchar](100) NULL,
	[project_name] [nvarchar](100) NULL,
	[contract_cost] [nvarchar](100) NULL,
	[site_code] [int] NULL,
	[year_established] [int] NULL,
	[num_seedlings_planted] [nvarchar](100) NULL,
	[num_seedlings_produced] [nvarchar](100) NULL,
	[num_seedlings_survived] [nvarchar](100) NULL,
	[num_seedlings_replanted] [nvarchar](100) NULL,
	[num_seedlings_survived_year1] [nvarchar](100) NULL,
	[dropdownID] [int] NULL,
 CONSTRAINT [PK_ngp_contract] PRIMARY KEY CLUSTERED 
(
	[contractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_contractor]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_contractor](
	[contractorID] [int] IDENTITY(1,1) NOT NULL,
	[contractor_name] [nvarchar](100) NULL,
	[address_municipality] [int] NULL,
	[address_barangay] [int] NULL,
	[contractor_type] [int] NULL,
 CONSTRAINT [PK_ngp_contractor] PRIMARY KEY CLUSTERED 
(
	[contractorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_dropdown]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_dropdown](
	[dropdownID] [int] IDENTITY(1,1) NOT NULL,
	[year_established] [int] NOT NULL,
	[region] [int] NOT NULL,
	[penro] [int] NOT NULL,
	[cenro] [int] NOT NULL,
 CONSTRAINT [PK_ngp_dropdown] PRIMARY KEY CLUSTERED 
(
	[dropdownID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_history]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_history](
	[historyID] [int] IDENTITY(1,1) NOT NULL,
	[user_no] [int] NULL,
	[contractor_no] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[historyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_payment]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_payment](
	[paymentID] [int] NOT NULL,
	[contract_no] [int] NULL,
	[contractor_no] [int] NULL,
	[num_release] [nvarchar](100) NULL,
 CONSTRAINT [PK_ngp_payment] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_projects]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_projects](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[site_code] [nvarchar](100) NULL,
	[location_municipality] [int] NULL,
	[location_barangay] [int] NULL,
	[area] [nvarchar](100) NULL,
	[year_form] [int] NULL,
	[penro] [int] NULL,
	[cenro] [int] NULL,
	[region] [int] NULL,
	[dropdownID] [int] NULL,
 CONSTRAINT [PK_dbo.ngpdbms] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_sched]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_sched](
	[schedID] [int] IDENTITY(1,1) NOT NULL,
	[ors_no] [nvarchar](100) NULL,
	[ors_date] [nvarchar](100) NULL,
	[dv_no] [nvarchar](100) NULL,
	[dv_date] [nvarchar](100) NULL,
	[lddap_no] [nvarchar](100) NULL,
	[lddap_date] [nvarchar](100) NULL,
	[contractor_no] [int] NULL,
	[contract_no] [int] NULL,
 CONSTRAINT [PK_ngp_sched] PRIMARY KEY CLUSTERED 
(
	[schedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngp_users]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngp_users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[roleID] [int] NULL,
 CONSTRAINT [PK_ngp_users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpBarangay]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpBarangay](
	[BarangayId] [int] IDENTITY(1,1) NOT NULL,
	[BarangayName] [nvarchar](100) NULL,
	[MunicipalityId] [int] NULL,
 CONSTRAINT [PK_NgpBarangay] PRIMARY KEY CLUSTERED 
(
	[BarangayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpDropdown]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpDropdown](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year_Estb] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[Penro] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[AddressMunicipality] [nvarchar](100) NULL,
	[AddressBarangay] [nvarchar](100) NULL,
	[LocationMunicipality] [nvarchar](100) NULL,
	[LocationBarangay] [nvarchar](100) NULL,
	[CenroId] [nvarchar](100) NULL,
 CONSTRAINT [PK_NgpDropdown] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpMunicipality]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpMunicipality](
	[MunicipalityId] [int] IDENTITY(1,1) NOT NULL,
	[MunicipalityName] [nvarchar](100) NULL,
 CONSTRAINT [PK_NgpMunicipality] PRIMARY KEY CLUSTERED 
(
	[MunicipalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpRole]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
 CONSTRAINT [PK_SampleRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpUpload]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpUpload](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilePath] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[AccountId] [int] NULL,
 CONSTRAINT [PK_SampleUpload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpUser]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[RoleID] [int] NULL,
	[FileName] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_IppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgpYear]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgpYear](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectNameId] [int] NULL,
	[moa_number] [nvarchar](100) NULL,
	[Date_moa] [nvarchar](100) NULL,
	[Unit_cost] [nvarchar](100) NULL,
	[contract_cost] [nvarchar](100) NULL,
	[date_obligated] [nvarchar](100) NULL,
	[ors_no] [nvarchar](100) NULL,
	[no_seedings_produced] [nvarchar](100) NULL,
	[commodity_forest] [nvarchar](100) NULL,
	[commodity_fruit] [nvarchar](100) NULL,
	[commodity_bamboo] [nvarchar](100) NULL,
	[no_seedlings_planted] [nvarchar](100) NULL,
	[no_seedlings_survived] [nvarchar](100) NULL,
	[survival_rate] [nvarchar](100) NULL,
	[year_contracted] [nvarchar](100) NULL,
	[moa3] [nvarchar](100) NULL,
	[moa2] [nvarchar](100) NULL,
	[no_seedlings_year1] [nvarchar](100) NULL,
	[no_seedlings_replanted] [nvarchar](100) NULL,
	[no_seedlings_replanted3] [nvarchar](100) NULL,
	[no_seedlings_year3] [nvarchar](100) NULL,
	[ContractorNameId] [int] NULL,
 CONSTRAINT [PK_NgpYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleTribe]    Script Date: 25/03/2023 4:47:50 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleTribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_IppTribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ngp_contract] ON 

INSERT [dbo].[ngp_contract] ([contractID], [location_municipality], [location_barangay], [location_sitio], [area], [commodity], [commodity_type], [survival_rate], [project_name], [contract_cost], [site_code], [year_established], [num_seedlings_planted], [num_seedlings_produced], [num_seedlings_survived], [num_seedlings_replanted], [num_seedlings_survived_year1], [dropdownID]) VALUES (1, NULL, NULL, N'asdas', N'dasdas', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ngp_contract] OFF
GO
SET IDENTITY_INSERT [dbo].[ngp_contractor] ON 

INSERT [dbo].[ngp_contractor] ([contractorID], [contractor_name], [address_municipality], [address_barangay], [contractor_type]) VALUES (1, N'try onlytyhf', NULL, NULL, NULL)
INSERT [dbo].[ngp_contractor] ([contractorID], [contractor_name], [address_municipality], [address_barangay], [contractor_type]) VALUES (2, N'FDSFDS', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ngp_contractor] OFF
GO
SET IDENTITY_INSERT [dbo].[ngp_projects] ON 

INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (2, N'try only ', NULL, NULL, N'testy', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (3, N'hello ', NULL, NULL, N'try', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (4, N'asdas', NULL, NULL, N'sdadas', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (5, N'asdas', NULL, NULL, N'asdadas', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ngp_projects] ([projectID], [site_code], [location_municipality], [location_barangay], [area], [year_form], [penro], [cenro], [region], [dropdownID]) VALUES (6, N'rtyrre', NULL, NULL, N'dfgdf', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ngp_projects] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpBarangay] ON 

INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (1, N'aborlan1', 1)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (2, N'aborlan2', 1)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (3, N'aborlan3', 1)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (4, N'agutaya1', 2)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (5, N'agutaya2', 2)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (6, N'agutaya3', 2)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (7, N'araceli1', 3)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (8, N'araceli2', 3)
INSERT [dbo].[NgpBarangay] ([BarangayId], [BarangayName], [MunicipalityId]) VALUES (9, N'araceli3', 3)
SET IDENTITY_INSERT [dbo].[NgpBarangay] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpDropdown] ON 

INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (1, N'2011', N'RegionIV-B', N'PENRO', NULL, N'Aborlan', N'Apo-Aporawan, Aborlan', N'Aborlan', N'locationbarangay1', N'Cenro-PuertoPrincesa')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (2, N'2012', NULL, NULL, NULL, N'Agutaya', N'Apoc-Apoc, Aborlan', N'Agutaya', N'locationbarangay2', N'Cenro-Quezon')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (3, N'2013', NULL, NULL, NULL, N'Araceli', N'Aporawan, Aborlan', N'Araceli', N'locationbarangay3', N'Cenro-BrookesPoint')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (4, N'2014', NULL, NULL, NULL, N'Balabac', N'Barake, Aborlan', N'Balabac', N'locationbarangay4', N'Cenro-Conron')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (5, N'2015', NULL, NULL, NULL, N'Bataraza', N'Cabigaan, Aborlan', N'Bataraza', N'locationbarangay5', N'Cenro-Taytay')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (6, N'2016', NULL, NULL, NULL, N'Brooke''s Point', N'Culandanum, Aborlan', N'Brooke''s Point', NULL, N'Cenro-Roxas')
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (7, N'2017', NULL, NULL, NULL, N'Busuanga', N'Gogognan, Aborlan', N'Busuanga', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (8, N'2018', NULL, NULL, NULL, N'Cagayancillo', N'Iraan, Aborlan', N'Cagayancillo', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (9, N'2019', NULL, NULL, NULL, N'Coron', N'Isaub, Aborlan', N'Coron', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (10, N'2020', NULL, NULL, NULL, N'Culion', N'Jose Rizal, Aborlan', N'Culion', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (11, N'2021', NULL, NULL, NULL, N'Cuyo', N'Mabini, Aborlan', N'Cuyo', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (12, N'2022', NULL, NULL, NULL, N'Dumaran', N'Magbabadil, Aborlan', N'Dumaran', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (13, N'2023', NULL, NULL, NULL, N'El Nido', N'Plaridel, Aborlan', N'El Nido', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (14, N'2024', NULL, NULL, NULL, N'Kalayaan', N'Poblacion, Aborlan', N'Kalayaan', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (15, N'2025', NULL, NULL, NULL, N'Linapacan', N'Ramon Magsaysay, Aborlan', N'Linapacan', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (16, N'2026', NULL, NULL, NULL, N'Magsaysay', N'Sagpangan, Aborlan', N'Magsaysay', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (17, NULL, NULL, NULL, NULL, N'Narra', N'San Juan, Aborlan', N'Narra', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (18, NULL, NULL, NULL, NULL, N'Puerto Princesa', N'Tagpait, Aborlan', N'Puerto Princesa', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (19, NULL, NULL, NULL, NULL, N'Quezon', N'Tigman, Aborlan', N'Quezon', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (20, NULL, NULL, NULL, NULL, N'Rizal', N'Abagat, Agutaya', N'Rizal', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (21, NULL, NULL, NULL, NULL, N'Roxas', N'Algeciras, Agutaya', N'Roxas', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (22, NULL, NULL, NULL, NULL, N'San Vicente', N'Bangcal, Agutaya', N'San Vicente', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (23, NULL, NULL, NULL, NULL, N'Sofronio Española', N'Cambian, Agutaya', N'Sofronio Española', NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (24, NULL, NULL, NULL, NULL, N'Taytay', N'Concepcion, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (25, NULL, NULL, NULL, NULL, NULL, N'Diit, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (26, NULL, NULL, NULL, NULL, NULL, N'Maracanao, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (27, NULL, NULL, NULL, NULL, NULL, N'Matarawis, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (28, NULL, NULL, NULL, NULL, NULL, N'Villafria, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (29, NULL, NULL, NULL, NULL, NULL, N'Villasol, Agutaya', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (30, NULL, NULL, NULL, NULL, NULL, N'Balogo, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (31, NULL, NULL, NULL, NULL, NULL, N'Dagman, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (32, NULL, NULL, NULL, NULL, NULL, N'Dalayawon, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (33, NULL, NULL, NULL, NULL, NULL, N'Lumacad, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (34, NULL, NULL, NULL, NULL, NULL, N'Madoldolon, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (35, NULL, NULL, NULL, NULL, NULL, N'Mauringuen, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (36, NULL, NULL, NULL, NULL, NULL, N'Osmeña, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (37, NULL, NULL, NULL, NULL, NULL, N'Poblacion, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (38, NULL, NULL, NULL, NULL, NULL, N'San Jose De Oro, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (39, NULL, NULL, NULL, NULL, NULL, N'Santo Niño, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (40, NULL, NULL, NULL, NULL, NULL, N'Taloto, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (41, NULL, NULL, NULL, NULL, NULL, N'Tinintinan, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (42, NULL, NULL, NULL, NULL, NULL, N'Tudela, Araceli', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (43, NULL, NULL, NULL, NULL, NULL, N'Agutayan, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (44, NULL, NULL, NULL, NULL, NULL, N'Bancalaan, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (45, NULL, NULL, NULL, NULL, NULL, N'Bugsuk, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (46, NULL, NULL, NULL, NULL, NULL, N'Catagupan, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (47, NULL, NULL, NULL, NULL, NULL, N'Indalawan, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (48, NULL, NULL, NULL, NULL, NULL, N'Malaking Ilog, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (49, NULL, NULL, NULL, NULL, NULL, N'Mangsee, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (50, NULL, NULL, NULL, NULL, NULL, N'Melville, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (51, NULL, NULL, NULL, NULL, NULL, N'Pandanan, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (52, NULL, NULL, NULL, NULL, NULL, N'Pasig, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (53, NULL, NULL, NULL, NULL, NULL, N'Poblacion I, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (54, NULL, NULL, NULL, NULL, NULL, N'Poblacion II, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (55, NULL, NULL, NULL, NULL, NULL, N'Poblacion III, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (56, NULL, NULL, NULL, NULL, NULL, N'Poblacion IV, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (57, NULL, NULL, NULL, NULL, NULL, N'Poblacion V, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (58, NULL, NULL, NULL, NULL, NULL, N'Poblacion VI, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (59, NULL, NULL, NULL, NULL, NULL, N'Rabor, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (60, NULL, NULL, NULL, NULL, NULL, N'Salang, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (61, NULL, NULL, NULL, NULL, NULL, N'Sebaring, Balabac', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (62, NULL, NULL, NULL, NULL, NULL, N'Bono-bono, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (63, NULL, NULL, NULL, NULL, NULL, N'Bulalacao, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (64, NULL, NULL, NULL, NULL, NULL, N'Buliluyan, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (65, NULL, NULL, NULL, NULL, NULL, N'Culandanum, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (66, NULL, NULL, NULL, NULL, NULL, N'Igang-igang, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (67, NULL, NULL, NULL, NULL, NULL, N'Inogbog, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (68, NULL, NULL, NULL, NULL, NULL, N'Iwahig, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (69, NULL, NULL, NULL, NULL, NULL, N'Malihud, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (70, NULL, NULL, NULL, NULL, NULL, N'Malitub, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (71, NULL, NULL, NULL, NULL, NULL, N'Marangas, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (72, NULL, NULL, NULL, NULL, NULL, N'Ocayan, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (73, NULL, NULL, NULL, NULL, NULL, N'Puring, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (74, NULL, NULL, NULL, NULL, NULL, N'Rio Tuba, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (75, NULL, NULL, NULL, NULL, NULL, N'Sandoval, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (76, NULL, NULL, NULL, NULL, NULL, N'Sapa, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (77, NULL, NULL, NULL, NULL, NULL, N'Sarong, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (78, NULL, NULL, NULL, NULL, NULL, N'Sumbiling, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (79, NULL, NULL, NULL, NULL, NULL, N'Tabud, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (80, NULL, NULL, NULL, NULL, NULL, N'Tagnato, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (81, NULL, NULL, NULL, NULL, NULL, N'Tagolango, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (82, NULL, NULL, NULL, NULL, NULL, N'Taratak, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (83, NULL, NULL, NULL, NULL, NULL, N'Tarusan, Bataraza', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (84, NULL, NULL, NULL, NULL, NULL, N'Amas, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (85, NULL, NULL, NULL, NULL, NULL, N'Aribungos, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (86, NULL, NULL, NULL, NULL, NULL, N'Barong-barong, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (87, NULL, NULL, NULL, NULL, NULL, N'Calasaguen, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (88, NULL, NULL, NULL, NULL, NULL, N'Imulnod, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (89, NULL, NULL, NULL, NULL, NULL, N'Ipilan, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (90, NULL, NULL, NULL, NULL, NULL, N'Maasin, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (91, NULL, NULL, NULL, NULL, NULL, N'Mainit, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (92, NULL, NULL, NULL, NULL, NULL, N'Malis, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (93, NULL, NULL, NULL, NULL, NULL, N'Mambalot, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (94, NULL, NULL, NULL, NULL, NULL, N'Oring-oring, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (95, NULL, NULL, NULL, NULL, NULL, N'Pangobilian, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (96, NULL, NULL, NULL, NULL, NULL, N'Poblacion I, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (97, NULL, NULL, NULL, NULL, NULL, N'Poblacion II, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (98, NULL, NULL, NULL, NULL, NULL, N'Salogon, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (99, NULL, NULL, NULL, NULL, NULL, N'Samareñana, Brooke''s Point', NULL, NULL, NULL)
GO
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (100, NULL, NULL, NULL, NULL, NULL, N'Saraza, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (101, NULL, NULL, NULL, NULL, NULL, N'Tubtub, Brooke''s Point', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (102, NULL, NULL, NULL, NULL, NULL, N'Bogtong, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (103, NULL, NULL, NULL, NULL, NULL, N'Buluang, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (104, NULL, NULL, NULL, NULL, NULL, N'Cheey, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (105, NULL, NULL, NULL, NULL, NULL, N'Concepcion, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (106, NULL, NULL, NULL, NULL, NULL, N'Maglalambay, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (107, NULL, NULL, NULL, NULL, NULL, N'New Busuanga, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (108, NULL, NULL, NULL, NULL, NULL, N'Old Busuanga, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (109, NULL, NULL, NULL, NULL, NULL, N'Panlaitan, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (110, NULL, NULL, NULL, NULL, NULL, N'Quezon, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (111, NULL, NULL, NULL, NULL, NULL, N'Sagrada, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (112, NULL, NULL, NULL, NULL, NULL, N'Salvacion, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (113, NULL, NULL, NULL, NULL, NULL, N'San Isidro, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (114, NULL, NULL, NULL, NULL, NULL, N'San Rafael, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (115, NULL, NULL, NULL, NULL, NULL, N'Santo Niño, Busuanga', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (116, NULL, NULL, NULL, NULL, NULL, N'Bantayan, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (117, NULL, NULL, NULL, NULL, NULL, N'Calsada, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (118, NULL, NULL, NULL, NULL, NULL, N'Convento, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (119, NULL, NULL, NULL, NULL, NULL, N'Lipot North, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (120, NULL, NULL, NULL, NULL, NULL, N'Lipot South, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (121, NULL, NULL, NULL, NULL, NULL, N'Magsaysa, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (122, NULL, NULL, NULL, NULL, NULL, N'Mampio, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (123, NULL, NULL, NULL, NULL, NULL, N'Nusa, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (124, NULL, NULL, NULL, NULL, NULL, N'Santa Cruz, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (125, NULL, NULL, NULL, NULL, NULL, N'Tacas, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (126, NULL, NULL, NULL, NULL, NULL, N'Talaga, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (127, NULL, NULL, NULL, NULL, NULL, N'Wahig, Cagayancillo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (128, NULL, NULL, NULL, NULL, NULL, N'Banuang Daan, , Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (129, NULL, NULL, NULL, NULL, NULL, N'Barangay I, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (130, NULL, NULL, NULL, NULL, NULL, N'Barangay II, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (131, NULL, NULL, NULL, NULL, NULL, N'Barangay III, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (132, NULL, NULL, NULL, NULL, NULL, N'Barangay IV, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (133, NULL, NULL, NULL, NULL, NULL, N'Barangay V, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (134, NULL, NULL, NULL, NULL, NULL, N'Barangay VI, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (135, NULL, NULL, NULL, NULL, NULL, N'Bintuan, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (136, NULL, NULL, NULL, NULL, NULL, N'Borac, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (137, NULL, NULL, NULL, NULL, NULL, N'Buenavista, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (138, NULL, NULL, NULL, NULL, NULL, N'Bulalacao, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (139, NULL, NULL, NULL, NULL, NULL, N'Cabugao, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (140, NULL, NULL, NULL, NULL, NULL, N'Decabobo, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (141, NULL, NULL, NULL, NULL, NULL, N'Decalachao, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (142, NULL, NULL, NULL, NULL, NULL, N'Guadalape, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (143, NULL, NULL, NULL, NULL, NULL, N'Lajala, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (144, NULL, NULL, NULL, NULL, NULL, N'Malawig, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (145, NULL, NULL, NULL, NULL, NULL, N'Marcilla, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (146, NULL, NULL, NULL, NULL, NULL, N'San Jose, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (147, NULL, NULL, NULL, NULL, NULL, N'San Nicolas, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (148, NULL, NULL, NULL, NULL, NULL, N'Tagumpay, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (149, NULL, NULL, NULL, NULL, NULL, N'Tara, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (150, NULL, NULL, NULL, NULL, NULL, N'Turda, Coron', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (151, NULL, NULL, NULL, NULL, NULL, N'Balala, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (152, NULL, NULL, NULL, NULL, NULL, N'Baldat, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (153, NULL, NULL, NULL, NULL, NULL, N'Binudac, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (154, NULL, NULL, NULL, NULL, NULL, N'Burabod, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (155, NULL, NULL, NULL, NULL, NULL, N'Culango, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (156, NULL, NULL, NULL, NULL, NULL, N'De Carabao, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (157, NULL, NULL, NULL, NULL, NULL, N'Galoc, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (158, NULL, NULL, NULL, NULL, NULL, N'Halsey, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (159, NULL, NULL, NULL, NULL, NULL, N'Jardin, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (160, NULL, NULL, NULL, NULL, NULL, N'Libis, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (161, NULL, NULL, NULL, NULL, NULL, N'Luac, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (162, NULL, NULL, NULL, NULL, NULL, N'Malaking Patag, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (163, NULL, NULL, NULL, NULL, NULL, N'Osmeña, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (164, NULL, NULL, NULL, NULL, NULL, N'Tiza, Culion', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (165, NULL, NULL, NULL, NULL, NULL, N'Balading, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (166, NULL, NULL, NULL, NULL, NULL, N'Bangcal, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (167, NULL, NULL, NULL, NULL, NULL, N'Cabigsing, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (168, NULL, NULL, NULL, NULL, NULL, N'Caburian, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (169, NULL, NULL, NULL, NULL, NULL, N'Caponayan, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (170, NULL, NULL, NULL, NULL, NULL, N'Catadman, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (171, NULL, NULL, NULL, NULL, NULL, N'Funda, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (172, NULL, NULL, NULL, NULL, NULL, N'Lagaoriao, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (173, NULL, NULL, NULL, NULL, NULL, N'Lubid, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (174, NULL, NULL, NULL, NULL, NULL, N'Lungsod, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (175, NULL, NULL, NULL, NULL, NULL, N'Manamoc, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (176, NULL, NULL, NULL, NULL, NULL, N'Maringian, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (177, NULL, NULL, NULL, NULL, NULL, N'Pawa, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (178, NULL, NULL, NULL, NULL, NULL, N'San Carlos, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (179, NULL, NULL, NULL, NULL, NULL, N'Suba, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (180, NULL, NULL, NULL, NULL, NULL, N'Tenga-tenga, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (181, NULL, NULL, NULL, NULL, NULL, N'Tocadan, Cuyo', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (182, NULL, NULL, NULL, NULL, NULL, N'Bacao, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (183, NULL, NULL, NULL, NULL, NULL, N'Bohol, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (184, NULL, NULL, NULL, NULL, NULL, N'Calasag, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (185, NULL, NULL, NULL, NULL, NULL, N'Capayas, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (186, NULL, NULL, NULL, NULL, NULL, N'Catep, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (187, NULL, NULL, NULL, NULL, NULL, N'Culasian, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (188, NULL, NULL, NULL, NULL, NULL, N'Danleg, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (189, NULL, NULL, NULL, NULL, NULL, N'Dumaran, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (190, NULL, NULL, NULL, NULL, NULL, N'Ilian, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (191, NULL, NULL, NULL, NULL, NULL, N'Itangil, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (192, NULL, NULL, NULL, NULL, NULL, N'Magsaysay, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (193, NULL, NULL, NULL, NULL, NULL, N'San Juan, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (194, NULL, NULL, NULL, NULL, NULL, N'Santa Maria, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (195, NULL, NULL, NULL, NULL, NULL, N'Santa Teresita, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (196, NULL, NULL, NULL, NULL, NULL, N'Santo Tomas, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (197, NULL, NULL, NULL, NULL, NULL, N'Tanatanaon, Dumaran', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (198, NULL, NULL, NULL, NULL, NULL, N'Aberawan, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (199, NULL, NULL, NULL, NULL, NULL, N'Bagong Bayan, El Nido', NULL, NULL, NULL)
GO
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (200, NULL, NULL, NULL, NULL, NULL, N'Barotuan, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (201, NULL, NULL, NULL, NULL, NULL, N'Bebeladan, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (202, NULL, NULL, NULL, NULL, NULL, N'Bucana, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (203, NULL, NULL, NULL, NULL, NULL, N'Buena Suerta Poblacion, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (204, NULL, NULL, NULL, NULL, NULL, N'Corong-corong Poblacion, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (205, NULL, NULL, NULL, NULL, NULL, N'Mabini, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (206, NULL, NULL, NULL, NULL, NULL, N'Maligaya Poblacion, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (207, NULL, NULL, NULL, NULL, NULL, N'Manlag, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (208, NULL, NULL, NULL, NULL, NULL, N'Masagana Poblacion, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (209, NULL, NULL, NULL, NULL, NULL, N'New Ibajay, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (210, NULL, NULL, NULL, NULL, NULL, N'Pasadeña, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (211, NULL, NULL, NULL, NULL, NULL, N'San Fernando, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (212, NULL, NULL, NULL, NULL, NULL, N'Sibaltan, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (213, NULL, NULL, NULL, NULL, NULL, N'Teneguiban, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (214, NULL, NULL, NULL, NULL, NULL, N'Villa Libertad, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (215, NULL, NULL, NULL, NULL, NULL, N'Villa Paz, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (216, NULL, NULL, NULL, NULL, NULL, N'Pag-asa, El Nido', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (217, NULL, NULL, NULL, NULL, NULL, N'Barangonan, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (218, NULL, NULL, NULL, NULL, NULL, N'Cabunlawan, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (219, NULL, NULL, NULL, NULL, NULL, N'Calibangbangan, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (220, NULL, NULL, NULL, NULL, NULL, N'Decabaitot, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (221, NULL, NULL, NULL, NULL, NULL, N'Maroyogroyog, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (222, NULL, NULL, NULL, NULL, NULL, N'Nangalao, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (223, NULL, NULL, NULL, NULL, NULL, N'New Culaylayan, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (224, NULL, NULL, NULL, NULL, NULL, N'Pical, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (225, NULL, NULL, NULL, NULL, NULL, N'San Miguel, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (226, NULL, NULL, NULL, NULL, NULL, N'San Nicolas, Linapacan', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (227, NULL, NULL, NULL, NULL, NULL, N'Alcoba, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (228, NULL, NULL, NULL, NULL, NULL, N'Balaguen, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (229, NULL, NULL, NULL, NULL, NULL, N'Canipo, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (230, NULL, NULL, NULL, NULL, NULL, N'Cocoro, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (231, NULL, NULL, NULL, NULL, NULL, N'Danawan, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (232, NULL, NULL, NULL, NULL, NULL, N'Emilod, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (233, NULL, NULL, NULL, NULL, NULL, N'Igabas, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (234, NULL, NULL, NULL, NULL, NULL, N'Lacaren, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (235, NULL, NULL, NULL, NULL, NULL, N'Los Angeles, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (236, NULL, NULL, NULL, NULL, NULL, N'Lucbuan, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (237, NULL, NULL, NULL, NULL, NULL, N'Rizal, Magsaysay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (238, NULL, NULL, NULL, NULL, NULL, N'Antipuluan, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (239, NULL, NULL, NULL, NULL, NULL, N'Aramaywan, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (240, NULL, NULL, NULL, NULL, NULL, N'Bagong Sikat, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (241, NULL, NULL, NULL, NULL, NULL, N'Batang-batang, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (242, NULL, NULL, NULL, NULL, NULL, N'Bato-bato, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (243, NULL, NULL, NULL, NULL, NULL, N'Burirao, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (244, NULL, NULL, NULL, NULL, NULL, N'Caguisan, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (245, NULL, NULL, NULL, NULL, NULL, N'Calategas, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (246, NULL, NULL, NULL, NULL, NULL, N'Dumagueña, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (247, NULL, NULL, NULL, NULL, NULL, N'Elvita, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (248, NULL, NULL, NULL, NULL, NULL, N'Estrella Village, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (249, NULL, NULL, NULL, NULL, NULL, N'Ipilan, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (250, NULL, NULL, NULL, NULL, NULL, N'Malatgao, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (251, NULL, NULL, NULL, NULL, NULL, N'Malinao, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (252, NULL, NULL, NULL, NULL, NULL, N'Narra, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (253, NULL, NULL, NULL, NULL, NULL, N'Panacan, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (254, NULL, NULL, NULL, NULL, NULL, N'Panacan 2, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (255, NULL, NULL, NULL, NULL, NULL, N'Princess Urduja 2, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (256, NULL, NULL, NULL, NULL, NULL, N'Sandoval, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (257, NULL, NULL, NULL, NULL, NULL, N'Tacras, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (258, NULL, NULL, NULL, NULL, NULL, N'Taritien, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (259, NULL, NULL, NULL, NULL, NULL, N'Teresa, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (260, NULL, NULL, NULL, NULL, NULL, N'Tinagong Dagat, Narra', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (261, NULL, NULL, NULL, NULL, NULL, N'Alfonso XIII, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (262, NULL, NULL, NULL, NULL, NULL, N'Aramaywan, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (263, NULL, NULL, NULL, NULL, NULL, N'Berong, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (264, NULL, NULL, NULL, NULL, NULL, N'Calatagbak, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (265, NULL, NULL, NULL, NULL, NULL, N'Calumpang, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (266, NULL, NULL, NULL, NULL, NULL, N'Isugod, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (267, NULL, NULL, NULL, NULL, NULL, N'Maasin, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (268, NULL, NULL, NULL, NULL, NULL, N'Malatgao, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (269, NULL, NULL, NULL, NULL, NULL, N'Panitian, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (270, NULL, NULL, NULL, NULL, NULL, N'Pinaglalabanan, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (271, NULL, NULL, NULL, NULL, NULL, N'Quinlogan, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (272, NULL, NULL, NULL, NULL, NULL, N'Sowangan, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (273, NULL, NULL, NULL, NULL, NULL, N'Tabon, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (274, NULL, NULL, NULL, NULL, NULL, N'Tagusao, Quezon', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (275, NULL, NULL, NULL, NULL, NULL, N'Bunog, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (276, NULL, NULL, NULL, NULL, NULL, N'Campong Ulay, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (277, NULL, NULL, NULL, NULL, NULL, N'Candawaga, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (278, NULL, NULL, NULL, NULL, NULL, N'Canipaan, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (279, NULL, NULL, NULL, NULL, NULL, N'Culasian, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (280, NULL, NULL, NULL, NULL, NULL, N'Iraan, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (281, NULL, NULL, NULL, NULL, NULL, N'Latud, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (282, NULL, NULL, NULL, NULL, NULL, N'Panalingaan, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (283, NULL, NULL, NULL, NULL, NULL, N'Punta Baja, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (284, NULL, NULL, NULL, NULL, NULL, N'Ransang, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (285, NULL, NULL, NULL, NULL, NULL, N'Taburi, Rizal', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (286, NULL, NULL, NULL, NULL, NULL, N'Abaroan, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (287, NULL, NULL, NULL, NULL, NULL, N'Antonino, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (288, NULL, NULL, NULL, NULL, NULL, N'Bagong Bayan, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (289, NULL, NULL, NULL, NULL, NULL, N'Barangay 1, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (290, NULL, NULL, NULL, NULL, NULL, N'Barangay II, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (291, NULL, NULL, NULL, NULL, NULL, N'Barangay III, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (292, NULL, NULL, NULL, NULL, NULL, N'Barangay IV, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (293, NULL, NULL, NULL, NULL, NULL, N'Barangay V Poblacion, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (294, NULL, NULL, NULL, NULL, NULL, N'Barangay VI Poblacion, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (295, NULL, NULL, NULL, NULL, NULL, N'Caramay, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (296, NULL, NULL, NULL, NULL, NULL, N'Dumarao, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (297, NULL, NULL, NULL, NULL, NULL, N'Iraan, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (298, NULL, NULL, NULL, NULL, NULL, N'Jolo, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (299, NULL, NULL, NULL, NULL, NULL, N'Magara, Roxas', NULL, NULL, NULL)
GO
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (300, NULL, NULL, NULL, NULL, NULL, N'Malcampo, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (301, NULL, NULL, NULL, NULL, NULL, N'Mendoza, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (302, NULL, NULL, NULL, NULL, NULL, N'Narra, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (303, NULL, NULL, NULL, NULL, NULL, N'New Barbacan, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (304, NULL, NULL, NULL, NULL, NULL, N'New Cuyo, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (305, NULL, NULL, NULL, NULL, NULL, N'Nicanor Zabala, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (306, NULL, NULL, NULL, NULL, NULL, N'Rizal, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (307, NULL, NULL, NULL, NULL, NULL, N'Salvacion, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (308, NULL, NULL, NULL, NULL, NULL, N'San Isidro, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (309, NULL, NULL, NULL, NULL, NULL, N'San Jose, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (310, NULL, NULL, NULL, NULL, NULL, N'San Miguel, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (311, NULL, NULL, NULL, NULL, NULL, N'San Nicolas, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (312, NULL, NULL, NULL, NULL, NULL, N'Sandoval, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (313, NULL, NULL, NULL, NULL, NULL, N'Tagumpay, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (314, NULL, NULL, NULL, NULL, NULL, N'Taradungan, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (315, NULL, NULL, NULL, NULL, NULL, N'Tinitian, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (316, NULL, NULL, NULL, NULL, NULL, N'Tumarbong, Roxas', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (317, NULL, NULL, NULL, NULL, NULL, N'Alimanguan, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (318, NULL, NULL, NULL, NULL, NULL, N'Binga, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (319, NULL, NULL, NULL, NULL, NULL, N'Caruray, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (320, NULL, NULL, NULL, NULL, NULL, N'Kemdeng, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (321, NULL, NULL, NULL, NULL, NULL, N'New Agutaya, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (322, NULL, NULL, NULL, NULL, NULL, N'New Canipo, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (323, NULL, NULL, NULL, NULL, NULL, N'Poblacion, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (324, NULL, NULL, NULL, NULL, NULL, N'Port Barton, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (325, NULL, NULL, NULL, NULL, NULL, N'San Isidro, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (326, NULL, NULL, NULL, NULL, NULL, N'Santo Niño, San Vicente', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (327, NULL, NULL, NULL, NULL, NULL, N'Abo-abo, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (328, NULL, NULL, NULL, NULL, NULL, N'Iraray, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (329, NULL, NULL, NULL, NULL, NULL, N'Isumbo, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (330, NULL, NULL, NULL, NULL, NULL, N'Labog, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (331, NULL, NULL, NULL, NULL, NULL, N'Panitian, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (332, NULL, NULL, NULL, NULL, NULL, N'Pulot Center, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (333, NULL, NULL, NULL, NULL, NULL, N'Pulot Interior, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (334, NULL, NULL, NULL, NULL, NULL, N'Pulot Shore, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (335, NULL, NULL, NULL, NULL, NULL, N'Punang, Sofronio Española', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (336, NULL, NULL, NULL, NULL, NULL, N'Abongan, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (337, NULL, NULL, NULL, NULL, NULL, N'Alacalian, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (338, NULL, NULL, NULL, NULL, NULL, N'Banbanan, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (339, NULL, NULL, NULL, NULL, NULL, N'Bantulan, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (340, NULL, NULL, NULL, NULL, NULL, N'Baras, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (341, NULL, NULL, NULL, NULL, NULL, N'Batas, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (342, NULL, NULL, NULL, NULL, NULL, N'Bato, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (343, NULL, NULL, NULL, NULL, NULL, N'Beton, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (344, NULL, NULL, NULL, NULL, NULL, N'Busy bees, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (345, NULL, NULL, NULL, NULL, NULL, N'Calawag, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (346, NULL, NULL, NULL, NULL, NULL, N'Casian, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (347, NULL, NULL, NULL, NULL, NULL, N'Cataban, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (348, NULL, NULL, NULL, NULL, NULL, N'Debangan, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (349, NULL, NULL, NULL, NULL, NULL, N'Depla, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (350, NULL, NULL, NULL, NULL, NULL, N'Libertad, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (351, NULL, NULL, NULL, NULL, NULL, N'Liminangcong, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (352, NULL, NULL, NULL, NULL, NULL, N'Meytegued, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (353, NULL, NULL, NULL, NULL, NULL, N'Minapla, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (354, NULL, NULL, NULL, NULL, NULL, N'New Guinlo, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (355, NULL, NULL, NULL, NULL, NULL, N'Old Guinlo, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (356, NULL, NULL, NULL, NULL, NULL, N'Paglaum, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (357, NULL, NULL, NULL, NULL, NULL, N'Paly, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (358, NULL, NULL, NULL, NULL, NULL, N'Pamantolon, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (359, NULL, NULL, NULL, NULL, NULL, N'Pancol, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (360, NULL, NULL, NULL, NULL, NULL, N'Poblacion, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (361, NULL, NULL, NULL, NULL, NULL, N'Pularaquen, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (362, NULL, NULL, NULL, NULL, NULL, N'San Jose, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (363, NULL, NULL, NULL, NULL, NULL, N'Sandoval, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (364, NULL, NULL, NULL, NULL, NULL, N'Silanga, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (365, NULL, NULL, NULL, NULL, NULL, N'Talog, Taytay', NULL, NULL, NULL)
INSERT [dbo].[NgpDropdown] ([Id], [Year_Estb], [Region], [Penro], [Address], [AddressMunicipality], [AddressBarangay], [LocationMunicipality], [LocationBarangay], [CenroId]) VALUES (366, NULL, NULL, NULL, NULL, NULL, N'Tumbod, Taytay', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NgpDropdown] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpMunicipality] ON 

INSERT [dbo].[NgpMunicipality] ([MunicipalityId], [MunicipalityName]) VALUES (1, N'Aborlan')
INSERT [dbo].[NgpMunicipality] ([MunicipalityId], [MunicipalityName]) VALUES (2, N'Agutaya')
INSERT [dbo].[NgpMunicipality] ([MunicipalityId], [MunicipalityName]) VALUES (3, N'Araceli')
SET IDENTITY_INSERT [dbo].[NgpMunicipality] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpRole] ON 

INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (1, N'NgpAdmin')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (2, N'Cenro-PuertoPrincesa')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (3, N'Cenro-Quezon')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (5, N'Cenro-BrookesPoint')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (6, N'Cenro-Conron')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (7, N'Cenro-Taytay')
INSERT [dbo].[NgpRole] ([Id], [RoleName]) VALUES (8, N'Cenro-Roxas')
SET IDENTITY_INSERT [dbo].[NgpRole] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpUpload] ON 

INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (6, N'/SampleImg/638125764624495039-cardo.jpg', N'cardo.jpg', 1009)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (7, N'/SampleImg/638125767582911146-316604975_1537901736623240_8363927175242894806_n.jpg', N'316604975_1537901736623240_8363927175242894806_n.jpg', 1010)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (8, N'/DefaultImage/city-hall.png', N'', 1011)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (9, N'/SampleImg/638126561945868237-cardo.jpg', N'cardo.jpg', 1010)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (10, N'/SampleImg/638126562160698082-316604975_1537901736623240_8363927175242894806_n.jpg', N'316604975_1537901736623240_8363927175242894806_n.jpg', 1010)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (11, N'/SampleImg/638126742084726629-cardo.jpg', N'cardo.jpg', 1011)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (12, N'/SampleImg/638126761398767520-city-hall.png', N'city-hall.png', 1011)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (13, N'/DefaultImage/city-hall.png', N'', 1014)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (14, N'/SampleImg/638126976087010778-330935990_723717895999120_6144170317081791837_n.jpg', N'330935990_723717895999120_6144170317081791837_n.jpg', 1014)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (15, N'/SampleImg/638127569545069500-city-hall.png', N'city-hall.png', 1010)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (16, N'/DefaultImage/city-hall.png', N'', 1015)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (17, N'/DefaultImage/city-hall.png', N'', 1016)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (18, N'/SampleImg/638131045665112669-city-hall.png', N'city-hall.png', 1016)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (19, N'/SampleImg/638131045887305062-city-hall.png', N'city-hall.png', 1016)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (20, N'/SampleImg/638134344225863947-cardo.jpg', N'cardo.jpg', 1017)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (21, N'/SampleImg/638134371204512396-9JC5.gif', N'9JC5.gif', 1034)
INSERT [dbo].[NgpUpload] ([Id], [FilePath], [FileName], [AccountId]) VALUES (22, N'/SampleImg/638134371465859011-2866403.png', N'2866403.png', 1034)
SET IDENTITY_INSERT [dbo].[NgpUpload] OFF
GO
SET IDENTITY_INSERT [dbo].[NgpUser] ON 

INSERT [dbo].[NgpUser] ([Id], [Name], [Email], [UserName], [Password], [RoleID], [FileName], [FilePath]) VALUES (1032, N'asdasdaseae', N'tom@gmail.com', N'sample123', N'$s2$16384$8$1$+SCLok+6uHYKfs8xtJvPdm8uTcbJtmcfzxOIVmnkAOA=$JSkcsB60h4A+VPVwYkfDzOnOzMdrzjuS19Rywa+BhLU=', 2, N'330935990_723717895999120_6144170317081791837_n.jpg', N'/SampleImg/638134352924697259-330935990_723717895999120_6144170317081791837_n.jpg')
INSERT [dbo].[NgpUser] ([Id], [Name], [Email], [UserName], [Password], [RoleID], [FileName], [FilePath]) VALUES (1034, N'Tom Clyde Basig', N'tomclydebasig@gmail.com', N'tom123', N'$s2$16384$8$1$8tx9PJqSfQ6EjA0PvHqfA2f6RZg7n8T2DzpyNxQgJl8=$N5md9qT2dIXVTAeCPQ0az3qUDjIvmhLi8ChQC9u06Tc=', 1, N'cardo.jpg', N'/SampleImg/638134356132609714-cardo.jpg')
INSERT [dbo].[NgpUser] ([Id], [Name], [Email], [UserName], [Password], [RoleID], [FileName], [FilePath]) VALUES (1035, N'Cheska Vellaluna', N'cheska@gmail.com', N'cheska123', N'$s2$16384$8$1$nAdjuBabLUapDS17RHuxA9ra6ckeKzz/3Ur9Xq+LciU=$BaD4old4TblL8TDsNthOtapfnfDlEYg9jv3casrvFSU=', 5, N'', N'/DefaultImage/city-hall.png')
INSERT [dbo].[NgpUser] ([Id], [Name], [Email], [UserName], [Password], [RoleID], [FileName], [FilePath]) VALUES (1037, N'Qwerty Man', N'qwerty@gmailc.com', N'qwerty123', N'$s2$16384$8$1$AVV5sK0YnGOmBpaImi4DymGbyRykSWHTp/NlMluFVXY=$dHkgl5pClFKFj7BcIMnpN20/qhJGQQXhGf0nhgsbxko=', 1, N'51468-3D-Digital-Art-CGI-Black-RedAbstract-Hexagon-HD.png', N'/SampleImg/638134556565394953-51468-3D-Digital-Art-CGI-Black-RedAbstract-Hexagon-HD.png')
SET IDENTITY_INSERT [dbo].[NgpUser] OFF
GO
SET IDENTITY_INSERT [dbo].[SampleTribe] ON 

INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (3, N'safsafas')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (4, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (5, N'gdfhgfhgfhgfhgfhgfhfg')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (6, N'dsfdsfsd')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (7, N'clyde gaming')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (8, N'gegege')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (9, N'afasfsa')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (10, N'ADAS')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (11, N'ASDSADSA')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (12, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (13, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (14, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (15, N'ASDASDSA')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (16, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (17, N'fdfdsfds')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (18, N'ASDASDAS')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (19, N'GDSGDSGDS')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (20, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (21, N'dsfds')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (22, N'asdsadsa')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (23, N'sdfsdfds')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (24, N'try')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (25, NULL)
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (26, N'asdasdas')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (27, N'asdsadsa')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (28, N'tytrytr')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (29, N'asdas')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (30, N'asfsa')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (31, N'ASDSADSA')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (32, N'DASDAS')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (33, N'adasdasd')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (34, N'Tom Clyde Basig')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (35, N'ASDASDAS')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (36, N'asfasfas')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (37, N'Tulian Dvision')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (38, N'AWEE')
INSERT [dbo].[SampleTribe] ([Id], [Name]) VALUES (39, N'sAMPLE ONLY')
SET IDENTITY_INSERT [dbo].[SampleTribe] OFF
GO
ALTER TABLE [dbo].[ngp_contract]  WITH CHECK ADD  CONSTRAINT [FK_ngp_contract_ngp_dropdown] FOREIGN KEY([dropdownID])
REFERENCES [dbo].[ngp_dropdown] ([dropdownID])
GO
ALTER TABLE [dbo].[ngp_contract] CHECK CONSTRAINT [FK_ngp_contract_ngp_dropdown]
GO
ALTER TABLE [dbo].[ngp_history]  WITH CHECK ADD  CONSTRAINT [FK_ngp_history_ngp_contractor] FOREIGN KEY([contractor_no])
REFERENCES [dbo].[ngp_contractor] ([contractorID])
GO
ALTER TABLE [dbo].[ngp_history] CHECK CONSTRAINT [FK_ngp_history_ngp_contractor]
GO
ALTER TABLE [dbo].[ngp_history]  WITH CHECK ADD  CONSTRAINT [FK_ngp_history_ngp_users] FOREIGN KEY([user_no])
REFERENCES [dbo].[ngp_users] ([userID])
GO
ALTER TABLE [dbo].[ngp_history] CHECK CONSTRAINT [FK_ngp_history_ngp_users]
GO
ALTER TABLE [dbo].[ngp_payment]  WITH CHECK ADD  CONSTRAINT [FK_ngp_payment_ngp_contract] FOREIGN KEY([contract_no])
REFERENCES [dbo].[ngp_contract] ([contractID])
GO
ALTER TABLE [dbo].[ngp_payment] CHECK CONSTRAINT [FK_ngp_payment_ngp_contract]
GO
ALTER TABLE [dbo].[ngp_payment]  WITH CHECK ADD  CONSTRAINT [FK_ngp_payment_ngp_contractor] FOREIGN KEY([contractor_no])
REFERENCES [dbo].[ngp_contractor] ([contractorID])
GO
ALTER TABLE [dbo].[ngp_payment] CHECK CONSTRAINT [FK_ngp_payment_ngp_contractor]
GO
ALTER TABLE [dbo].[ngp_projects]  WITH CHECK ADD  CONSTRAINT [FK_ngp_projects_ngp_dropdown] FOREIGN KEY([dropdownID])
REFERENCES [dbo].[ngp_dropdown] ([dropdownID])
GO
ALTER TABLE [dbo].[ngp_projects] CHECK CONSTRAINT [FK_ngp_projects_ngp_dropdown]
GO
ALTER TABLE [dbo].[ngp_projects]  WITH CHECK ADD  CONSTRAINT [FK_ngp_projects_NgpBarangay] FOREIGN KEY([location_barangay])
REFERENCES [dbo].[NgpBarangay] ([BarangayId])
GO
ALTER TABLE [dbo].[ngp_projects] CHECK CONSTRAINT [FK_ngp_projects_NgpBarangay]
GO
ALTER TABLE [dbo].[ngp_projects]  WITH CHECK ADD  CONSTRAINT [FK_ngp_projects_NgpMunicipality] FOREIGN KEY([location_municipality])
REFERENCES [dbo].[NgpMunicipality] ([MunicipalityId])
GO
ALTER TABLE [dbo].[ngp_projects] CHECK CONSTRAINT [FK_ngp_projects_NgpMunicipality]
GO
ALTER TABLE [dbo].[ngp_sched]  WITH CHECK ADD  CONSTRAINT [FK_ngp_sched_ngp_contract] FOREIGN KEY([contract_no])
REFERENCES [dbo].[ngp_contract] ([contractID])
GO
ALTER TABLE [dbo].[ngp_sched] CHECK CONSTRAINT [FK_ngp_sched_ngp_contract]
GO
ALTER TABLE [dbo].[ngp_sched]  WITH CHECK ADD  CONSTRAINT [FK_ngp_sched_ngp_contractor] FOREIGN KEY([contractor_no])
REFERENCES [dbo].[ngp_contractor] ([contractorID])
GO
ALTER TABLE [dbo].[ngp_sched] CHECK CONSTRAINT [FK_ngp_sched_ngp_contractor]
GO
ALTER TABLE [dbo].[NgpBarangay]  WITH CHECK ADD  CONSTRAINT [FK_NgpBarangay_NgpMunicipality] FOREIGN KEY([MunicipalityId])
REFERENCES [dbo].[NgpMunicipality] ([MunicipalityId])
GO
ALTER TABLE [dbo].[NgpBarangay] CHECK CONSTRAINT [FK_NgpBarangay_NgpMunicipality]
GO
ALTER TABLE [dbo].[NgpUser]  WITH CHECK ADD  CONSTRAINT [FK_NgpUser_NgpRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[NgpRole] ([Id])
GO
ALTER TABLE [dbo].[NgpUser] CHECK CONSTRAINT [FK_NgpUser_NgpRole]
GO
