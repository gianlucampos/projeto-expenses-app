import 'package:expenses_app/app/widgets/limit_widget.dart';
import 'package:expenses_app/app/widgets/linear_chart_widget.dart';
import 'package:expenses_app/app/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class MyCardsView extends StatelessWidget {
  const MyCardsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 700,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
              colors: [
                Color(0xFF022B47),
                Colors.transparent,
                Colors.transparent,
              ]
          ),
          color: Color(0xFF022B47),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Column(
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
                      backgroundColor: Color(0xFF2D556C),
                      side: BorderSide(
                        width: 1,
                        color: Colors.blueAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Text(
                        '+ Card',
                        style: TextStyle(
                            color: Color(0xFF1AACAD),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(height: 25, color: Colors.transparent),
              LimitListWidget(),
              Divider(height: 25, color: Colors.transparent),
              CharTransactionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CharTransactionsWidget extends StatelessWidget {
  const CharTransactionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      decoration: BoxDecoration(
        color: Color(0xFF03314C),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Text(
            'Saved this month',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Divider(height: 15, color: Colors.transparent),
          Text(
            '\$ 2.550,00',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          LinearChartWidget(),
          Divider(height: 5, color: Colors.transparent),
          Container(
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  const Color(0xFF28C0BE),
                  Colors.transparent,
                ].map((color) => color.withOpacity(0.20)).toList(),
              ),
            ),
          ),
          Divider(height: 45, color: Colors.transparent),
          TransactionListWidget()
        ],
      ),
    );
  }
}
