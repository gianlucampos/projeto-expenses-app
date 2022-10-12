import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xFF032E4A),
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
