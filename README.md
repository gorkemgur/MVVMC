# MVVM-C Architecture in iOS

This repository demonstrates the implementation of the **MVVM-C (Model-View-ViewModel-Coordinator)** architecture in iOS applications. MVVM-C enhances the traditional MVVM pattern by introducing **Coordinators**, which handle navigation and flow between screens.

## Architecture Overview

- **View**: Handles UI components.
- **ViewModel**: Mediates between View and Model, providing data for the UI.
- **Coordinator**: Manages navigation flow, decoupling ViewControllers from handling transitions.

## Setting Up a Module
1. **Coordinator**: The Coordinator handles navigation and manages the creation of the ViewModel and View (ViewController). It controls transitions between screens and is responsible for starting and coordinating flows.
2. **Create ViewModel**: Implement the business logic adhering to `ViewModelProtocol`. The ViewModel processes data and prepares it for the View.
3. **Create View**: Build your UI in a `UIViewController`. The Coordinator injects the ViewModel into the View to handle data presentation and UI updates.

## Usage
- Coordinators instantiate ViewModels and ViewControllers.
- ViewControllers bind to ViewModels for data presentation.
- Coordinators handle navigation actions triggered by the ViewModel.

### Example Flow:
1. **Coordinator** starts a flow by creating a `ViewController` and `ViewModel`.
2. **ViewModel** provides data to the **ViewController**.
3. The user interacts with the View, and actions are sent to the **ViewModel**.
4. The **Coordinator** responds to navigation events, managing transitions between screens.

## Benefits
- **Separation of Concerns**: Each component has a clear responsibility.
- **Testability**: ViewModel and business logic are easily testable.
- **Scalability**: Coordinators simplify complex navigation flows, improving code maintainability.

## Project Structure

- **View**: Contains the UI components.
- **ViewModel**: Exposes data for the view and handles the state.
- **Coordinator**: Manages navigation and transitions between views.

## Installation

To clone and run the project, use:

```bash
git clone https://github.com/gorkemgur/MVVMC.git
cd MVVMC
open mvvmc.xcodeproj
