
https://github.com/clement89/RandomColors/assets/11992113/a198af8e-5abf-4ff3-a314-ec759af1faae


# Random Colors App

The Random Colors App is a Flutter application that demonstrates the use of the BLoC architecture pattern along with widget testing for creating dynamic and interactive user interfaces.

## Overview

The Random Colors App showcases how to manage and update the color of a widget through user interaction using the BLoC pattern. The application consists of two main components: the **RandomColorBloc** responsible for managing the state of color changes, and the **RandomColorView** that displays a colored container and updates its color on tap.

## Features

- Utilizes the BLoC architecture pattern for managing state and business logic.
- Implements widget tests using the `flutter_test` and `bloc_test` packages for testing the app's UI and functionality.
- Demonstrates how to integrate the **RandomColorBloc** with the **RandomColorView** to provide a dynamic color-changing user experience.

## Usage

1. Clone the repository to your local machine:

   git clone https://github.com/clement89/RandomColors.git
   ```

2. Install the project dependencies:

   ```
   flutter pub get
   ```

3. Run the app on a connected device or emulator:

   ```
   flutter run
   ```

## Testing

To run widget tests, navigate to the project directory and use the following command:

```
flutter test test/
```
## Acknowledgements

The Random Colors App was inspired by the need to showcase practical implementation of the BLoC architecture pattern in Flutter applications.

