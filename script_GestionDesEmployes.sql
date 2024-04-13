USE [master]
GO
/****** Object:  Database [GestionDesEmployes]    Script Date: 13/04/2024 16:53:12 ******/
CREATE DATABASE [GestionDesEmployes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestionDesEmployes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GestionDesEmployes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestionDesEmployes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GestionDesEmployes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GestionDesEmployes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestionDesEmployes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestionDesEmployes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestionDesEmployes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestionDesEmployes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GestionDesEmployes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestionDesEmployes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GestionDesEmployes] SET  MULTI_USER 
GO
ALTER DATABASE [GestionDesEmployes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestionDesEmployes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestionDesEmployes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestionDesEmployes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestionDesEmployes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestionDesEmployes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GestionDesEmployes] SET QUERY_STORE = OFF
GO
USE [GestionDesEmployes]
GO
/****** Object:  Table [dbo].[Affectation_Navbar]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affectation_Navbar](
	[ID_Affectation] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[Type] [nvarchar](max) NULL,
	[ID_NavBar] [int] NULL,
 CONSTRAINT [PK_Affectation_Navbar] PRIMARY KEY CLUSTERED 
(
	[ID_Affectation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[ID_Discipline] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Discipline] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[ID_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[ID_Employes] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](max) NULL,
	[Prenom] [nvarchar](max) NULL,
	[Dat_nais] [date] NULL,
	[Email] [nvarchar](max) NULL,
	[Adresse] [nvarchar](max) NULL,
	[Telephone] [int] NULL,
	[ID_Fonction] [int] NULL,
	[ID_Societe] [int] NULL,
	[ID_Niveau] [int] NULL,
	[Ville] [nvarchar](max) NULL,
	[Etat] [bit] NULL,
	[ID_Discipline] [int] NULL,
	[ID_Matricule] [int] NULL,
	[ImageEmployer] [nvarchar](max) NULL,
	[ID_Relation] [int] NULL,
	[Date_recrutement] [date] NULL,
 CONSTRAINT [PK_Employes] PRIMARY KEY CLUSTERED 
(
	[ID_Employes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etat_Nomenclature]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etat_Nomenclature](
	[ID_Etat] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Etat] [nvarchar](max) NULL,
	[Lien] [nvarchar](max) NULL,
	[Etats] [bit] NULL,
 CONSTRAINT [PK_Etat_Nomenclature] PRIMARY KEY CLUSTERED 
(
	[ID_Etat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fonctions]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fonctions](
	[ID_Fonction] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Fonction] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fonctions] PRIMARY KEY CLUSTERED 
(
	[ID_Fonction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricule](
	[ID_Matricule] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Matricule] [nvarchar](max) NULL,
 CONSTRAINT [PK_Matricule] PRIMARY KEY CLUSTERED 
(
	[ID_Matricule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NavBar]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavBar](
	[ID_NavBar] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Box] [bit] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_NavBar] PRIMARY KEY CLUSTERED 
(
	[ID_NavBar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Niveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Niveau](
	[ID_Niveau] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Niveau] [nvarchar](max) NULL,
 CONSTRAINT [PK_Niveau] PRIMARY KEY CLUSTERED 
(
	[ID_Niveau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomenclatureRole]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomenclatureRole](
	[ID_Role] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_NomenclatureRole] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relation]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[ID_Relation] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Relation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Relation] PRIMARY KEY CLUSTERED 
(
	[ID_Relation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Societer]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Societer](
	[ID_Societe] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Societe] [varchar](50) NULL,
 CONSTRAINT [PK_Societer] PRIMARY KEY CLUSTERED 
(
	[ID_Societe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilisateurUser]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilisateurUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[users] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[ID_Role] [int] NULL,
 CONSTRAINT [PK_UtilisateurUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAffectationNavbar]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DeleteAffectationNavbar]
	@ID_Affectation int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Affectation_Navbar WHERE ID_Affectation=@ID_Affectation
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDiscipline]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DeleteDiscipline]
	@ID_Discipline int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Discipline WHERE ID_Discipline=@ID_Discipline
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployes]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DeleteEmployes]
	@ID_Employes int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Employes WHERE ID_Employes=@ID_Employes
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEtats]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteEtats]
	@ID_Etat int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Etat_Nomenclature WHERE ID_Etat=@ID_Etat
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFonction]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFonction]
	@ID_Fonction int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Fonctions WHERE ID_Fonction=@ID_Fonction
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteMatricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteMatricule]
	@ID_Matricule int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  DELETE FROM Matricule WHERE ID_Matricule=@ID_Matricule
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteNiveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteNiveau]
	@ID_Niveau int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Niveau WHERE ID_Niveau=@ID_Niveau
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRelation]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteRelation]
	@ID_Relation int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM Relation WHERE ID_Relation=@ID_Relation
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DeleteRole]
	@ID_Role int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM NomenclatureRole WHERE ID_Role=@ID_Role
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSocieter]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteSocieter]
	@ID_Societe int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   delete from Societer where ID_Societe=@ID_Societe
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUtilisateur]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteUtilisateur]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   DELETE FROM UtilisateurUser WHERE id=@id 
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeByMatricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeeByMatricule]
@Matricule int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select NE.Lien, em.ID_Employes, em.ID_Matricule,Nom + ' ' + Prenom as NomEtPrenom,Nom,Prenom,
   Description ,Nom_Fonction,Nom_Societe,Etat,em.ImageEmployer ,Adresse,Dat_nais,Nom_Relation,
   Date_recrutement,Telephone,Email,Ville,N.ID_Niveau,ID_Matricule,
   dis.ID_Discipline,s.ID_Societe,f.ID_Fonction,R.ID_Relation,ID_Etat,Etats
   
   
   
   from Employes em

         inner join dbo.Discipline dis
		 on dis.ID_Discipline=em.ID_Discipline

		 inner join dbo.Fonctions F
		 on F.ID_Fonction=em.ID_Fonction

		 inner join dbo.Societer S
		 on S.ID_Societe=em.ID_Societe 

		 inner join dbo.Etat_Nomenclature NE
		 on NE.Etats = em.Etat
		 inner join dbo.Relation R
		 on R.ID_Relation=em.ID_Relation
		 inner join dbo.Niveau N
		 on N.ID_Niveau=em.ID_Niveau
		 

	
	where em.ID_Matricule=@Matricule
END
GO
/****** Object:  StoredProcedure [dbo].[GetNiveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetNiveau]
@ID_Niveauu int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select Nom_Niveau
   
   
   
   from Niveau

        
	
	where ID_Niveau=@ID_Niveauu
END
GO
/****** Object:  StoredProcedure [dbo].[InsertAffectationNavbar]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertAffectationNavbar]
	@id int,
	@Type nvarchar(max),
	@ID_NavBar int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO Affectation_Navbar(id,Type,ID_NavBar) VALUES(@id,@Type,@ID_NavBar)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDicipline]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[InsertDicipline]
	@Nom_Discipline nvarchar(max),
	@Description nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT INTO Discipline (Nom_Discipline ,Description) VALUES (@Nom_Discipline,@Description)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployes]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertEmployes]
	@Nom nvarchar(max),
	@Prenom nvarchar(max),
	@Dat_nais nvarchar(max),
	@Email nvarchar(max),
	@Adresse nvarchar(max),
	@Telephone int ,
	@ID_Fonction int,
	@ID_Societe int ,
	@ID_Niveau int,
	@Ville nvarchar(max) ,
	@ID_Discipline int ,
	@ID_Matricule int ,
	@ID_Relation int ,
	@Date_recrutement nvarchar(max),
	@Etat bit,
	@ImageEmployer nvarchar(max)
	


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT INTO Employes(Nom, Prenom, Dat_nais, Email, Adresse, Telephone,ID_Fonction,ID_Societe,ID_Niveau,Ville,ID_Discipline,ID_Matricule,ID_Relation,Date_recrutement,Etat,ImageEmployer)
VALUES (@Nom,@Prenom, @Dat_nais, @Email, @Adresse, @Telephone,@ID_Fonction,@ID_Societe,@ID_Niveau,@Ville,@ID_Discipline,@ID_Matricule,@ID_Relation,@Date_recrutement,@Etat,@ImageEmployer);
END
GO
/****** Object:  StoredProcedure [dbo].[InsertEtats]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[InsertEtats]
	@Nom_Etat nvarchar(max),
	@Lien nvarchar(max),
	@Etats bit 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO  Etat_Nomenclature(Nom_Etat,Lien,Etats) VALUES(@Nom_Etat,@Lien,@Etats)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertFonctions]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertFonctions]
	@Nom_Fonction nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO Fonctions(Nom_Fonction) VALUES(@Nom_Fonction)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertMatricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[InsertMatricule]
	@Nom_Matricule nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT INTO Matricule (Nom_Matricule) VALUES (@Nom_Matricule)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertNiveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[InsertNiveau]
	@Nom_Niveau nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO Niveau (Nom_Niveau) VALUES(@Nom_Niveau)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertRelation]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[InsertRelation]
	@Nom_Relation nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO Relation(Nom_Relation) VALUES(@Nom_Relation)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertRole]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[InsertRole]
	@Nom_Role nvarchar(max)
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO  NomenclatureRole(Nom_Role) VALUES(@Nom_Role)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertSocieter]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[InsertSocieter]
	@Nom_Societe nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   Insert into Societer (Nom_Societe) values (@Nom_Societe)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUtilisateur]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUtilisateur]
	@users nvarchar(max),
	@Email nvarchar(max),
	@password nvarchar(MAX) ,
	@ID_Role int 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT INTO UtilisateurUser(users ,Email,password,ID_Role) VALUES (@users,@Email,@password,@ID_Role)
END
GO
/****** Object:  StoredProcedure [dbo].[SelectClients]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SelectClients]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_ClientAP,Nom_Cilent from Client_AP
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDiscipline]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectDiscipline]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Discipline,Nom_Discipline,Description from Discipline
END
GO
/****** Object:  StoredProcedure [dbo].[SelectEmploy]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectEmploy]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select
   
  cast((DATEDIFF(month,  Date_recrutement , GETDATE() ))/12 as varchar)+' ans et ' +
  cast((DATEDIFF(month,  Date_recrutement , GETDATE() ))%12 as varchar)+ ' mois' 
  as Experience ,

   NE.Lien, em.ID_Employes, em.ID_Matricule,Nom + ' ' + Prenom as NomEtPrenom,
   Nom_Discipline ,
   Nom_Fonction,
   Nom_Societe,
   Nom_Niveau,
   Etat,em.ImageEmployer from Employes em

         inner join dbo.Discipline dis
		 on dis.ID_Discipline=em.ID_Discipline

		 inner join dbo.Fonctions F
		 on F.ID_Fonction=em.ID_Fonction

		 inner join dbo.Societer S
		 on S.ID_Societe=em.ID_Societe 

		  left join dbo.Etat_Nomenclature NE
		 on NE.Etats = em.Etat

		  LEFT join dbo.Niveau N
		 on N.ID_Niveau=em.ID_Niveau
END
GO
/****** Object:  StoredProcedure [dbo].[SelectEtat]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SelectEtat]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Etat,Nom_Etat,Lien,Etats from Etat_Nomenclature
END
GO
/****** Object:  StoredProcedure [dbo].[SelectFonction]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SelectFonction]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Fonction, Nom_Fonction from Fonctions
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMatricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SelectMatricule]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Matricule,Nom_Matricule from Matricule
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNavBar]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectNavBar]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_NavBar, Description,Box,ImageUrl,Type from NavBar where Type= 'Procédure';
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNavBar2]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectNavBar2]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_NavBar,Description,Box,ImageUrl,Type from NavBar where Type= 'Paramétrage';
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNavBar3]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectNavBar3]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_NavBar, Description,Box,ImageUrl,Type from NavBar where Type= 'Administrative';
END
GO
/****** Object:  StoredProcedure [dbo].[SelectNiveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[SelectNiveau]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Niveau,Nom_Niveau from Niveau

End  
GO
/****** Object:  StoredProcedure [dbo].[SelectRelation]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectRelation]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Relation,Nom_Relation from Relation
END
GO
/****** Object:  StoredProcedure [dbo].[SelectRole]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[SelectRole]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Role, Nom_Role from NomenclatureRole
END
GO
/****** Object:  StoredProcedure [dbo].[SelectSocieter]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SelectSocieter]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select ID_Societe,Nom_Societe from Societer
END
GO
/****** Object:  StoredProcedure [dbo].[SelectUtilisateur]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectUtilisateur]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select id,users,Email,password,ID_Role from UtilisateurUser
END
GO
/****** Object:  StoredProcedure [dbo].[testPro]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[testPro]
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from Employes
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDiscipline]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[UpdateDiscipline]
	@Nom_Discipline nvarchar(max) ,
	@Description nvarchar(max),
	@ID_Discipline int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Discipline
   SET Nom_Discipline=@Nom_Discipline , Description=@Description  
   WHERE ID_Discipline=@ID_Discipline 
   end
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployes]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateEmployes]
	@Nom nvarchar(max),
	@Prenom nvarchar(max),
	@Dat_nais nvarchar(max),
	@Email nvarchar(max),
	@Adresse nvarchar(max),
	@Telephone int ,
	@ID_Fonction int,
	@ID_Societe int ,
	@ID_Niveau int,
	@Ville nvarchar(max),
	@ID_Discipline int ,
	@ID_Matricule int ,
	@ID_Relation int,
	@Date_recrutement nvarchar(max),
	@Etat bit,
	@ImageEmployer nvarchar(max)
	


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Employes
   SET Nom=@Nom , 
       Prenom=@Prenom ,
	   Dat_nais=@Dat_nais ,
	   Email=@Email, 
	   Adresse=@Adresse ,
	   Telephone=@Telephone ,
	   ID_Fonction=@ID_Fonction, 
	   ID_Societe=@ID_Societe, 
	   ID_Niveau=@ID_Niveau ,
	   Ville=@Ville  , 
	   ID_Discipline=@ID_Discipline, 
	   ID_Relation=@ID_Relation,
	   Date_recrutement=@Date_recrutement,
	   Etat=@Etat,
	   ImageEmployer=@ImageEmployer

   WHERE ID_Matricule=@ID_Matricule
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEtats]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateEtats]
	@Nom_Etat nvarchar(max) ,
	@Lien nvarchar(max),
	@ID_Etat int ,
	@Etats bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Etat_Nomenclature
   SET Etats=@Etats , Lien=@Lien , Nom_Etat=@Nom_Etat
   WHERE ID_Etat=@ID_Etat 
   end
GO
/****** Object:  StoredProcedure [dbo].[UpdateFonction]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateFonction]
	@ID_Fonction int,
	@Nom_Fonction nvarchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Fonctions
   SET Nom_Fonction=@Nom_Fonction 
   WHERE ID_Fonction=@ID_Fonction
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMatricule]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[UpdateMatricule]
	@ID_Matricule int,
	@Nom_Matricule nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Matricule
   SET Nom_Matricule=@Nom_Matricule
   WHERE ID_Matricule=@ID_Matricule
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNiveau]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateNiveau]
	@ID_Niveau int,
	@Nom_Niveau nvarchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Niveau
   SET Nom_Niveau=@Nom_Niveau 
   WHERE ID_Niveau =@ID_Niveau 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePassordByID]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[UpdatePassordByID]
	
	@password nvarchar(MAX),
	@id int 


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE UtilisateurUser
   SET   password=@password  
   WHERE id=@id 
   end
GO
/****** Object:  StoredProcedure [dbo].[UpdateRelation]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[UpdateRelation]
	@ID_Relation int,
	@Nom_Relation nvarchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE Relation
   SET Nom_Relation=@Nom_Relation 
   WHERE ID_Relation=@ID_Relation
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateRole]
	@ID_Role int,
	@Nom_Role nvarchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE NomenclatureRole
   SET Nom_Role=@Nom_Role 
   WHERE ID_Role=@ID_Role
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSocieter]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[UpdateSocieter]
	@Nom_Societe nvarchar(max),
	@ID_Societe int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update Societer
   set Nom_Societe=@Nom_Societe 
   where ID_Societe=@ID_Societe
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUtlisateur]    Script Date: 13/04/2024 16:53:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUtlisateur]
	@users nvarchar(max) ,
	@Email nvarchar(max),
	@password nvarchar(MAX),
	@id int ,
	@ID_Role int 


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   UPDATE UtilisateurUser
   SET users=@users , Email=@Email , password=@password  , ID_Role=@ID_Role
   WHERE id=@id 
   end
GO
USE [master]
GO
ALTER DATABASE [GestionDesEmployes] SET  READ_WRITE 
GO
