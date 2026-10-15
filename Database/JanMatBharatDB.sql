-- ============================================================================
-- Jan-Mat Bharat (जन-मत भारत) - Database Initialization Script
-- Target Database System: Microsoft SQL Server / T-SQL ((localdb)\MSSQLLocalDB)
-- Description: Creates the JanMatBharatDB database, core tables with constraints,
--              and populates initial seed data.
-- ============================================================================

-- ----------------------------------------------------------------------------
-- 1. DATABASE CREATION
-- Create database JanMatBharatDB only if it does not already exist
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'JanMatBharatDB')
BEGIN
    CREATE DATABASE JanMatBharatDB;
END
GO

USE JanMatBharatDB;
GO

-- ----------------------------------------------------------------------------
-- 2. TABLE CREATION
-- ----------------------------------------------------------------------------

-- ============================================================================
-- Table 1: Roles
-- Description: Defines user roles within the voting system (e.g., Admin, Voter)
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'Roles' AND type = 'U')
BEGIN
    CREATE TABLE Roles (
        RoleId INT IDENTITY(1,1) PRIMARY KEY,
        RoleName NVARCHAR(20) NOT NULL UNIQUE
    );
END
GO

-- ============================================================================
-- Table 2: Users
-- Description: Stores credentials, profile details, and voting status for users
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'Users' AND type = 'U')
BEGIN
    CREATE TABLE Users (
        UserId INT IDENTITY(1,1) PRIMARY KEY,
        FullName NVARCHAR(100) NOT NULL,
        Email NVARCHAR(100) NOT NULL UNIQUE,
        VoterIdNumber NVARCHAR(20) NULL UNIQUE,
        DateOfBirth DATE NULL,
        State NVARCHAR(50) NULL,
        Password NVARCHAR(100) NOT NULL,
        ProfilePhoto NVARCHAR(200) NULL,
        Status NVARCHAR(20) NOT NULL DEFAULT 'Active',
        RoleId INT NOT NULL,
        CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
        CONSTRAINT FK_Users_Roles FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
    );
END
GO

-- ============================================================================
-- Table 3: Parties
-- Description: Stores details of registered political parties and NOTA
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'Parties' AND type = 'U')
BEGIN
    CREATE TABLE Parties (
        PartyId INT IDENTITY(1,1) PRIMARY KEY,
        PartyName NVARCHAR(100) NOT NULL,
        ShortName NVARCHAR(10) NOT NULL,
        Tagline NVARCHAR(100) NULL,
        Description NVARCHAR(200) NULL,
        LogoPath NVARCHAR(200) NULL
    );
END
GO

-- ============================================================================
-- Table 4: Votes
-- Description: Stores cast electronic ballots, ensuring one vote per user
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'Votes' AND type = 'U')
BEGIN
    CREATE TABLE Votes (
        VoteId INT IDENTITY(1,1) PRIMARY KEY,
        UserId INT NOT NULL UNIQUE,
        PartyId INT NOT NULL,
        VotedAt DATETIME NOT NULL DEFAULT GETDATE(),
        CONSTRAINT FK_Votes_Users FOREIGN KEY (UserId) REFERENCES Users(UserId),
        CONSTRAINT FK_Votes_Parties FOREIGN KEY (PartyId) REFERENCES Parties(PartyId)
    );
END
GO

-- ============================================================================
-- Table 5: SupportMessages
-- Description: Stores citizen inquiries submitted through the Support page
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'SupportMessages' AND type = 'U')
BEGIN
    CREATE TABLE SupportMessages (
        MessageId INT IDENTITY(1,1) PRIMARY KEY,
        FullName NVARCHAR(100) NOT NULL,
        Email NVARCHAR(100) NOT NULL,
        Subject NVARCHAR(200) NULL,
        Message NVARCHAR(MAX) NOT NULL,
        Status NVARCHAR(20) NOT NULL DEFAULT 'Unread',
        CreatedAt DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- ============================================================================
-- Table 6: PageContents
-- Description: Stores dynamic and editable CMS content for portal pages
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'PageContents' AND type = 'U')
BEGIN
    CREATE TABLE PageContents (
        PageId INT IDENTITY(1,1) PRIMARY KEY,
        PageName NVARCHAR(50) NOT NULL UNIQUE,
        InternalTitle NVARCHAR(100) NULL,
        HtmlContent NVARCHAR(MAX) NULL,
        LastModified DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- ============================================================================
-- Table 7: SiteSettings
-- Description: Stores key-value global configurations and metadata
-- ============================================================================
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'SiteSettings' AND type = 'U')
BEGIN
    CREATE TABLE SiteSettings (
        SettingId INT IDENTITY(1,1) PRIMARY KEY,
        SettingKey NVARCHAR(50) NOT NULL UNIQUE,
        SettingValue NVARCHAR(500) NULL
    );
END
GO

-- ----------------------------------------------------------------------------
-- 3. SAMPLE DATA INSERTION (Each INSERT only if table is empty)
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Roles Seed Data (Admin, Voter)
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM Roles)
BEGIN
    INSERT INTO Roles (RoleName) VALUES 
    (N'Admin'),
    (N'Voter');
END
GO

-- ----------------------------------------------------------------------------
-- Parties Seed Data (7 Parties with descriptions from Home page)
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM Parties)
BEGIN
    INSERT INTO Parties (PartyName, ShortName, Tagline, Description, LogoPath) VALUES
    (N'Bharatiya Janata Party', N'BJP', N'DEVELOPMENT • NATIONALISM', N'Focuses on nationalism, development, and governance.', NULL),
    (N'Indian National Congress', N'INC', N'SECULARISM • PROGRESS', N'Emphasizes social justice, equality, and democracy.', NULL),
    (N'Aam Aadmi Party', N'AAP', N'ANTI-CORRUPTION • WELFARE', N'Works for transparency, education, and public welfare.', NULL),
    (N'Communist Party of India', N'CPI', N'SOCIALISM • EQUALITY', N'Workers and socialist welfare focus.', NULL),
    (N'Trinamool Congress', N'TMC', N'REGIONAL • DEMOCRACY', N'Grassroots secularism and state-level progress.', NULL),
    (N'Bahujan Samaj Party', N'BSP', N'SOCIAL JUSTICE', N'Social justice and equality focus.', NULL),
    (N'None of the Above', N'NOTA', NULL, N'Select if you do not support any candidate.', NULL);
END
GO

-- ----------------------------------------------------------------------------
-- Users Seed Data (1 Admin and 3 Sample Voters)
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM Users)
BEGIN
    DECLARE @AdminRoleId INT = (SELECT RoleId FROM Roles WHERE RoleName = N'Admin');
    DECLARE @VoterRoleId INT = (SELECT RoleId FROM Roles WHERE RoleName = N'Voter');

    INSERT INTO Users (FullName, Email, VoterIdNumber, DateOfBirth, State, Password, ProfilePhoto, Status, RoleId, CreatedAt) VALUES
    (N'System Administrator', N'admin@janmat.gov.in', NULL, '1985-01-01', N'Delhi', N'admin123', NULL, N'Active', @AdminRoleId, GETDATE()),
    (N'Rahul Gandhi', N'rahul@example.com', N'ABC1234567', '1970-06-19', N'Uttar Pradesh', N'123456', NULL, N'Active', @VoterRoleId, GETDATE()),
    (N'Priya Sharma', N'priya@example.com', N'DEF2345678', '1992-04-15', N'Delhi', N'123456', NULL, N'Active', @VoterRoleId, GETDATE()),
    (N'Amit Kumar', N'amit@example.com', N'GHI3456789', '1988-11-23', N'Uttar Pradesh', N'123456', NULL, N'Active', @VoterRoleId, GETDATE());
END
GO

-- ----------------------------------------------------------------------------
-- PageContents Seed Data (Home, About, Contact)
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM PageContents)
BEGIN
    INSERT INTO PageContents (PageName, InternalTitle, HtmlContent, LastModified) VALUES
    (N'Home', N'Jan-Mat Bharat | National Voting Portal', N'<div class="hero-section"><h1>जन-मत भारत</h1><p>मतदान राष्ट्र सेवा का पहला कदम है</p></div>', GETDATE()),
    (N'About', N'About Jan-Mat Bharat • Our Mission', N'<div class="mission-wrap"><h2>Our Mission</h2><p>Democratizing digital governance for every Indian.</p></div>', GETDATE()),
    (N'Contact', N'Contact Jan-Mat Bharat', N'<div class="info-card"><h2>Get In Touch</h2><p>We are here to help and answer any question you might have.</p></div>', GETDATE());
END
GO

-- ----------------------------------------------------------------------------
-- SiteSettings Seed Data (Values matching the Global Settings page)
-- ----------------------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM SiteSettings)
BEGIN
    INSERT INTO SiteSettings (SettingKey, SettingValue) VALUES
    (N'site_name', N'जन-मत भारत'),
    (N'site_tagline', N'आपका वोट • आपका अधिकार • आपका भविष्य'),
    (N'footer_credit', N'Developed by Student Name'),
    (N'contact_email', N'support@janmatbharat.in'),
    (N'contact_phone', N'1800-XXX-XXXX (Toll-Free)'),
    (N'facebook_url', N'https://facebook.com'),
    (N'twitter_url', N'https://twitter.com'),
    (N'instagram_url', N'https://instagram.com'),
    (N'about_us', N'Digital voting and consensus platform for Bharat.');
END
GO