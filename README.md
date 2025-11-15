# event_finder_app


## Architecture

This project uses the **MVVM (Model-View-ViewModel)** architecture, as recommended in the official Flutter documentation.

MVVM separates your app's business logic from the UI, making the codebase cleaner, easier to maintain, and more testable.

- **Model**: Handles data, logic, and state (from APIs, databases, or local storage like Hive).
- **View**: The UI—widgets that display models and listen to the ViewModel.
- **ViewModel**: Acts as a link between Model and View, exposes UI-ready data and commands, and handles state using Riverpod.
