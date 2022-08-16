import 'package:fling/trade/trade_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TradeTal extends StatefulWidget {
  @override
  State<TradeTal> createState() => _TradeTalState();
}

class _TradeTalState extends State<TradeTal> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Padding(padding: EdgeInsets.only(top: statusBarHeight)),
            Stack(
              children: [
                SvgPicture.asset("assets/svg/gnb.svg", width: sizeWidth),
                Positioned(
                  left: sizeWidth * 0.0946,
                  top: sizeHeight * 0.0197,
                  child: Text("거래 게시판",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: const Color(0xff000000),
                          fontSize: sizeWidth * 0.048,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
            GridView.extent(
      maxCrossAxisExtent: 2,
      mainAxisSpacing: sizeHeight * 0.056,
      crossAxisSpacing: sizeWidth * 0.064,
      children: _buildGridTileList(30),
    ),
          ],
        ));
  }

  List<Container> _buildGridTileList(int count) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;
    return List.generate(
      count,
      (index) => Container(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TradeDetail()));
        },
        child: Column(children: [
          Container(
              width: sizeWidth * 0.404,
              height: sizeHeight * 0.125,
              color: Colors.blue),
          Stack(
            children: [
              Container(
                  width: sizeWidth * 0.404,
                  height: sizeHeight * 0.0548,
                  color: Colors.green),
              Positioned(
                left: sizeWidth * 0.01192,
                top: sizeHeight * 0.0055,
                child: SizedBox(
                  width: sizeWidth * 0.305,
                  height: sizeHeight * 0.043,
                  child: Text("함께 요리 재능을 나눌 사람",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          fontSize: sizeWidth * 0.032,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Positioned(
                left: sizeWidth * 0.331,
                top: sizeHeight * 0.002,
                child: Container(
                  width: sizeWidth * 0.05828,
                  height: sizeHeight * 0.0369,
                  color: Colors.yellow,
                ),
              )
            ],
          ),
        ]),
      )),
    );
  }
}
