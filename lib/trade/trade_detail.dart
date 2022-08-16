import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TradeDetail extends StatelessWidget {
  const TradeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: statusBarHeight)),
            Stack(children: [
              SvgPicture.asset("assets/svg/gnb.svg", width: sizeWidth),
              Positioned(
                left: sizeWidth * 0.153,
                top: sizeHeight * 0.024,
                child: SizedBox(
                  width: sizeWidth * 0.18,
                  height: sizeHeight * 0.026,
                  child: Text("재능거래",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: Color(0xff000000),
                          fontSize: sizeWidth * 0.048,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Container(
                width: sizeWidth,
                height: sizeHeight * 0.347,
                color: Colors.cyanAccent,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
