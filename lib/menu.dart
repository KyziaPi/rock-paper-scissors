import 'package:flutter/material.dart';
import 'game.dart';

import 'package:rock_paper_scissors/main.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  final List<int> bestOf = const [1, 3, 5, 7, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, 'RPS Menu'),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal:20),
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFFFD54F),
                  width: 5,
                )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('BEST OF',
                    style: TextStyle(fontSize: 50,
                        color: Colors.white)
                ),
                const SizedBox(height: 10),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20.0,
                  runSpacing: 0, 
                  children: bestOf.map((int num) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10), 
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GamePage(bestOf: num),
                            ),
                          );
                        },
                        style: customButtonStyle(35),
                        child: Text('$num'),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          )
        ),
      );
  }
}