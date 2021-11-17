SET IDENTITY_INSERT [dbo].[Candidate] ON
INSERT INTO [dbo].[Candidate] ([Id], [Name], [CandidateProfileWebSite]) VALUES (1, N'Greg Watson', N'http://www.greg.com')
INSERT INTO [dbo].[Candidate] ([Id], [Name], [CandidateProfileWebSite]) VALUES (2, N'Peter Kevin', N'http://www.kevinpete.com')
SET IDENTITY_INSERT [dbo].[Candidate] OFF
SET IDENTITY_INSERT [dbo].[Voter] ON
INSERT INTO [dbo].[Voter] ([Id], [Name], [Email]) VALUES (1, N'James Franklin', N'jim@gmail.com')
INSERT INTO [dbo].[Voter] ([Id], [Name], [Email]) VALUES (2, N'Kent  Thomson', N'kent@gmail.com')
SET IDENTITY_INSERT [dbo].[Voter] OFF
SET IDENTITY_INSERT [dbo].[Vote] ON
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (7, 1, 1)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (8, 1, 1)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (9, 1, 1)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (10, 1, 1)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (11, 2, 2)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (12, 2, 2)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (13, 2, 2)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (14, 2, 2)
INSERT INTO [dbo].[Vote] ([Id], [VoterId], [CandidateId]) VALUES (15, 2, 2)
SET IDENTITY_INSERT [dbo].[Vote] OFF
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'874adc70-e35c-4a4b-8096-c15781364ac7', N'voter', N'voter', N'51293c09-d6d6-48ee-8d86-7813aa75c11c')
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9a2c0cf4-42af-44d7-b5ab-dc3c6ece0af8', N'admin', N'admin', N'8551c29b-2a53-41a2-8f70-8c3b4c9678b7')
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b2def1c-4472-462d-9c5c-344a54d62478', N'kent@gmail.com', N'KENT@GMAIL.COM', N'kent@gmail.com', N'KENT@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELscKh5Wrz7oXTxzrl5d2+hK5jMko068nWQ/J+bPCPisaoEW1QxbPRhivEiqsV1Kug==', N'D3FWGY5KZSUYNFOUWFG6ZEOXEQFRVOTE', N'05b67ed8-5711-47d9-8de9-5a2c35dfcf38', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d8e5153-bd0d-4bb4-b5b2-a7c8b50320ee', N'admin@votes.com', N'ADMIN@VOTES.COM', N'admin@votes.com', N'ADMIN@VOTES.COM', 1, N'AQAAAAEAACcQAAAAEOImOVbKoJTCAjVP7uY+0tLLmqpOhJF/sl7N79g1GZNCE41FN4tdQWCUCzAaT5Zv/w==', N'JNEU6UVNTWVXNIWX63LXCBUGK5IFD2KW', N'20090056-b460-498f-b0db-d4d8bbc9cf1c', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e55c7b24-354a-4325-b868-eb5acb7be07e', N'jim@gmail.com', N'JIM@GMAIL.COM', N'jim@gmail.com', N'JIM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK0jFx6Qw4pyFVfpPe+R4Jiwkck4mKwNZwEDUCjlgL3j+8UwCF7CE6R1wZanpJATZQ==', N'TIL3ODHA4EIR3GNVRRN6V4NCVY5SJYGE', N'dda2f611-c93a-40b3-a825-56999e20e269', NULL, 0, 0, NULL, 1, 0)
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b2def1c-4472-462d-9c5c-344a54d62478', N'874adc70-e35c-4a4b-8096-c15781364ac7')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e55c7b24-354a-4325-b868-eb5acb7be07e', N'874adc70-e35c-4a4b-8096-c15781364ac7')
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d8e5153-bd0d-4bb4-b5b2-a7c8b50320ee', N'9a2c0cf4-42af-44d7-b5ab-dc3c6ece0af8')
