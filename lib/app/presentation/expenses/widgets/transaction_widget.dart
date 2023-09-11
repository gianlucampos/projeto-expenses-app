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
    return SizedBox(
      height: 170,
      child: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
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
            title: Text(index == 7 ? 'I think its timee for you to start to seriously consider salads or you will flip the car' : 'Food',
                style: TextStyle(color: Colors.white)),
            trailing: Text(
              '-\$ 24,00',
              style: TextStyle(
                  color: Color(0xFF1DBCBB),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
