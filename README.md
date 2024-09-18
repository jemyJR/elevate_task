# Elevate Task - Flutter App 🚀

This is a Flutter application that implements a single screen to display a list of products in a recycler view using the [Fake Store API](https://fakestoreapi.com/products). The project follows clean architecture principles and utilizes dependency injection for better structure and maintainability.

## Features 🌟

- **Product Listing** : Fetches products from the Fake Store API and displays them in a grid format.
- **Clean Architecture** : The project is structured based on clean code principles with separation of concerns.
- **Dependency Injection (DI)**: DI is used for better modularity and testability.
- **Shimmer Effect** : A shimmer effect is displayed while the data is being loaded.

## Project Structure 📂

```
lib
│
├── core
│   ├── constants
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   ├── app_constants.dart
│   │   └── app_style.dart
│   ├── di
│   │   └── dependency_injection.dart
│   ├── helpers
│   ├── networking
│   │   ├── api
│   │   ├── errors
│   └── routing
│
├── features
│   └── products
│       ├── data
│       │   ├── models
│       │   └── repo
│       ├── logic
│       │   ├── products_cubit.dart
│       │   └── products_state.dart
│       └── ui
│           ├── products_screen.dart
│           └── widgets
│
└── main.dart
```

### API Integration 🔗

The app fetches data from the [Fake Store API](https://fakestoreapi.com/products) to display a list of products.

### Getting Started 🚀

1. Clone the repository:
   ```bash
   git clone https://github.com/jemyJR/elevate_task
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

### Dependencies 📦

The app uses the following packages:
- `flutter_screenutil` : For responsive UI design across different screen sizes and pixel densities.
- `shimmer` : For creating a shimmer effect to display while the product data is loading.
- `cached_network_image` : For efficient image loading and caching of product images.
- `dio` : For making API calls and handling HTTP requests to fetch product data from the Fake Store API.
- `get_it` : For managing dependency injection, ensuring modularity and easy testing of components.
- `pretty_dio_logger` : To log network requests and responses in a readable format, useful for debugging.
- `dartz` : Provides functional programming features like `Option` and `Either` for handling results and errors.
- `flutter_bloc` : For state management using Cubit, helping manage and propagate app states efficiently.

### Screenshots 📸

<img src="https://github.com/user-attachments/assets/3bfc0f40-f808-4bb5-aba0-7a7c64ae782a" width="200" />
<img src="https://github.com/user-attachments/assets/f63b81c2-ff96-4503-9695-3938502666c3" width="200" />

### Video 🎥

[elevate task video.webm](https://github.com/user-attachments/assets/e5893381-a869-4449-a1cd-3a22a8a03f0d)


