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

Column Function(int index) frame = (index) {
  return Column(children: [
    Expanded(flex: 1, child: Text(coms[index])),
    Expanded(flex: 4, child: Row(children: [
      circle1[index], Column(children: [
        Text(titles[index][0]), Text(contents[index][0]), Text(writed)
      ],)
    ],)),
    Expanded(flex: 4, child: Row(children: [
      circle1[index], Column(children: [
        Text(titles[index][1]), Text(contents[index][1]), Text(writed)
      ],)
    ],))
  ]);
};

class ShowOff extends StatelessWidget {
  const ShowOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Row(
              children: [Text("플리마켓 자랑글"), Text("더보기")],
            )),
        Container(
            color: const Color(0xFFEDF0F4),
            height: 280,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Swiper(
                    autoplay: true,
                    scale: 0.9,
                    viewportFraction: 0.9,
                    itemCount: coms.length,
                    itemBuilder: (BuildContext context, int index) {
                      return frame(index);
                    })))
      ],
    );
  }
}
