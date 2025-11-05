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
