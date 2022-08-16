import 'package:fling/chat/components/Promise.dart';
import 'package:fling/chat/components/map.dart';
import 'package:flutter/material.dart';

class ChatPlus extends StatelessWidget {
  const ChatPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                      width: sizeWidth,
                      height: sizeWidth * 0.77512,
                      decoration: const BoxDecoration(color: Color(0xffEEEEEE)),
                      child: Column(children: <Widget>[
                        SizedBox(height: sizeWidth * 0.146),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth * 0.241),
                            GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                      width: sizeWidth * 0.138,
                                      height: sizeWidth * 0.138,
                                      color: const Color(0xff909090)),
                                  SizedBox(height: sizeWidth * 0.016),
                                  Text("사진",
                                      style: TextStyle(
                                          fontSize: sizeWidth * 0.032,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                            SizedBox(width: sizeWidth * 0.24),
                            GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                      width: sizeWidth * 0.138,
                                      height: sizeWidth * 0.138,
                                      color: const Color(0xff909090)),
                                  SizedBox(height: sizeWidth * 0.016),
                                  Text("카메라",
                                      style: TextStyle(
                                          fontSize: sizeWidth * 0.032,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: sizeWidth * 0.093),
                        Row(
                          children: [
                            SizedBox(width: sizeWidth * 0.241),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => MapSample()));
                              },
                              child: Column(
                                children: [
                                  Container(
                                      width: sizeWidth * 0.138,
                                      height: sizeWidth * 0.138,
                                      color: const Color(0xff909090)),
                                  SizedBox(height: sizeWidth * 0.016),
                                  Text("장소",
                                      style: TextStyle(
                                          fontSize: sizeWidth * 0.032,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                            SizedBox(width: sizeWidth * 0.24),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => const Promise()));},
                              child: Positioned(
                                left: sizeWidth * 0.62,
                                top: sizeWidth * 0.441,
                                child: Column(
                                  children: [
                                    Container(
                                        width: sizeWidth * 0.138,
                                        height: sizeWidth * 0.138,
                                        color: const Color(0xff909090)),
                                    SizedBox(height: sizeWidth * 0.016),
                                    Text("약속",
                                        style: TextStyle(
                                            fontSize: sizeWidth * 0.032,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ])),
                );
              });
        },
        child: Stack(
          children: [
            Container(
                color: const Color(0xffF1F1F5),
                width: sizeWidth * 0.138,
                height: sizeWidth * 0.138),
            Positioned(
              left: sizeWidth * 0.053,
              top: sizeWidth * 0.053,
              child: Icon(
                Icons.add,
                size: sizeWidth * 0.032,
              ),
            )
          ],
        ));
  }
}
