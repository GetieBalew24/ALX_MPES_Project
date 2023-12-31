USE [master]
GO
/****** Object:  Database [ALX_MPES]    Script Date: 7/1/2023 9:44:02 AM ******/
CREATE DATABASE [ALX_MPES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ALX_MPES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ALX_MPES.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ALX_MPES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ALX_MPES_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ALX_MPES] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ALX_MPES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ALX_MPES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ALX_MPES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ALX_MPES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ALX_MPES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ALX_MPES] SET ARITHABORT OFF 
GO
ALTER DATABASE [ALX_MPES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ALX_MPES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ALX_MPES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ALX_MPES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ALX_MPES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ALX_MPES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ALX_MPES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ALX_MPES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ALX_MPES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ALX_MPES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ALX_MPES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ALX_MPES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ALX_MPES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ALX_MPES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ALX_MPES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ALX_MPES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ALX_MPES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ALX_MPES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ALX_MPES] SET  MULTI_USER 
GO
ALTER DATABASE [ALX_MPES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ALX_MPES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ALX_MPES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ALX_MPES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ALX_MPES] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ALX_MPES]
GO
/****** Object:  Table [dbo].[TBL_Account]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Account](
	[User_ID] [nvarchar](50) NOT NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL CONSTRAINT [DF__TBL_Accou__passw__22AA2996]  DEFAULT ('123456++'),
	[Account_status] [int] NOT NULL CONSTRAINT [DF__TBL_Accou__Accou__239E4DCF]  DEFAULT ('1'),
	[Created_Date] [date] NOT NULL CONSTRAINT [DF__TBL_Accou__Creat__24927208]  DEFAULT (getdate()),
	[Created_by] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Criteria]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Criteria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CriteriaID] [nvarchar](50) NOT NULL,
	[CriteriaName] [nvarchar](200) NOT NULL,
	[CreatedDate] [date] NULL CONSTRAINT [DF__TBL_Crite__Creat__05D8E0BE]  DEFAULT (getdate()),
	[Createdtime] [time](7) NULL CONSTRAINT [DF__TBL_Crite__Creat__06CD04F7]  DEFAULT (getdate()),
	[Createdby] [nvarchar](50) NULL,
	[Modifiedby] [nvarchar](50) NULL,
	[Modifieddate] [date] NULL,
	[Modifiedtime] [time](7) NULL,
	[modstatus] [int] NULL CONSTRAINT [DF__TBL_Crite__modst__07C12930]  DEFAULT ((0)),
 CONSTRAINT [PK__TBL_Crit__FE6ADB2DEFAADB5F] PRIMARY KEY CLUSTERED 
(
	[CriteriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Departement]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Departement](
	[Dept_code] [nvarchar](50) NULL,
	[Dept_name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Evaluation_Data]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Evaluation_Data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mentor_id] [nvarchar](50) NOT NULL,
	[evaluator_id] [nvarchar](50) NULL,
	[evaluation_date] [date] NULL CONSTRAINT [DF_TBL_Evaluation_Data_evaluation_date]  DEFAULT (getdate()),
	[CriteriaID] [nvarchar](50) NULL,
	[Criteria_result] [int] NULL,
	[Acc_year] [date] NULL CONSTRAINT [DF_TBL_Evaluation_Data_Acc_year]  DEFAULT (getdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Evaluation_Result]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Evaluation_Result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mentor_ID] [nvarchar](50) NULL,
	[evaluator_id] [nvarchar](50) NULL,
	[result] [real] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_EvaluationCriteria_catagory]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_EvaluationCriteria_catagory](
	[CriteriaID] [nvarchar](200) NOT NULL,
	[CriteriaName] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBL_EvaluationCriteria] PRIMARY KEY CLUSTERED 
(
	[CriteriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Mentor]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Mentor](
	[mentor_id] [nvarchar](50) NOT NULL,
	[first_name] [nchar](10) NULL,
	[middle_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[departement] [nvarchar](50) NULL,
	[specialization] [nvarchar](50) NULL,
	[Reg_Date] [date] NULL CONSTRAINT [DF__TBL_Mento__Reg_D__6383C8BA]  DEFAULT (getdate()),
 CONSTRAINT [PK_TBL_Mentor] PRIMARY KEY CLUSTERED 
(
	[mentor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Mentor_evaluation_Result]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Mentor_evaluation_Result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mentor_name] [nvarchar](50) NOT NULL,
	[Totalresult] [real] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Menu]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Menu](
	[MenuId] [nvarchar](50) NOT NULL,
	[ParentMenu] [nvarchar](50) NULL,
	[MenuName] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_Student]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Student](
	[StudID] [nvarchar](50) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Middle_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Cohort] [int] NULL,
	[Age] [int] NULL,
	[Sex] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Dept_code] [nvarchar](50) NULL,
	[Acadmic_year] [nvarchar](50) NULL,
	[Registration_Date] [date] NULL,
 CONSTRAINT [PK_TBL_Student] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_UsermenuRole]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UsermenuRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[MenuId] [nvarchar](50) NULL,
	[Status] [int] NULL CONSTRAINT [DF_TBL_UsermenuRole_Status]  DEFAULT ((0)),
	[Assignedby] [nvarchar](50) NULL,
	[date] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[sumResult]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create view [dbo].[sumResult]  as

  select  sum([Criteria_result]) as ABC from TBL_Evaluation_Data where mentor_id=1111 and  evaluator_id=3333

GO
ALTER TABLE [dbo].[TBL_Evaluation_Result]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Evaluation_Result_TBL_Mentor] FOREIGN KEY([mentor_ID])
REFERENCES [dbo].[TBL_Mentor] ([mentor_id])
GO
ALTER TABLE [dbo].[TBL_Evaluation_Result] CHECK CONSTRAINT [FK_TBL_Evaluation_Result_TBL_Mentor]
GO
ALTER TABLE [dbo].[TBL_Evaluation_Result]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Evaluation_Result_TBL_Student] FOREIGN KEY([evaluator_id])
REFERENCES [dbo].[TBL_Student] ([StudID])
GO
ALTER TABLE [dbo].[TBL_Evaluation_Result] CHECK CONSTRAINT [FK_TBL_Evaluation_Result_TBL_Student]
GO
ALTER TABLE [dbo].[TBL_Student]  WITH NOCHECK ADD  CONSTRAINT [FK_TBL_Student_TBL_Student] FOREIGN KEY([StudID])
REFERENCES [dbo].[TBL_Student] ([StudID])
GO
ALTER TABLE [dbo].[TBL_Student] CHECK CONSTRAINT [FK_TBL_Student_TBL_Student]
GO
ALTER TABLE [dbo].[TBL_UsermenuRole]  WITH CHECK ADD  CONSTRAINT [FK_TBL_UsermenuRole_TBL_Account1] FOREIGN KEY([Username])
REFERENCES [dbo].[TBL_Account] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TBL_UsermenuRole] CHECK CONSTRAINT [FK_TBL_UsermenuRole_TBL_Account1]
GO
/****** Object:  StoredProcedure [dbo].[AddDept]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[AddDept]
(
@deptcode nvarchar(50),
@deptname nvarchar(50)
)
AS
BEGIN
INSERT INTO TBL_Departement(Dept_code,Dept_name) 
VALUES (@deptcode,@deptname)	
END
GO
/****** Object:  StoredProcedure [dbo].[addevaluationCriteria]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[addevaluationCriteria](
                @CriteriaID nvarchar(50),
                @CriteriaName nvarchar(50),
                @Createdby nvarchar(50))
AS
BEGIN
	insert into TBL_Criteria(CriteriaID,CriteriaName,Createdby) values( @CriteriaID, @CriteriaName, @Createdby)
	
END
GO
/****** Object:  StoredProcedure [dbo].[addevaluationdata]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[addevaluationdata](
                @mentorID nvarchar(50),
                @evaluatorid nvarchar(50),
                @criteriaid nvarchar(50),
				@criteriaresult int
				)
AS
BEGIN
	insert into TBL_Evaluation_Data(mentor_id,evaluator_id,CriteriaID,Criteria_result) values(@mentorID , @evaluatorid, @criteriaid,@criteriaresult)
	
END
GO
/****** Object:  StoredProcedure [dbo].[addevaulationresult]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[addevaulationresult](
                @mentorid nvarchar(50),
                @evaluatorid nvarchar(50),
                @result float
				)
AS
BEGIN
	insert into TBL_Evaluation_Result(mentor_ID,evaluator_id,result) values( @mentorid, @evaluatorid,@result)
	
END

GO
/****** Object:  StoredProcedure [dbo].[AddMenu]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[AddMenu]
(
@menuid nvarchar(50),
@parentmenu nvarchar(50),
@menuname nvarchar(50),
@link nvarchar(50)
)
AS
BEGIN
INSERT INTO TBL_Menu(MenuId,ParentMenu,MenuName,Link) 
VALUES (@menuid,@parentmenu,@menuname,@link)	
END
GO
/****** Object:  StoredProcedure [dbo].[AssignRole]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AssignRole]
(
@uname nvarchar(50),
@menuid nvarchar(50),
@status int,
@assignedby nvarchar(50),
@date Date
)
AS
BEGIN
INSERT INTO TBL_UsermenuRole(Username,MenuId,Status,Assignedby,date) 
VALUES (@uname,@menuid,@status,@assignedby,@date)	
END
GO
/****** Object:  StoredProcedure [dbo].[averageresult]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[averageresult](
                @mentorname nvarchar(50),
                @Average_result real
				)
AS
BEGIN
	insert into TBL_Mentor_evaluation_Result(mentor_name,Totalresult) values( @mentorname, @Average_result)
	
END
GO
/****** Object:  StoredProcedure [dbo].[createaccount]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[createaccount]
(
@userid nvarchar(50),
@fname nvarchar(50),
@lname nvarchar(50),
@email nvarchar(50),
@dept nvarchar(50),
@username nvarchar(50),
@password nvarchar(50),
@astatus int,
@createdby nvarchar(50),
@role nvarchar(50)
)
AS
BEGIN
INSERT INTO TBL_Account(User_ID,First_Name,Last_Name,Email,Department,Username,password,Account_status,Created_by,Role) 
VALUES (@userid, @fname, @lname,@email,@dept,@username,@password,@astatus,@createdby,@role)	
END
GO
/****** Object:  StoredProcedure [dbo].[registermentor]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[registermentor]
(
@mid nvarchar(50),
@mfname nvarchar(50),
@mmname nvarchar(50),
@mlname nvarchar(50),
@email nvarchar(50),
@dept nvarchar(50),
@special nvarchar(50)
)
AS
BEGIN
INSERT INTO TBL_Mentor(mentor_id,first_name,middle_name,last_name,email,departement,specialization) 
VALUES (@mid,@mfname,@mmname,@mlname,@email,@dept,@special)	
END
GO
/****** Object:  StoredProcedure [dbo].[updatepassword]    Script Date: 7/1/2023 9:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[updatepassword]
@password nvarchar(50),
@username nvarchar(50)
AS
BEGIN
	update TBL_Account set password=@password
where Username=@username
END
GO
USE [master]
GO
ALTER DATABASE [ALX_MPES] SET  READ_WRITE 
GO
