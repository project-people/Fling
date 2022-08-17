import 'package:fling/trade/components/Trade_Stuff_List.dart';
import 'package:fling/trade/components/Trade_Talent_List.dart';
import 'package:fling/trade/components/more.dart';
import 'package:fling/trade/trade_stuff.dart';
import 'package:fling/trade/trade_talent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TradeMain extends StatelessWidget {
  const TradeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xFF909090),
        elevation: 0,
        title: const Text("거래 게시판",
            style: TextStyle(color: Color(0xff000000))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: sizeHeight * 0.024,
            ),
            Row(
              children: [
                SizedBox(width: sizeWidth * 0.064),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      sizeWidth * 0.064, sizeHeight * 0.0172, 0, 0),
                  child: SizedBox(
                      width: sizeWidth * 0.546,
                      height: sizeHeight * 0.0221,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "검색하시오",
                          hintStyle: TextStyle(
                              color: const Color(0xff767676),
                              fontSize: sizeWidth * 0.032,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                ),
                SizedBox(width: sizeWidth * 0.053),
                SvgPicture.asset("assets/svg/search2.svg")
              ],
            ),
            SizedBox(height: sizeHeight * 0.017),
            Row(
              children: [
                SizedBox(
                  width: sizeWidth * 0.0986,
                ),
                SizedBox(
                  width: sizeWidth * 0.1614,
                  height: sizeHeight * 0.0284,
                  child: Text("물품거래",
                      style: TextStyle(
                          fontSize: sizeWidth * 0.0426,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            SizedBox(
              height: sizeHeight * 0.035,
            ),
            const LittleSfList(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TradeSf()));
                },
                child: const More()),
            SizedBox(height: sizeHeight * 0.032),
            Row(
              children: [
                SizedBox(
                  width: sizeWidth * 0.0986,
                ),
                SizedBox(
                  width: sizeWidth * 0.1614,
                  height: sizeHeight * 0.0284,
                  child: Text("재능거래",
                      style: TextStyle(
                          fontSize: sizeWidth * 0.0426,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            SizedBox(height: sizeHeight * 0.035),
            const LittleTalList(),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TradeTal()));
                },
                child: const More()),
            SizedBox(height: sizeHeight * 0.032)
          ],
        ),
      ),
    );
  }
}
