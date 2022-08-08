import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<Widget> circle1 = [
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30)
];

List<Widget> circle2 = [
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30),
  SvgPicture.asset('assets/icons/circle.svg', width: 30, height: 30)
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

Widget Function(int index) frame = (index) {
  return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xFFBBBBBB), width: 0.8)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            flex: 1,
            child: Text(coms[index],
                style: TextStyle(fontWeight: FontWeight.bold))),
        // 커뮤니티 명
        Expanded(
            // 첫번째 글
            flex: 4,
            child: Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: circle1[index],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titles[index][0], style: TextStyle(fontSize: 22)),
                        Text(contents[index][0]),
                        Text(writed)
                      ],
                    )
                  ],
                ))),
        Padding(
            // 구분선
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 0.3,
              color: const Color(0xFFBBBBBB),
            )),
        Expanded(
            // 두번째 글
            flex: 4,
            child: Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: circle2[index],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titles[index][1], style: TextStyle(fontSize: 22)),
                        Text(contents[index][1]),
                        Text(writed)
                      ],
                    )
                  ],
                )))
      ]));
};

class ShowOff extends StatelessWidget {
  const ShowOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFEDF0F4),
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  children: const [
                    Expanded(flex: 6, child: Text('플리마켓 자랑글', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)),
                    Expanded(flex: 1, child: Text('더보기'))
                  ],
                )),
            Container(
                color: const Color(0xFFEDF0F4),
                height: 350,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Swiper(
                    autoplay: true,
                    scale: 1,
                    viewportFraction: 1,
                    loop: false,
                    itemCount: coms.length,
                    itemBuilder: (BuildContext context, int index) {
                      return frame(index);
                    }))
          ],
        ));
  }
}
