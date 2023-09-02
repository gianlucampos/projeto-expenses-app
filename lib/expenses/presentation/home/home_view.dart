import 'package:expenses_app/expenses/presentation/credit_card/credit_card_view.dart';
import 'package:expenses_app/expenses/presentation/my_cards/my_cards_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SingleChildScrollView(child: MyCardsView()),
            SingleChildScrollView(child: CreditCardView()),
          ],
        ),
      ),
    );
  }
}
