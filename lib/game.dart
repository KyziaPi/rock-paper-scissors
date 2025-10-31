import 'package:flutter/material.dart';
import 'dart:math';
import 'menu.dart';

import 'package:rock_paper_scissors/main.dart';

class GamePage extends StatefulWidget {
  final int bestOf;

  const GamePage({super.key, required this.bestOf});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final List<String> choices = ['✊', '✋', '✌️'];
  late int requiredWins = (widget.bestOf / 2).ceil();
  String userChoice = '';
  String computerChoice = '';
  String result = '';
  int round = 1;
  int userRoundScore = 0;
  int computerRoundScore = 0;
  int userTotalScore = 0;
  int computerTotalScore = 0;

  void playGame(String choice) {
    final random = Random();
    String compChoice = choices[random.nextInt(3)];
    String gameResult = '';

    // Round Score Evaluation
    if (choice == compChoice) {
      gameResult = 'Draw!';
    } else if (
    (choice == '✊' && compChoice == '✌️') ||
        (choice == '✋' && compChoice == '✊') ||
        (choice == '✌️' && compChoice == '✋')
    ) {
      gameResult = 'You win!';
      userRoundScore++;

    } else {
      gameResult = 'You lose!';
      computerRoundScore++;
    }

    // Total Score Evaluation
    if (computerRoundScore == requiredWins) {
      computerTotalScore++;
      showRoundOverPopup(context, round,
        '$userRoundScore - $computerRoundScore',
        'You lost the round!',
        'Total Score: $userTotalScore - $computerTotalScore',
        nextRoundCallback: () {
          setState(() {
            round++;
            userRoundScore = 0;
            computerRoundScore = 0;
          });
        },
      );
    }

    if (userRoundScore == requiredWins) {
      userTotalScore++;
      showRoundOverPopup(context, round,
          '$userRoundScore - $computerRoundScore',
          'You won the round!',
          'Total Score: $userTotalScore - $computerTotalScore',
          nextRoundCallback: () {
            setState(() {
              round++;
              userRoundScore = 0;
              computerRoundScore = 0;
            });
          },
      );
    }

    setState(() {
      userChoice = choice;
      computerChoice = compChoice;
      result = gameResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Rock Paper Scissors'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal:20),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFD54F),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.teal,
                    width: 5,
                  )
              ),
              child: Column(
                children: [
                  roundText('Best of ${widget.bestOf}', 30),
                  ],
              )
            ),
            const SizedBox(height: 10),
            Text('Round $round',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)
            ),
            Text('Total Score: $userTotalScore - $computerTotalScore',
                style: const TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold
                )
            ),
            requiredWins == 1 ? const SizedBox() : Text(
                'Current Round Score: $userRoundScore - $computerRoundScore',
                style: const TextStyle(fontSize: 20)
            ),
            const SizedBox(height: 20),
            Text('Your Choice: $userChoice',
                style: const TextStyle(fontSize: 24)),
            Text('Computer: $computerChoice',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 28,
                fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: choices.map((choice) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () => playGame(choice),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                    ),
                    child: Text(choice, style: const TextStyle(fontSize: 40)),
                  ),
                );
              }).toList(),
            ),

            Padding(
              padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuPage()),
                      );
                    },
                    style: customButtonStyle(50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:15),
                          child: Icon(Icons.arrow_back, size: 20),
                        ),
                        const Text('Back to Menu Page'),
                      ],
                    )
                ),
            )
          ],
        ),
      ),
    );
  }
}
