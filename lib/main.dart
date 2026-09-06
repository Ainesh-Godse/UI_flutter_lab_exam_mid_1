import 'package:flutter/material.dart';
import 'package:ui_flutter_lab_exam/screens/home_page.dart';

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  const MyWebsite({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      title: "My Portfolio",
      theme: ThemeData(
        brightness: Brightness.dark,

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE53935),
          brightness: Brightness.dark,
        ),

        // Matte charcoal background
        scaffoldBackgroundColor: const Color(0xFF121212),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF161616),
          foregroundColor: Colors.white,
        ),

        cardTheme: CardThemeData(
          elevation: 0,
          color: const Color(0xFF1C1C1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: Color(0xFF2A2A2A),
            ),
          ),
        ),


        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),

          bodyMedium: TextStyle(
            color: Colors.white,
          ),

          bodySmall: TextStyle(
            color: Colors.white70,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE53935),
            foregroundColor: Colors.white,
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFE53935),
          ),
        ),

        chipTheme: ChipThemeData(
          backgroundColor: const Color(0xFF241818),
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
          side: const BorderSide(
            color: Color(0xFFE53935),
          ),
        ),

        iconTheme: const IconThemeData(
          color: Color(0xFFE53935),
        ),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}