import 'package:fling/screens/chat/components/chat.dart';
import 'package:flutter/material.dart';

final List<String> name = <String>["김도현", "노준하", "정유정"];
final List<String> chatcontents = <String>[
  "1번 채팅방입니다.",
  "2번 채팅방입니다.",
  "3번 채팅방입니다."
];

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Chat()));
            },
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: sizeWidth * 0.872,
                      height: sizeHeight * 0.06,
                    ),
                    CircleAvatar(radius: sizeWidth * 0.06),
                    Positioned(
                      left: sizeWidth * 0.16,
                      right: sizeWidth * 0.096,
                      top: sizeHeight * 0.003,
                      child: SizedBox(
                        width: sizeWidth * 0.61,
                        height: sizeHeight * 0.026,
                        child: Text(name[index],
                            style: TextStyle(
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
                        child: Text(chatcontents[index],
                            style: TextStyle(
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
                                color: const Color(0xff767676),
                                fontSize: sizeWidth * 0.032,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: sizeWidth * 0.053),
                Container(
                  margin: EdgeInsets.only(left: sizeWidth*0.226),
                    color: const Color(0xffEDEDED),
                    width: sizeWidth * 0.709,
                    height: sizeHeight * 0.001),
                SizedBox(height: sizeWidth*0.053)
              ],
            ),
          );
        });
  }
}
