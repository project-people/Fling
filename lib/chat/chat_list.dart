import 'package:fling/chat/components/chat.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    final  double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Chat()));
      },
      child: Stack(
        children: [
          Container(
            width: sizeWidth * 0.872,
            height: sizeHeight * 0.06,
            color: Colors.green,
          ),
          CircleAvatar(radius: sizeWidth * 0.06),
          Positioned(
            left: sizeWidth * 0.16,
            right: sizeWidth * 0.096,
            top: sizeHeight * 0.003,
            child: SizedBox(
              width: sizeWidth * 0.61,
              height: sizeHeight * 0.026,
              child: Text("채팅방1",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      color: const Color(0xff191919),
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w700)),
            ),
          ),
          Positioned(
            left: sizeWidth * 0.16,
            right: sizeWidth * 0.125,
            top: sizeHeight * 0.03,
            child: SizedBox(
              width: sizeWidth * 0.61,
              height: sizeHeight * 0.0221,
              child: Text("1번 채팅방입니다",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      color: const Color(0xff767676),
                      fontSize: sizeWidth * 0.032,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Positioned(
            left: sizeWidth * 0.789,
            right: sizeWidth * 0.004,
            top: sizeHeight * 0.03,
            child: SizedBox(
              width: sizeWidth * 0.61,
              height: sizeHeight * 0.026,
              child: Text("3분전",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      color: const Color(0xff767676),
                      fontSize: sizeWidth * 0.032,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }
}
