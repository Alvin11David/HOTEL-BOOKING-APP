# 🏨 HOTEL-BOOKING-APP

A **modern hotel booking mobile app** built with **Flutter** and **Firebase**, designed to provide a seamless experience for travelers and property owners. This app enables users to browse, search, book, and manage hotel reservations directly from their smartphones.

## 📱 Features

### 👤 User Functionality
- 🔍 Search for hotels by location, name, or filters (price, amenities, ratings)
- 🛏️ View hotel details, amenities, photos, and reviews
- 📅 Book rooms with calendar date picker and real-time availability
- 💳 Secure payment integration (e.g. Stripe or FlutterWave)
- ❤️ Save hotels to favorites
- 📄 View and manage bookings
- 🔐 Authentication with:
  - Phone Number
  - Google Sign-In
  - Email & Password

### 🏨 Hotel Owner Functionality (Admin)
- ➕ Add and manage hotel listings
- 🖼️ Upload photos and amenities
- 📊 View booking stats and customer reviews
- 🛠️ Enable/disable room availability

### 📦 Tech Stack
| Technology    | Description                          |
|---------------|--------------------------------------|
| **Flutter**   | Cross-platform UI development        |
| **Firebase**  | Backend-as-a-Service (BaaS)          |
| Firestore     | NoSQL cloud database for storing data |
| Firebase Auth | Secure authentication system         |
| Firebase Storage | Store images and documents        |
| Firebase Functions (optional) | Backend logic         |

---

## 🚀 Getting Started

### ✅ Prerequisites
- Flutter SDK installed
- Firebase project setup (https://console.firebase.google.com/)
- Android Studio / VSCode
- Dart >= 3.x

### 📦 Installation

```bash
git clone https://github.com/your-username/hotel-booking-app.git
cd hotel-booking-app
flutter pub get
