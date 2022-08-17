import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'chat_plus_button.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _textEditingController = TextEditingController();
  List<ChatMessage> _chats = [];

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(padding: EdgeInsets.only(top: statusBarHeight)),
        Stack(
          children: [
            Container(
                width: sizeWidth,
                height: sizeWidth * 0.16,
                color: const Color(0xff909090)),
            Positioned(
                left: sizeWidth * 0.064,
                top: sizeHeight * 0.017,
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: sizeWidth * 0.0746))),
            Positioned(
                left: sizeWidth * 0.165,
                top: sizeHeight * 0.015,
                child: CircleAvatar(radius: sizeWidth * 0.046)),
            Positioned(
              left: sizeWidth * 0.301,
              top: sizeHeight * 0.017,
              child: Text("채팅방",
                  style: TextStyle(
                      color: const Color(0xff191919),
                      fontSize: sizeWidth * 0.053,
                      fontWeight: FontWeight.w400)),
            ),
            Positioned(
              left: sizeWidth * 0.861,
              top: sizeHeight * 0.02,
              child: Container(
                width: sizeWidth * 0.074,
                height: sizeWidth * 0.074,
                color: Colors.purpleAccent,
              ),
            )
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return _chats[index];
          },
          itemCount: _chats.length,
        )),
        SizedBox(
          child: Row(children: [
            const ChatPlus(),
            Expanded(
              child: SizedBox(
                height: sizeHeight * 0.064,
                child: TextField(
                  controller: _textEditingController,
                  onSubmitted: _handleSubmitted,
                  style: TextStyle(fontSize: sizeHeight * 0.037),
                  decoration: InputDecoration(
                    border: InputBorder.none, //텍스트필드 밑에 파란선 제거
                    contentPadding: EdgeInsets.only(bottom: sizeHeight * 0.032),
                    hintText: "메시지를 입력하세요",
                    hintStyle: TextStyle(
                        fontSize: sizeWidth * 0.037,
                        color: const Color(0xff767676)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _handleSubmitted(_textEditingController.text);

                var now = DateTime.now();
                var hour = int.parse(DateFormat('HH').format(now));
                var time = DateFormat('HH:mm').format(now);
                if (hour > 11) {
                  var ampm = "오후";
                } else {
                  var ampm = "오전";
                }
              },
              child: Container(
                  color: const Color(0xff909090),
                  width: sizeWidth * 0.138,
                  height: sizeWidth * 0.138),
            ),
          ]),
        ),
      ]),
    );
  }

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    ChatMessage newChat = ChatMessage(text);
    setState(() {
      _chats.add(newChat);
    });
  }
}



class ChatMessage extends StatelessWidget {
  final String txt;

  const ChatMessage(
      this.txt, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
                left: sizeWidth * 0.856,
                width: sizeWidth * 0.08,
                height: sizeWidth * 0.08,
                child: Container(color: const Color(0xffEEEEEE))),
            Container(
                margin: EdgeInsets.fromLTRB(
                    sizeWidth * 0.392, 0, 0, sizeHeight * 0.014),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sizeWidth * 0.021),
                    color: const Color(0xffEEEEEE)),
                width: sizeWidth * 0.544,
                height: sizeHeight * 0.073),
            Positioned(
              left: sizeWidth * 0.418,
              top: sizeHeight * 0.012,
              bottom: sizeHeight * 0.012,
              child: SizedBox(
                width: sizeWidth * 0.512,
                child: Text(
                  txt,
                  style: TextStyle(
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000)),
                ),
              ),
            ),
            Positioned(
              left: sizeWidth * 0.234,
              top: sizeHeight * 0.023,
              child: SizedBox(
                  child: Text(
                    "오후 7:20",
                    style: TextStyle(
                        fontSize: sizeWidth * 0.032,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff767676)),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
