# todo_app_api (Flutter)

Aplikasi menggunakan arsitektur modular yang terdiri dari View, Controller, Service, dan Model. GetX digunakan untuk dependency injection, state management, dan routing, sedangkan Dio digunakan sebagai HTTP client untuk berkomunikasi dengan REST API.

## Tech Stack

- Flutter 3.24.3
- Dart 3.5.3
- GetX
- Dio
- UUID

---

## Requirements

- Flutter 3.24.3
- Dart 3.5.3
- Node.js: 24.14.0
- npm: 11.9.0

---

## Backend Setup

Aplikasi ini memerlukan backend Todo API yang berjalan terlebih dahulu.

Repository backend:

```bash
https://github.com/Pangestufp/todo-backend
```

Clone backend:

```bash
git clone https://github.com/Pangestufp/todo-backend
```

Masuk ke folder backend:

```bash
cd todo-backend
```

Install dependency:

```bash
npm install
```

Jalankan backend:

```bash
node index.js
```

Backend akan berjalan pada:

http://localhost:3000

Pastikan backend telah berjalan sebelum menjalankan aplikasi React.

## Project Structure

```txt
lib/
├── features/
│   └── todo/
│       ├── binding/
│       │   └── todo_binding.dart
│       │
│       ├── controller/
│       │   └── todo_controller.dart
│       │
│       ├── models/
│       │   └── todo.dart
│       │
│       ├── service/
│       │   ├── todo_service.dart
│       │   └── todo_service_impl.dart
│       │
│       ├── view/
│       │   ├── todo_page.dart
│       │   └── todo_form_page.dart
│       │
│       └── widgets/
│           ├── todo_item.dart
│           └── todo_item_content.dart
│
├── shared/
│   ├── endpoints/
│   │   └── endpoints.dart
│   │
│   ├── routes/
│   │   ├── app_pages.dart
│   │   └── routes.dart
│   │
│   ├── services/
│   │   └── api_service.dart
│   │
│   └── widgets/
│       ├── confirm_dialog.dart
│       └── styles.dart
│
└── main.dart
```


---

## Folder Description

| Folder           | Description                                            |
| ---------------- | ------------------------------------------------------ |
| binding          | Dependency Injection menggunakan GetX                  |
| controller       | Business logic dan state management                    |
| models           | Model data Todo                                        |
| service          | Service untuk komunikasi dengan REST API               |
| view             | Halaman aplikasi                                       |
| widgets          | Widget khusus fitur Todo                               |
| endpoints        | Konfigurasi endpoint api                               |
| routes           | Konfigurasi routing aplikasi                           |
| services         | Konfigurasi HTTP Client                                |
| shared/widgets   | Reusable widgets                                       |

---

## Installation

Clone repository:

```bash
git clone https://github.com/Pangestufp/todo-app-api-flutter
```

---

Masuk ke folder project:

```bash
cd todo-app-api-flutter
```

---

Install dependency:

```bash
flutter pub get
```

---

Environment Configuration:

sesuaikan dengan base endpoint backend pada file shared/enpoints/endpoints.dart

Jalankan aplikasi:

```bash
flutter run
```

---

Jalankan aplikasi pada browser:

```bash
flutter run -d chrome
```

---


