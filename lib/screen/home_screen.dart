import 'package:expenses_app/screen/my_cards_screen.dart';
import 'package:expenses_app/widgets/limit_widget.dart';
import 'package:expenses_app/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyCardsScreen(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LimitListWidget(), TransactionWidget()],
    );
  }
}
