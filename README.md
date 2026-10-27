# 🐎 Horse Racing & Stable Management System
> **Academic Capstone Project (SWP391) | FPT University Ho Chi Minh Campus**  
> An enterprise-grade Web Application designed to digitalize thoroughbred horse pedigree tracking, stable care operations, and tournament race scheduling.

[![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://www.java.com)
[![SQL Server](https://img.shields.io/badge/SQL_Server-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/sql-server)
[![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)](https://figma.com)
[![StarUML](https://img.shields.io/badge/StarUML-007ACC?style=for-the-badge)](https://staruml.io)

---

## 📌 Project Overview
In traditional equestrian and racing clubs, tracking horse pedigrees, daily health routines, and tournament brackets is often managed through fragmented spreadsheets. This system provides a unified digital platform for **Stable Owners**, **Jockeys**, **Tournament Organizers**, and **Audience/Bettors**.

- **My Role:** **Sub-BrSE / Technical BA & Backend Developer** (Team of 5)
- **Timeframe:** September 2026 – November 2026
- **Architecture:** Model-View-Controller (MVC2) with Java Servlet, JSP, JDBC, and MS SQL Server.

---

## ✨ Key Features & Functional Modules

### 1. 🧬 Horse & Pedigree Genealogy Management
- Comprehensive horse profiling: Microchip ID, breed, date of birth, medical history, dietary requirements.
- Dynamic multi-generational pedigree tree viewer (Sire & Dam line tracking).

### 2. 🏆 Tournament & Race Schedule Organization
- Automated bracket creation for single-elimination and round-robin race formats.
- Jockey and horse pairing verification with eligibility status checking.
- Live race score input and real-time leaderboard updating.

### 3. 🏡 Stable & Daily Care Management
- Stable allocation, feeder schedules, vaccination logs, and trainer assignments.

### 4. 🔐 Role-Based Access Control (RBAC)
- **System Admin:** Full administrative control over users, stabling facilities, and system parameters.
- **Organizer:** Manage tournaments, match fixtures, and verify tournament entries.
- **Stable Owner:** Register horses, manage internal stable operations, and submit race entries.

---

## 📐 System Modeling & Requirement Artifacts
- **Software Requirement Specification (SRS):** Full 40+ page IEEE 830 compliant document located in [`/docs/SRS_IEEE830_Horse_Racing.md`](./docs/SRS_IEEE830_Horse_Racing.md).
- **Core Use Cases:** 12 modeled use cases including `Manage Horse Pedigree`, `Register Tournament Entry`, `Record Race Results`, `Schedule Veterinary Check`.
- **UI/UX Wireframes:** 15+ high-fidelity interactive screens designed in Figma.
- **UML Diagrams:** Class diagrams, Sequence diagrams for Tournament Bracket Generation, Activity diagrams for Race Registration.

---

## 🗄️ Database Architecture
- Relational schema designed in **Microsoft SQL Server**, fully normalized to **3NF**.
- SQL DDL Script available in [`/database/schema.sql`](./database/schema.sql).
- Key Entities: `Users`, `Roles`, `Stables`, `Horses`, `Pedigrees`, `Jockeys`, `Tournaments`, `RaceRounds`, `RaceEntries`, `RaceResults`.

---

## 🚀 Setup & Execution Guide
1. **Prerequisites:**
   - JDK 17 or higher
   - Apache Tomcat 9.0+
   - Microsoft SQL Server 2019+
2. **Database Setup:**
   - Execute the SQL script in `database/schema.sql` on your SQL Server instance.
   - Configure your database credentials in `src/main/java/com/horseracing/util/DBContext.java`.
3. **Run Application:**
   - Open project in NetBeans / IntelliJ IDEA / Eclipse.
   - Deploy project onto Apache Tomcat server.
   - Access web app via `http://localhost:8080/horse-racing-management`.
