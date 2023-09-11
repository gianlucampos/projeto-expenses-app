import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        indent: 100,
        thickness: 0.2,
      ),
    );
  }
}
