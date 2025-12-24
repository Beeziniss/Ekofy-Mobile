## Overview:

Ekofy Mobile is a music streaming application built with Flutter, delivering an optimized listening experience with a user-friendly interface and high performance. The app features a unique music commission system that connects listeners directly with artists for custom music creation. Built with lightweight Clean Architecture, Feature-first pattern, and Riverpod state management.

## 🏗️ Architecture:

### Clean Architecture (Lightweight Version)

The project implements a lightweight Clean Architecture with 3 core layers:

```
lib/
├── features/                    # Feature-first organization
│   ├── home/
│   │   ├── data/               # Data Layer - Repositories & Data Sources
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/             # Domain Layer - Entities & Use Cases
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/       # Presentation Layer - UI & State
│   │       ├── providers/
│   │       ├── screens/
│   │       └── widgets/
│   ├── artist/
│   ├── auth/
│   ├── inbox/
│   ├── library/
│   ├── notification/
│   ├── payment/
│   ├── profile/
│   ├── request/
│   ├── track/
│   ├── transaction/             
│   └── order/                  
├── core/                        # Shared utilities
│   ├── constants/
│   ├── theme/
│   ├── utils/
│   ├── configs/
│   ├── providers/
│   ├── middleware/
│   ├── di/
│   └── widgets/
├── gql/  
│   ├── queries/
│   ├── mutation/
│   └── generated/
└── main.dart
```

#### 📦 Layers

1. **Data Layer** - Handles data sources
   - Models: JSON/API data transformation
   - Data Sources: Remote (API) and Local (Cache/Database)
   - Repositories Implementation: Implements repository interfaces

2. **Domain Layer** - Pure business logic
   - Use Cases: Specific business actions (But this project did not implement it completely)
   - Repository Interfaces: Define contracts

3. **Presentation Layer** - UI & State
   - Screens: UI pages
   - Widgets: Reusable components
   - Providers: State management with Riverpod

### 🎯 Feature-First Approach

The project is organized by features rather than layers, providing:
- ✅ Easy code navigation and maintenance
- ✅ Independent feature development
- ✅ Effective project scaling
- ✅ Clear separation between modules

### 🔄 State Management with Riverpod

Uses Riverpod 2.x for state management with benefits:
- **Compile-time safety**: Catch errors at compile time
- **Testability**: Easy testing and mocking
- **Performance**: Optimal rebuilds only for necessary widgets
- **Scoped providers**: Automatic lifecycle management
- **No context dependency**: Independent of BuildContext

## 🚀 Key Features

### Music Streaming
- 🎵 High-quality online music streaming
- 📱 Modern, smooth user interface
- 🔍 Search for songs, albums, artists
- 📝 Create and manage playlists
- ❤️ Favorite & save tracks
- 🎨 Customizable themes (Light/Dark mode)
- 📲 Background playback
- 🔊 Advanced audio controls

### Artist Commission System
- 🎨 **Request Custom Music**: Listeners can send commission requests directly to artists
- 💰 **Order Management**: Complete order workflow from request to delivery
- 👨‍🎤 **Artist-Listener Connection**: Direct communication channel between parties
- 📋 **Commission Details**: Specify genre, mood, duration, and budget
- 📊 **Order Tracking**: Real-time status updates (Pending, In Progress, Completed)
- 💳 **Payment Integration**: Secure payment processing for commissioned works
- ⭐ **Rating & Review**: Rate completed commissions and provide feedback
- 🔔 **Notifications**: Updates on commission status and new messages

## 🛠️ Tech Stack

### Core
- **Flutter SDK**: ^3.x.x
- **Dart**: ^3.x.x

### State Management & Architecture
- **flutter_riverpod**: State management
- **riverpod_annotation**: Code generation for providers

### Networking & Data
- **dio**: HTTP client
- **flutter_graphql**: Graphql API integration
- **json_serializable**: JSON serialization

### Local Storage
- **hive/shared_preferences**: Local caching
- **secure_storage**: Store sensitive data

### Audio
- **just_audio**: Audio playback

### UI/UX
- **go_router**: Navigation
- **flutter_svg**: SVG support

### Utilities
- **freezed**: Data classes & unions

### Development
- **build_runner**: Code generation
- **flutter_lints**: Linting rules

## 📋 Requirements

- Flutter SDK: >= 3.0.0
- Dart SDK: >= 3.0.0
- Android: minSdkVersion 21
- iOS: 12.0+
