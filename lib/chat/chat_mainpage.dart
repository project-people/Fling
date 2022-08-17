import 'package:fling/chat/chat_list.dart';
import 'package:fling/chat/components/chatmain_appbar.dart';
import 'package:fling/trade/trade_main.dart';
import 'package:flutter/material.dart';

class ChatMain extends StatelessWidget {
  const ChatMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        const ChatMainAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: sizeHeight * 0.02,
                ),
                Stack(
                  children: [
                    Container(
                        width: sizeWidth * 0.872,
                        height: sizeHeight * 0.064,
                        color: const Color(0xffF1F1F5)),
                    Positioned(
                      left: sizeWidth * 0.037,
                      top: sizeHeight * 0.016,
                      bottom: sizeHeight * 0.015,
                      child: Icon(
                        Icons.search,
                        size: sizeWidth * 0.074,
                      ),
                    ),
                    Positioned(
                      left: sizeWidth * 0.128,
                      top: sizeHeight * 0.003,
                      child: SizedBox(
                        width: sizeWidth * 0.690,
                        height: sizeHeight * 0.259,
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "채팅방을 검색하세요",
                              hintStyle: TextStyle(
                                  color: const Color(0xff767676),
                                  fontSize: sizeWidth * 0.037,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ), //검색창
                SizedBox(
                  height: sizeHeight * 0.03,
                ),
                Row(
                  children: [
                    SizedBox(width: sizeWidth * 0.064),
                    Text("최근 메시지",
                        style: TextStyle(
                            fontSize: sizeWidth * 0.048,
                            fontWeight: FontWeight.w700)),
                    SizedBox(width: sizeWidth * 0.568),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.more_horiz, size: sizeWidth * 0.074))
                  ],
                ),
                SizedBox(height: sizeWidth * 0.064),
                ChatList(),
                SizedBox(
                  height: sizeHeight * 0.03,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TradeMain()));
                    },
                    child: Container(
                        width: 50, height: 50, color: Colors.blueAccent)),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
