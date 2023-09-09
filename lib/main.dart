import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/presentation/home/home_view.dart';

void main() {
  // Animate.restartOnHotReload = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF001E3D),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        textTheme:
            GoogleFonts.spaceGroteskTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeView(),
    );
  }
}
