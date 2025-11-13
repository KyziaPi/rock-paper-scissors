---

# Rock Paper Scissors (Flutter)

A simple **Rock Paper Scissors** game built with **Flutter**, where the **user plays against the computer**.
It features multiple game modes and lets players continue playing round after round without restarting.

---

## Features

* **User vs Computer** gameplay
* **Game Modes:** Best of **1, 3, 5, 7, 9**
* **Score Tracking:** Win the required number of rounds based on the selected mode
* **Next Round Option:** Continue playing new rounds indefinitely without returning to the menu
* **Simple and Responsive UI**
* **Randomized Computer Choices** for fairness

---

## How It Works

1. Choose a **game mode** from the menu (e.g. *Best of 3*).
2. Pick between **Rock**, **Paper**, or **Scissors**.
3. The computer randomly picks its move.
4. The app compares both choices and declares a **win**, **lose**, or **tie**.
5. Once the required number of wins is reached, the winner is shown.
6. You can choose to play the **next round** or go **back to the menu**.

---

## Tech Stack

* **Flutter** (Dart)
* Uses **Material Design widgets**
* Randomization via `dart:math`
* Navigation with `Navigator.push` and `Navigator.pop`

---

## Getting Started

### Prerequisites

* [Flutter SDK](https://flutter.dev/docs/get-started/install)
* Android Studio or VS Code

### Setup

```bash
git clone https://github.com/your-username/flutter-rock-paper-scissors.git
cd flutter-rock-paper-scissors
flutter pub get
flutter run
```

---

## Screens Overview

* **Main Menu:** Choose game mode (Best of 1, 3, 5, 7, 9)
* **Game Page:** Play rounds against the computer
* **Result Section:** Displays current score, results, and next round button

---

## List of Widgets

### **1. MenuPage Widget**

* **Scaffold**: Main structure for the page.

  * **AppBar**: Custom app bar with title 'RPS Menu'.
  * **Body**: Contains the main content of the page.

    * **Center**: Centers the body content.

      * **Container**: Styled container to hold the menu options.

        * **Padding**: Adds padding inside the container.
        * **Margin**: Adds margin around the container.
        * **BoxDecoration**: Provides background color, border radius, and border for styling.
        * **Column**: Arranges child widgets vertically.

          * **Text**: Displays the "BEST OF:" label.
          * **SizedBox**: Provides spacing between elements.
          * **Row**: Displays the available "best of" options horizontally.

            * **Flexible**: Allows flexibility in layout for each button.
            * **ElevatedButton**: Each button for selecting "Best of" game numbers (1, 3, 5, 7, 9).

              * On pressed, navigates to the `GamePage` with the selected value.

### **2. GamePage Widget**

* **Scaffold**: Main structure for the game page.

  * **AppBar**: Custom app bar with title 'Rock Paper Scissors'.
  * **Body**: Contains the game content.

    * **Center**: Centers the body content.

      * **Column**: Arranges child widgets vertically.

        * **Container**: Displays the current "Best of" game selection.

          * **Padding**: Adds padding inside the container.
          * **Margin**: Adds margin around the container.
          * **BoxDecoration**: Provides background color, border radius, and border styling.
          * **Text**: Displays the "Best of" game round.
        * **SizedBox**: Adds spacing between elements.
        * **Text**: Displays round information, score, and results.
        * **Row**: Displays the current round score (if not a single round).
        * **Text**: Displays player and computer choices.
        * **SizedBox**: Adds spacing between elements.
        * **Text**: Displays the result of the round.
        * **Row**: Displays the choice buttons (Rock, Paper, Scissors).

          * **ElevatedButton**: Buttons to make the player's choice in the game.
        * **Padding**: Adds padding around the back button.

          * **ElevatedButton**: Navigates back to the `MenuPage`.

            * **Icon**: Displays a back arrow icon.
            * **Text**: Displays "Back to Menu Page".

---

## Project Structure
```
├───android
├───ios
├───lib
│       game.dart
│       main.dart
│       menu.dart
├───linux
├───macos
├───test
├───web
└───windows
│   .flutter-plugins-dependencies
│   .gitignore
│   .metadata
│   analysis_options.yaml
│   pubspec.lock
│   pubspec.yaml
│   README.md
```

* No assets were used in this project

---

## Reflection

(TBD)
