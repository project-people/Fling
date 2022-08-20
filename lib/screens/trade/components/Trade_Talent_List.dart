import 'package:fling/screens/trade/trade_stuff_detail.dart';
import 'package:flutter/material.dart';

final List<String> title = <String>[
  "함께 요리 재능을 나눌 사람",
  "함께 뜨개질 재능을 나눌 사람",
  "함께 아무 재능이나 나눌 사람",
  "함께 게임 할 사람",
  "함께 뭔가 할 사람",
  "함께 놀 사람",
  "함께 코드 짤 사람"
];

class TalList extends StatelessWidget {
  const TalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
        padding:
        EdgeInsets.only(left: sizeWidth * 0.064),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TradeSfDetail()));
                  },
                  child: Column(children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.125,
                        color: const Color(0xffD8D8D8)),
                    Stack(children: [
                      Container(
                          width: sizeWidth * 0.404,
                          height: sizeHeight * 0.0548,
                          color: const Color(0xffFFFFFF)),
                      Positioned(
                          left: sizeWidth * 0.01192,
                          top: sizeHeight * 0.0055,
                          child: SizedBox(
                            width: sizeWidth * 0.305,
                            height: sizeHeight * 0.043,
                            child: Text(title[index],
                                style: TextStyle(
                                    fontSize: sizeWidth * 0.032,
                                    fontWeight: FontWeight.w400)),
                          ))
                    ])
                  ])),
              Positioned(
                left: sizeWidth * 0.331,
                top: sizeWidth * 0.276,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: sizeWidth * 0.05828,
                    height: sizeHeight * 0.0369,
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          );
        });
  }
}

class LittleTalList extends StatelessWidget {
  const LittleTalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return GridView.builder(
        padding:
        EdgeInsets.only(left: sizeWidth * 0.064),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TradeSfDetail()));
                  },
                  child: Column(children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.125,
                        color: const Color(0xffD8D8D8)),
                    Stack(children: [
                      Container(
                          width: sizeWidth * 0.404,
                          height: sizeHeight * 0.0548,
                          color: const Color(0xffFFFFFF)),
                      Positioned(
                          left: sizeWidth * 0.01192,
                          top: sizeHeight * 0.0055,
                          child: SizedBox(
                            width: sizeWidth * 0.305,
                            height: sizeHeight * 0.043,
                            child: Text(title[index],
                                style: TextStyle(
                                    fontSize: sizeWidth * 0.032,
                                    fontWeight: FontWeight.w400)),
                          ))
                    ])
                  ])),
              Positioned(
                left: sizeWidth * 0.331,
                top: sizeWidth * 0.276,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: sizeWidth * 0.05828,
                    height: sizeHeight * 0.0369,
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          );
        });
  }}
