# 🛍️ Flutter E-commerce App with Riverpod State Management

A scalable **Flutter** e-commerce project structure using **Riverpod** state management, featuring reusable modules for **Product**, **Brand**, and **Category** CRUD operations with API integration.

---

## 📂 Project Structure

lib/
│
├── core/
│ ├── config/ # API endpoints, constants, themes
│ ├── services/ # API client, interceptors, shared utilities
│ ├── widgets/ # Reusable UI widgets (buttons, forms, etc.)
│ └── exceptions/ # API and app-specific exceptions
│
├── features/
│ ├── product/
│ │ ├── data/
│ │ │ ├── models/ # Product model
│ │ │ ├── product_api.dart
│ │ ├── providers/ # Riverpod providers for state & async logic
│ │ ├── views/ # Screens & UI
│ │ └── widgets/ # Product-specific widgets
│ │
│ ├── brand/
│ │ ├── data/
│ │ │ ├── models/ # Brand model
│ │ │ ├── brand_api.dart
│ │ ├── providers/
│ │ ├── views/
│ │ └── widgets/
│ │
│ ├── category/
│ │ ├── data/
│ │ │ ├── models/ # Category model
│ │ │ ├── category_api.dart
│ │ ├── providers/
│ │ ├── views/
│ │ └── widgets/
│
└── main.dart

