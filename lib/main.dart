import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════
// PALETA DE COLORES OFICIAL DE STOCKEA
// ═══════════════════════════════════════════════════════════
class StockeaColors {
  static const Color background = Color(0xFFF9FBFC); // Fondo claro
  static const Color navy = Color(0xFF0B033C);       // Texto/marca
  static const Color coral = Color(0xFFFF6652);      // Acento principal
  static const Color skyBlue = Color(0xFFC7E3EE);    // Acento secundario
  static const Color blush = Color(0xFFF0D1CD);      // Acento cálido
}

void main() {
  runApp(const StockeaApp());
}

class StockeaApp extends StatelessWidget {
  const StockeaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stockea',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: StockeaColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: StockeaColors.coral,
          primary: StockeaColors.coral,
          onPrimary: Colors.white,
          surface: StockeaColors.background,
          onSurface: StockeaColors.navy,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StockeaColors.background,
      body: const Center(
        child: Text(
          'STOCKEA',
          style: TextStyle(
            color: StockeaColors.navy,
            fontSize: 44,
            fontWeight: FontWeight.w700,
            letterSpacing: 8,
          ),
        ),
      ),
    );
  }
}