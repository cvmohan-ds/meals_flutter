import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screens/category_screen.dart';

final kColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 40, 97, 78),
);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: kColorScheme,
        textTheme: GoogleFonts.oswaldTextTheme().copyWith(
          titleLarge: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 210, 240, 240),
          ),
          bodyLarge: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 210, 240, 240),
          ),
        ),
        
      ),
      home: CategoryScreen(),
    );
  }
}
