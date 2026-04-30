# 📍 Centralized Medicine Locator for Urban Pharmacies

A **mobile-based system** that helps patients quickly find pharmacies with available medicines in urban areas, while allowing pharmacies to manage medicine availability and prices through a centralized platform.

---

## 🧩 Project Overview

Patients in urban areas often struggle to locate specific medicines, leading to delays and unnecessary movement between pharmacies.

This project solves that problem by providing a **centralized, real-time medicine locator system** that connects **patients**, **pharmacies**, and **administrators** through a single platform.

### The system supports:
- ✅ Real-time medicine availability  
- 📍 Pharmacy location & navigation  
- 💰 Price display (optional)  
- 🔔 Push notifications  
- 🛡️ Admin verification of pharmacies  

---

## 👥 System Actors

### 🧑‍💼 Admin
- Approves or rejects pharmacy registration requests  
- Monitors system usage  

### 🧑‍⚕️ Pharmacist
- Registers pharmacy details  
- Manages medicine availability and prices  
- Updates inventory in real time  

### 🧑‍🤝‍🧑 Patient
- Searches for medicines  
- Views nearby pharmacies  
- Sees prices and availability  
- Calls pharmacies or gets directions  

---

## 🏗️ Architecture

This project follows **Clean Architecture principles** to ensure:

- Separation of concerns  
- Scalability  
- Testability  
- Easy maintenance  

### Architecture Layers:
- **Presentation Layer** (UI)  
- **Domain Layer** (Business Logic)  
- **Data Layer** (API & Database Access)  

---

## 🧰 Technology Stack

### 🔙 Backend
- **Node.js** `^22`
- **Express.js** – REST API framework  
- **TypeScript (TS)** – Type safety & maintainability  
- **Prisma ORM** – Database access & schema management  
- **PostgreSQL** – Relational database  
- **Zod** – Request & schema validation  
- **Socket.IO** – Real-time communication  
- **OneSignal** – Push notifications  

---

### 📱 Frontend (Mobile App)
- **Flutter** – Cross-platform mobile development  

#### State Management
- **Bloc** – Predictable state management  
- **GetX** – Navigation & lightweight state handling  

#### UI
- Material Design 3  
- Light & Dark Mode support  

---

## 🔔 Real-Time & Notifications

### 🔄 Real-Time Updates
- **Socket.IO**
- Instant updates when medicine availability changes  
- Live synchronization between pharmacies and patients  

### 📢 Push Notifications
- **OneSignal**
- Notify patients when a medicine becomes available  
- System alerts & updates  

---

## 🧪 Testing

- **bloc_test**
- Unit & integration testing for Bloc state management  

### Focus Areas:
- Business logic validation  
- State transitions  
- Integration flows  

---

## 🚀 Key Features

- 🔍 Centralized medicine search  
- ✅ Admin-approved pharmacies only  
- ⚡ Real-time availability updates  
- 💰 Price transparency (optional)  
- 🗺️ Map-based pharmacy navigation  
- 📞 Call pharmacy directly from the app  
- 🔐 Secure & scalable architecture  

---

## 📌 Future Enhancements

- 📝 Medicine reservation  
- 🛒 Online ordering  
- ⏰ Pharmacy working hours  
- 📊 Advanced analytics for admins  
- 🌍 Multi-city support  

---

## 🤝 Contribution

Contributions are welcome!  
Please follow **Clean Architecture principles** and ensure all new features are covered by **appropriate tests**.

---


## 🎨 Figma Design UI


Check out the UI/UX design here: **[Figma Link](https://dark-tacit-86143187.figma.site)**


✨ *Built to improve access to essential medicines in urban areas.*

I'm sorry to say that temporary the development activities has pause after 2wk later will be resumed again, honestly     

after UE i will continues where we are ended


welcome 🙏 back in development activities
now has stopped again 
