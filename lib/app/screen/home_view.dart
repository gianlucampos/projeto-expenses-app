import 'package:expenses_app/app/screen/my_cards_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF001E3D),
          scrollbarTheme: ScrollbarThemeData(
            thumbColor:  MaterialStateProperty.all<Color>(Colors.transparent)
          ),
          textTheme:
              GoogleFonts.spaceGroteskTextTheme(Theme.of(context).textTheme)),
      home: Scaffold(
        body: MyCardsView(),
      ),
    );
  }
}
