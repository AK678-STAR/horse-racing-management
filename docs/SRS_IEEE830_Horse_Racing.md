# Software Requirement Specification (SRS)
## Horse Racing & Stable Management System
**Prepared according to IEEE Std 830-1998**  
**Author:** Le Minh Khanh (Sub-BrSE & Requirement Analyst)  
**Course:** Software Development Project (SWP391) | FPT University  

---

### 1. Introduction
#### 1.1 Purpose
This document provides a comprehensive description of all requirements for the **Horse Racing & Stable Management System (HRSMS)**. It outlines system features, user interactions, external interfaces, and non-functional constraints.

#### 1.2 Scope of System
HRSMS is a multi-tier web application designed to automate horse lineage tracking, stable care routines, veterinary schedules, and tournament race scheduling for equestrian organizations.

---

### 2. Overall Description
#### 2.1 Product Perspective
HRSMS replaces standalone spreadsheets with a centralized relational database and a responsive browser-based user interface.

#### 2.2 User Classes and Characteristics
- **System Administrator:** Manages security, role definitions, and system-wide configurations.
- **Tournament Organizer:** Creates races, verifies horse and jockey registrations, publishes schedules, and inputs official race timings.
- **Stable Owner / Trainer:** Enrolls horses into stable catalogs, tracks veterinary logs, and nominates pairs for tournament races.
- **Public Visitor / Enthusiast:** Views upcoming race calendars, horse pedigree profiles, and official standings.

---

### 3. Specific Requirements (Functional Use Cases)
- **UC-01:** User Authentication & Role-based Authorization.
- **UC-02:** Register New Horse & Microchip Verification.
- **UC-03:** Manage Three-Generation Pedigree Genealogy Tree.
- **UC-04:** Record Veterinary Vaccination & Health Inspection Logs.
- **UC-05:** Stable Stalls Allocation & Capacity Management.
- **UC-06:** Create Racing Tournament & Round Specifications.
- **UC-07:** Submit Race Entry (Pair Horse & Licensed Jockey).
- **UC-08:** Generate Race Lane Allocation & Draw Schedules.
- **UC-09:** Log Official Race Times & Finish Positions.
- **UC-10:** Compute Leaderboard Rankings & Points Table.
- **UC-11:** Export Race Results & Pedigree Certificates to PDF.
- **UC-12:** System Audit Trail & Activity Logs.

---

### 4. Non-Functional Requirements
- **Performance:** System response time < 1.5 seconds for standard CRUD operations under 100 concurrent users.
- **Security:** Password hashing using strong cryptographic algorithms (BCrypt/SHA-256), SQL injection prevention via PreparedStatements.
- **Reliability:** 99.5% uptime during active tournament operational hours.
