
---

## 🛠️ Technology Stack

### **🔙 Backend**
| Technology | Purpose |
|------------|---------|
| **Node.js ^22** | JavaScript runtime |
| **Express.js** | REST API framework |
| **TypeScript** | Type safety and maintainability |
| **Prisma ORM** | Database access and schema management |
| **PostgreSQL** | Relational database |
| **Zod** | Request and schema validation |
| **Socket.IO** | Real-time communication |
| **OneSignal** | Push notifications |

### **📱 Frontend (Mobile App)**
| Component | Technology |
|-----------|------------|
| **Framework** | Flutter (Cross-platform) |
| **State Management** | Bloc + GetX |
| **Design System** | Material Design 3 |
| **Theming** | Light & Dark Mode support |

### **🔔 Real-Time Features**
- **Socket.IO** – Real-time medicine availability updates
- **OneSignal** – Push notifications for medicine availability

---

## 🧪 Testing Strategy

```dart
// Example testing approach
bloc_test(
  'Medicine search yields correct results',
  build: () => MedicineSearchBloc(),
  act: (bloc) => bloc.add(SearchMedicines('Paracetamol')),
  expect: () => [
    // Expected state transitions
  ],
);
