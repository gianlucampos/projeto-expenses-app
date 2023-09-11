import 'package:expenses_app/app/presentation/credit_card/credit_card_view.dart';
import 'package:expenses_app/app/presentation/home/widgets/custom_divider_widget.dart';
import 'package:expenses_app/app/presentation/home/widgets/side_menu_widget.dart';
import 'package:expenses_app/app/presentation/expenses/expenses_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SideMenuWidget(),
            CustomDividerWidget(),
            SingleChildScrollView(child: ExpensesView()),
            Transform.scale(
              scale: .8,
              child: SingleChildScrollView(child: CreditCardView()),
            ),
          ],
        ),
      ),
    );
  }
}
