# 🐎 Racehorse Training, Care & Tournament Management System (HRSMS)
> **Academic Capstone Project (SWP391) | FPT University Ho Chi Minh Campus**  
> An enterprise-grade Full-Stack Web Application designed to digitalize thoroughbred horse pedigree tracking, veterinary care routines, training locks, stable facilities, and tournament race scheduling.

[![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=white)](https://nestjs.com)
[![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://react.dev)
[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org)
[![Prisma](https://img.shields.io/badge/Prisma-2D3748?style=for-the-badge&logo=prisma&logoColor=white)](https://www.prisma.io)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com)
[![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)](https://figma.com)

---

## 📌 Project Architecture
- **Monorepo Structure:**
  - `/backend`: NestJS modular micro-service architecture, Prisma ORM, JWT Authentication, RBAC guards, Swagger API docs.
  - `/frontend`: React 18, Vite, TypeScript, TailwindCSS, Playwright end-to-end testing, responsive design.
  - `/docs`: Complete Software Requirement Specification (SRS IEEE 830), Role allocations, Bug tracking sheets, and PR handoff documentation.
- **My Role:** **Sub-BrSE / Technical BA & Full-Stack Developer** (Student ID: SE205302, Team of 5)
- **Timeframe:** Fall 2026

---

## 🌟 Core Domain Modules Implemented

### 1. 🧬 Horse Catalog & Pedigree Tracking (`src/horses`, `src/horse-catalogs`)
- Thoroughbred profile records: Microchip identification, lineage pedigrees (Sire/Dam multi-generation genealogy tree), biometric attributes, registration statuses.
- Automated validation for tournament nomination eligibility.

### 2. 🏥 Herd Health, Medical Records & Care Schedules (`src/health`, `src/medical`, `src/nutrition`)
- Dynamic medical incident logs, vaccination schedules, and dietary nutrition formulas.
- Automatic **Training Lockouts**: Prevents injured or medicated horses from being nominated into tournament races until verified by veterinary clearance.

### 3. 🏆 Tournament Organization & Match Brackets (`src/tournaments`, `src/simulator`)
- Tournament fixture management, round-robin & elimination bracket generation.
- Automated race entry registration, lane allocation draws, and live score recording.

### 4. 🏡 Stables, Facility Stalls & Daily Tasks (`src/stalls`, `src/daily-tasks`, `src/shifts`)
- Stable stall inventory allocation, staff shift roster scheduling, and routine care task checklists.

### 5. 🔐 Security, Audit Logs & RBAC (`src/auth`, `src/accounts`, `src/audit`)
- Multi-role authorization: **System Administrator**, **Stable Manager**, **Veterinarian**, **Trainer/Jockey**, and **Tournament Organizer**.
- Comprehensive audit trails tracking critical record mutations.

---

## 🚀 Getting Started

### 1. Backend Setup (`/backend`)
```bash
cd backend
npm install
cp .env.example .env
npx prisma generate
npm run start:dev
```

### 2. Frontend Setup (`/frontend`)
```bash
cd frontend
npm install
npm run dev
```

---

## 📄 Team & Documentation
- **Team Roles & Contributions:** See [`/docs/Le_Minh_Khanh_SE205302_Team_Roles.docx`](./docs/)
- **Software Requirements Specification (SRS):** See [`/docs/đặc tả.docx`](./docs/)
- **Bug & QA Test Reports:** See [`/docs/Danh_sach_bug_Cap2.xlsx`](./docs/)
