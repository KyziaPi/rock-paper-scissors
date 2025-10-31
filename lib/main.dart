import 'package:flutter/material.dart';
import 'menu.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const RockPaperScissorsApp());
}

class RockPaperScissorsApp extends StatelessWidget {
  const RockPaperScissorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(
      title,
      style: GoogleFonts.merriweather(
        color: Colors.white,
        textStyle: Theme.of(context).textTheme.displayMedium,
      ),
    ),
    backgroundColor: Colors.teal,
    centerTitle: true,
    toolbarHeight: 125,
    automaticallyImplyLeading: false,
  );
}

ButtonStyle customButtonStyle(double horizontalSize) {
  return ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFFFD54F),
    foregroundColor: Colors.teal,
    padding: EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 25),
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

ButtonStyle customButtonStyle2(double horizontalSize) {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.teal,
    foregroundColor: const Color(0xFFFFD54F),
    padding: EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 25),
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text roundText(String text, double fontSize) {
  return Text(
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.teal,
      ),
      text,
  );
}

void showRoundOverPopup(BuildContext context, int round, String roundScore,
    String message, String totalScoreMessage,
    {required VoidCallback nextRoundCallback}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Round $round Over!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(roundScore,
                  style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(height: 10),
              Text(message, style: TextStyle(fontSize: 25)),
              SizedBox(height: 10),
              Text(totalScoreMessage, style: TextStyle(fontSize: 25)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      nextRoundCallback();
                    },
                    style: customButtonStyle2(30),
                    child: Text("Next Round"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuPage()),
                      );
                    },
                    style: customButtonStyle(30),
                    child: Text("Back to Menu"),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
