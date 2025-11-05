# ekofy_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## Request Hub UI (mock, UI-only)

This repository includes a mobile-first, UI-only implementation of a "Request Hub" with local mock data:

- Screen: `lib/features/home/presentation/screens/request_hub_page.dart`
- Card: `lib/features/home/presentation/widgets/request_card.dart`
- Status badge: `lib/features/home/presentation/widgets/status_badge.dart`
- Filter chips: `lib/features/home/presentation/widgets/filter_chips_row.dart`
- Empty state: `lib/features/home/presentation/widgets/empty_state.dart`
- Detail: `lib/features/home/presentation/screens/request_detail_screen.dart`
- Mock data: `assets/mock/requests.json` (wired in `pubspec.yaml`)

How to open:
- Use the bottom navigation and select the "Hub" tab (uses `RequestHubPage`).

Features:
- Search bar with debounce
- Filter chips: All, Pending, In-progress, Completed, Rejected
- Sort menu: newest/oldest/amount
- Infinite-scroll-like pagination (simulated)
- FAB to open a create modal (placeholder)
- Accessibility labels on interactive controls

Testing:
- `test/home_request_card_test.dart` contains a sample widget test for `RequestCard`.
For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
