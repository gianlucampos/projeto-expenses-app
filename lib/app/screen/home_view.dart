import 'package:expenses_app/app/screen/my_cards_view.dart';
import 'package:expenses_app/app/widgets/limit_widget.dart';
import 'package:expenses_app/app/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MyCardsView(),
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
