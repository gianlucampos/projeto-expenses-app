import 'package:flutter/material.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Last Transactions',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Divider(height: 25, color: Colors.transparent),
        TransactionWidget(),
        TransactionWidget(),
      ],
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xFF03314C),
        elevation: 0,
        child: Padding(
            padding: EdgeInsets.all(5),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF2F586F),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: Icon(
                  Icons.fastfood,
                  color: Color(0xFF1AACAD),
                ),
              ),
              title: Text('Food', style: TextStyle(color: Colors.white)),
              trailing: Text(
                '-\$ 24,00',
                style: TextStyle(
                    color: Color(0xFF1DBCBB),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
