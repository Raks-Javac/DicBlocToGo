# Minimalistic Dictionary App with Bloc,Isar DB and Lottie.
This is a minimalistic dictionary app built using the bloc pattern, clean architecture, either_options, and go_router in Flutter framework. The app allows users to search for a word and get its meaning along with an example sentence.

## Architecture
The app follows the clean architecture pattern, which separates the code into layers based on their responsibilities. The layers are as follows:

- Presentation layer: Contains the UI and user interactions. In this app, it consists of the pages and widgets packages.
Domain layer: Contains the business logic and use cases of the app. It is independent of any UI or data source. In this app, it consists of the domain package.
- Data layer: Contains the implementation of data sources, such as APIs or databases. In this app, it consists of the data package.
- Bloc Pattern
The app uses the bloc pattern for state management. It allows the separation of UI components from the business logic and provides a clear flow of data through the app.

In this app, the SearchBloc is responsible for managing the search state and handling search queries. It communicates with the SearchRepository to get the search results.

## Either Options
The app uses either_options package to handle errors and return either success or failure. The SearchRepository returns an Either object that contains either a list of search results or an error message.

## Go Router
The app uses the go_router package for routing. It allows for declarative and type-safe routing.

In this app, the DRouterClass is responsible for managing the app's routes and navigating between pages.

## Features
Search for a word and get its meaning and example sentence


## Getting Started
 Prerequisites
Flutter SDK
Android Studio / VSCode with Flutter plugin


## Installation
- Clone the repository

```
git clone https://github.com/your_username/minimalistic-dictionary-app.git

```

- Install dependencies

```
flutter pub get

```

- Run the app

```
flutter run

```
