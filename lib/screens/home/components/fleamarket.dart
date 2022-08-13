import 'package:fling/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

List<Widget> imgList1 = [
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
];
List<Widget> imgList2 = [
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30)
];

List<String> titleList1 = ['옷 같이 팔아요', '패션 공유해요', '재능 같이 팔아요', '재능 같이 팔아요2'];
List<String> titleList2 = [
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요'
];

Widget listviewBuilder() {
  return ListView.builder(
      padding: const EdgeInsets.only(left: 13, right: 13),
      scrollDirection: Axis.horizontal,
      itemCount: imgList1.length,
      itemBuilder: (BuildContext context, int index) {
        return frame(index);
      });
}

Container Function(int index) frame = (index) {
  return Container(
      width: 304,
      margin: const EdgeInsets.fromLTRB(13, 12, 13, 45),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xFFBBBBBB), width: 0.8)),
      child: Column(children: [
        Container(width: 304, height: 173, child: imgList1[index]),
        Container(
            padding: const EdgeInsets.only(left: 17, top: 12),
            child: Row(children: [
              Expanded(
                  flex: 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(titleList1[index],
                                style: const TextStyle(fontSize: 19))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Text(titleList2[index], style: const TextStyle(fontSize: 13)))
                      ])),
              Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Container(child: imgList2[index]),
                      Positioned(
                          left: 25, child: Container(child: imgList2[index])),
                      Positioned(
                          left: 50, child: Container(child: imgList2[index]))
                    ],
                  ))
            ]))
      ]));
};

class Fleamarket extends StatelessWidget {
  const Fleamarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            SizedBox(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(28,18,27,0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('우리동네 플리마켓',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold)),
                          SizedBox(
                              height: 19,
                              child: TextButton(
                                  onPressed: () => {provider.currentIndex = 2},
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero)),
                                  child: const Text('더보기',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF000000))))),
                        ]))),
            SizedBox(height: 310, child: listviewBuilder())
          ],
        ));
  }
}
