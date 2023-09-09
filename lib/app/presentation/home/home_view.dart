import 'package:expenses_app/app/presentation/credit_card/credit_card_view.dart';
import 'package:expenses_app/app/presentation/home/widgets/side_menu_widget.dart';
import 'package:expenses_app/app/presentation/expenses/my_expenses_view.dart';
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
            SideMenuWidget(),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Color(0xff23e3d9),
                    Color(0xff0e6d7c),
                  ],
                ),
              ),
              child: VerticalDivider(
                endIndent: 100,
                indent: 50,
                thickness: 0.2,
              ),
            ),
            SingleChildScrollView(child: MyExpensesView()),
            SingleChildScrollView(child: CreditCardView()),
          ],
        ),
      ),
    );
  }
}
