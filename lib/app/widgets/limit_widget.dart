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
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          LimitWidget(),
          SizedBox(width: 75),
          LimitWidget(),
        ],
      ),
    );
  }
}

class LimitWidget extends StatelessWidget {
  const LimitWidget({
    Key? key,
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
                value: 0.7,
                color: Color(0xFFFFAEED),
                backgroundColor: Color(0xFF7B93A5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Limit', style: TextStyle(color: Colors.white)),
              Divider(height: 10),
              Text('\$ 1600 / \$ 2000', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
