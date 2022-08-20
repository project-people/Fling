import 'package:flutter/material.dart';

class TradeSfDetail extends StatelessWidget {
  const TradeSfDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Container(width: sizeWidth,)
          ],
        ),
      ),
    );
  }
}
