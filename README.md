# Flutter Fruit App

This Flutter Fruit App is a mobile application built with Flutter, GetX state management, and Firestore database. It allows users to browse through a variety of fruits, view details about each fruit, and even add new fruits to the database.

## Features

- Browse a list of fruits
- View details of each fruit including name, description, and image
- Add new fruits to the database
- Real-time synchronization with Firestore database

## Installation

To run this app locally, follow these steps:

1. Clone this repository to your local machine:


2. Navigate to the project directory:


3. Install dependencies:


4. Ensure you have Flutter and Dart installed on your machine.

5. Set up Firebase Firestore for your project and configure the Firebase project settings accordingly.

6. Add the Firebase configuration file (`google-services.json` for Android or `GoogleService-Info.plist` for iOS) to the `android/app` and `ios/Runner` directories respectively.

7. Run the app:


## Usage

Upon launching the app, you will be presented with a list of fruits. Tap on any fruit to view its details. You can also add new fruits by tapping on the "+" button. All changes made will be synced with the Firestore database in real-time.

## Screenshots

[//]: # (Add screenshots here)

<img title="a title" alt="Alt text" src="/screenshots/Welcome.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Auth.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Home.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Add_to_basket.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Order_list.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Deliverly_details.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Order_success.jpg.jpg.jpg">
<img title="a title" alt="Alt text" src="/screenshots/Track_order.jpg.jpg.jpg">

## Dependencies

This project uses the following dependencies:

- flutter
- get: ^4.6.6
- firebase_core: ^2.24.2
- cloud_firestore: ^4.14.0

## Contributing

Contributions are welcome! If you have any ideas or improvements for this project, feel free to open an issue or submit a pull request.

## License

[//]: # (Add license information here)
