📍 Centralized Medicine Locator for Urban Pharmacies

A mobile-based system that helps patients quickly find pharmacies with available medicines in urban areas, while allowing pharmacies to manage medicine availability and prices through a centralized platform.

🧩 Project Overview

Patients in urban areas often struggle to locate specific medicines, leading to delays and unnecessary movement between pharmacies. This project solves that problem by providing a centralized, real-time medicine locator system that connects patients, pharmacies, and administrators through a single platform.

The system supports:

Real-time medicine availability

Pharmacy location and navigation

Price display (optional)

Push notifications

Admin verification of pharmacies

👥 System Actors

Admin

Approves or rejects pharmacy registration requests

Monitors system usage

Pharmacist

Registers pharmacy details

Manages medicine availability and prices

Updates inventory in real time

Patient

Searches for medicines

Views nearby pharmacies

Sees prices and availability

Calls pharmacies or gets directions

🏗️ Architecture

This project follows Clean Architecture principles to ensure:

Separation of concerns

Scalability

Testability

Easy maintenance

The system is divided into:

Presentation Layer (UI)

Domain Layer (business logic)

Data Layer (API & database access)

🧰 Technology Stack
🔙 Backend

Node.js ^22

Express.js – REST API framework

TypeScript (TS) – Type safety and maintainability

Prisma ORM – Database access and schema management

PostgreSQL – Relational database

Zod – Request and schema validation

Socket.IO – Real-time communication (medicine availability updates)

OneSignal – Push notifications

📱 Frontend (Mobile App)

Flutter – Cross-platform mobile development

State Management

Bloc – Predictable state management

GetX – Navigation and lightweight state handling

Material Design 3

Light & Dark Mode support

🔔 Real-Time & Notifications

Socket.IO

Real-time updates when medicine availability changes

Instant synchronization between pharmacies and patients

Push Notifications (OneSignal)

Notify patients when a medicine becomes available

System alerts and updates

🧪 Testing

bloc_test

Unit and integration testing for Bloc state management

Focus on:

Business logic validation

State transitions

Integration flows

🚀 Key Features

Centralized medicine search

Admin-approved pharmacies only

Real-time availability updates

Price transparency (optional)

Map-based pharmacy navigation

Call pharmacy directly from the app

Secure and scalable architecture

📌 Future Enhancements

Medicine reservation

Online ordering

Pharmacy working hours

Advanced analytics for admins

Multi-city support

🤝 Contribution

Contributions are welcome. Please follow clean architecture principles and ensure all new features are covered by appropriate tests.
