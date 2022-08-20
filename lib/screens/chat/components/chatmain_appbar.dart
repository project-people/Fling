import 'package:flutter/material.dart';

class ChatMainAppBar extends StatelessWidget {
  const ChatMainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
            width: sizeWidth,
            height: sizeWidth * 0.16,
            color: const Color(0xff909090)),
        Positioned(
            left: sizeWidth * 0.064,
            top: sizeHeight * 0.009,
            child: CircleAvatar(radius: sizeWidth * 0.06)),
        Positioned(
          left: sizeWidth * 0.226,
          top: sizeHeight * 0.019,
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
    );
  }
}
