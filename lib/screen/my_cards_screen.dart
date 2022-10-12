import 'package:expenses_app/widgets/bar_chart2_widget.dart';
import 'package:expenses_app/widgets/limit_widget.dart';
import 'package:expenses_app/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 700,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          color: Color(0xFF032E4A),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Cards',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2D556C),
                      side: BorderSide(
                        width: 1,
                        color: Colors.blueAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        '+ Card',
                        style: TextStyle(
                            color: Color(0xFF1AACAD), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(height: 25,color: Colors.transparent),
              LimitListWidget(),
              BarChartSample2(),
              Divider(height: 25,color: Colors.transparent),
              TransactionListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
