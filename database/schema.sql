-- ===================================================
-- Horse Racing & Stable Management System Database DDL
-- Author: Le Minh Khanh (Sub-BrSE & Backend Developer)
-- Normalized to 3NF
-- ===================================================

CREATE DATABASE HorseRacingDB;
GO
USE HorseRacingDB;
GO

-- 1. Roles
CREATE TABLE Roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) NOT NULL UNIQUE
);

-- 2. Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    full_name NVARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    role_id INT FOREIGN KEY REFERENCES Roles(role_id),
    status BIT DEFAULT 1,
    created_at DATETIME DEFAULT GETDATE()
);

-- 3. Stables
CREATE TABLE Stables (
    stable_id INT PRIMARY KEY IDENTITY(1,1),
    stable_name NVARCHAR(100) NOT NULL,
    location NVARCHAR(200) NOT NULL,
    capacity INT DEFAULT 20,
    owner_id INT FOREIGN KEY REFERENCES Users(user_id)
);

-- 4. Horses
CREATE TABLE Horses (
    horse_id INT PRIMARY KEY IDENTITY(1,1),
    microchip_id VARCHAR(50) UNIQUE NOT NULL,
    horse_name NVARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Stallion', 'Mare', 'Gelding')),
    dob DATE NOT NULL,
    color VARCHAR(50),
    stable_id INT FOREIGN KEY REFERENCES Stables(stable_id),
    status NVARCHAR(50) DEFAULT 'Active'
);

-- 5. Pedigrees
CREATE TABLE Pedigrees (
    pedigree_id INT PRIMARY KEY IDENTITY(1,1),
    horse_id INT UNIQUE FOREIGN KEY REFERENCES Horses(horse_id),
    sire_id INT FOREIGN KEY REFERENCES Horses(horse_id),
    dam_id INT FOREIGN KEY REFERENCES Horses(horse_id),
    breed NVARCHAR(50) DEFAULT 'Thoroughbred'
);

-- 6. Jockeys
CREATE TABLE Jockeys (
    jockey_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT UNIQUE FOREIGN KEY REFERENCES Users(user_id),
    license_number VARCHAR(50) NOT NULL UNIQUE,
    weight_kg DECIMAL(5,2) NOT NULL,
    experience_years INT DEFAULT 1
);

-- 7. Tournaments
CREATE TABLE Tournaments (
    tournament_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(150) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    location NVARCHAR(200) NOT NULL,
    organizer_id INT FOREIGN KEY REFERENCES Users(user_id),
    status VARCHAR(50) DEFAULT 'Upcoming'
);

-- 8. Tournament Rounds
CREATE TABLE TournamentRounds (
    round_id INT PRIMARY KEY IDENTITY(1,1),
    tournament_id INT FOREIGN KEY REFERENCES Tournaments(tournament_id),
    round_number INT NOT NULL,
    distance_meters INT NOT NULL,
    scheduled_time DATETIME NOT NULL
);

-- 9. Race Entries
CREATE TABLE RaceEntries (
    entry_id INT PRIMARY KEY IDENTITY(1,1),
    round_id INT FOREIGN KEY REFERENCES TournamentRounds(round_id),
    horse_id INT FOREIGN KEY REFERENCES Horses(horse_id),
    jockey_id INT FOREIGN KEY REFERENCES Jockeys(jockey_id),
    lane_number INT NOT NULL,
    status VARCHAR(50) DEFAULT 'Registered'
);

-- 10. Race Results
CREATE TABLE RaceResults (
    result_id INT PRIMARY KEY IDENTITY(1,1),
    entry_id INT UNIQUE FOREIGN KEY REFERENCES RaceEntries(entry_id),
    finish_position INT,
    finish_time_seconds DECIMAL(6,2),
    points_awarded INT DEFAULT 0,
    notes NVARCHAR(255)
);
