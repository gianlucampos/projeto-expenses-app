import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/presentation/home/home_view.dart';

void main() {
  setupDI();
  runApp(const MainApp());
}

void setupDI() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<CreditCardStore>(CreditCardStore());
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
