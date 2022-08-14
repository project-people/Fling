import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:fling/bottom_nav_page.dart';

List<Widget> circle1 = [
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35)
];

List<Widget> circle2 = [
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/circle.svg', width: 35, height: 35)
];

List<String> coms = ['계절 커뮤니티', '다른 커뮤니티', '또다른 커뮤니티', '또또다름'];

List<List> titles = [
  ['어쩌구 저쩌구', '저쩌구 어쩌구'],
  ['그렇고 저렇고', '저렇고 그렇고'],
  ['어쩌구 저쩌구', '저쩌구 어쩌구'],
  ['그렇고 저렇고', '저렇고 그렇고']
];

List<List> contents = [
  ['트랜드를 앞서 가실분 모셔요', '트랜드를 앞서 가실분 모셔요'],
  ['트랜드를 앞서 가실분 모셔요', '트랜드를 앞서 가실분 모셔요'],
  ['트랜드를 앞서 가실분 모셔요', '트랜드를 앞서 가실분 모셔요'],
  ['트랜드를 앞서 가실분 모셔요', '트랜드를 앞서 가실분 모셔요'],
];

String writed = '1시간전';

Widget listviewBuilder() {
  return ListView.builder(
      padding: const EdgeInsets.only(left: 13, right: 13),
      scrollDirection: Axis.horizontal,
      itemCount: coms.length,
      itemBuilder: (BuildContext context, int index) {
        return frame(index);
      });
}

Widget Function(int index) frame = (index) {
  return Container(
      width: 330,
      margin: const EdgeInsets.fromLTRB(13, 12, 13, 45),
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xFFBBBBBB), width: 0.8)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(coms[index],
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        Container(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // 이미지
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: circle1[index],
                ),
                Column(
                  // 제목, 내용, 시간
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titles[index][0],
                        style: const TextStyle(fontSize: 17)),
                    Text(contents[index][0],
                        style: const TextStyle(fontSize: 13)),
                    Text(writed, style: const TextStyle(fontSize: 13))
                  ],
                )
              ],
            )),
        Padding(
            // 구분선
            padding: const EdgeInsets.fromLTRB(45, 24, 10, 0),
            child: Container(
              height: 0.3,
              color: const Color(0xFFBBBBBB),
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // 이미지
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: circle2[index],
                ),
                Column(
                  // 제목, 내용, 시간
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titles[index][1],
                        style: const TextStyle(fontSize: 17)),
                    Text(contents[index][1],
                        style: const TextStyle(fontSize: 13)),
                    Text(writed, style: const TextStyle(fontSize: 13))
                  ],
                )
              ],
            ))
      ]));
};

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Container(
        color: const Color(0xFFF8F8F8),
        child: Column(
          children: [
            SizedBox(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(28, 18, 27, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('후기 게시판',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold)),
                          SizedBox(
                              height: 19,
                              child: TextButton(
                                  onPressed: () => {provider.currentIndex = 1},
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero)),
                                  child: const Text('더보기',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF000000))))),
                        ]))),
            SizedBox(height: 320, child: listviewBuilder())
          ],
        ));
  }
}
