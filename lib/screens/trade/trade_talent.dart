import 'package:fling/screens/trade/components/Trade_Talent_List.dart';
import 'package:flutter/material.dart';

class TradeTal extends StatelessWidget {
  const TradeTal({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title:
          const Text("거래 게시판", style: TextStyle(color: Color(0xff000000))),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: sizeWidth * 0.078),
              const Text(
                "재능거래",
                style: TextStyle(fontSize: 0.042, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: sizeWidth * 0.088),
              const TalList(),
            ],
          ),
        ));
  }
}
