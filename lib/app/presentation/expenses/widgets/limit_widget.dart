import 'package:flutter/material.dart';

class LimitListWidget extends StatelessWidget {
  const LimitListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: Color(0xFF03314C),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        children: [
          LimitWidget(
            color: Color(0xFFFFAEED),
            typeLimit: 'Card',
            limitRange: [1650, 9250],
          ),
          SizedBox(width: 75),
          LimitWidget(
            color: Colors.greenAccent,
            typeLimit: 'Total',
            limitRange: [4950*2, 27750],
          ),
        ],
      ),
    );
  }
}

class LimitWidget extends StatelessWidget {
  final Color color;
  final String typeLimit;
  final List<int> limitRange;

  const LimitWidget({
    Key? key,
    required this.color,
    required this.typeLimit,
    required this.limitRange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Color(0xFF03314C),
        borderRadius: BorderRadius.all(Radius.circular(15)), //Bo
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: limitRange[0] / limitRange[1],
                color: color,
                backgroundColor: Color(0xFF7B93A5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$typeLimit Limit', style: TextStyle(color: Colors.white)),
              Divider(height: 10),
              Text('\$ ${limitRange[0]} / \$ ${limitRange[1]}',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
