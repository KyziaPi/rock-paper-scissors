---

# 🪨 Rock Paper Scissors (Flutter)

A simple **Rock Paper Scissors** game built with **Flutter**, where the **user plays against the computer**.
It features multiple game modes and lets players continue playing round after round without restarting.

---

## 🎮 Features

* **User vs Computer** gameplay
* **Game Modes:** Best of **1, 3, 5, 7, 9**
* **Score Tracking:** Win the required number of rounds based on the selected mode
* **Next Round Option:** Continue playing new rounds indefinitely without returning to the menu
* **Simple and Responsive UI**
* **Randomized Computer Choices** for fairness

---

## 🧩 How It Works

1. Choose a **game mode** from the menu (e.g. *Best of 3*).
2. Pick between **Rock**, **Paper**, or **Scissors**.
3. The computer randomly picks its move.
4. The app compares both choices and declares a **win**, **lose**, or **tie**.
5. Once the required number of wins is reached, the winner is shown.
6. You can choose to play the **next round** or go **back to the menu**.

---

## 🛠️ Tech Stack

* **Flutter** (Dart)
* Uses **Material Design widgets**
* Randomization via `dart:math`
* Navigation with `Navigator.push` and `Navigator.pop`

---

## 🚀 Getting Started

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

## 📱 Screens Overview

* **Main Menu:** Choose game mode (Best of 1, 3, 5, 7, 9)
* **Game Page:** Play rounds against the computer
* **Result Section:** Displays current score, results, and next round button

---

## 💡 Possible Improvements

* Add sound effects and animations
* Add custom icons for Rock, Paper, and Scissors
* Add leaderboard or win history
