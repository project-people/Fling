import 'package:flutter/material.dart';

class TradeTalDetail extends StatelessWidget {
  const TradeTalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF909090),
        elevation: 0,
        title:
            const Text("재능거래", style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Container(width: sizeWidth,)],
        ),
      ),
    );
  }
}
