import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<Widget> imgList1 = [
  SvgPicture.asset('assets/images/section_1.svg', width: 350, height: 200),
  SvgPicture.asset('assets/images/section_2.svg', width: 350, height: 200),
  SvgPicture.asset('assets/images/section_3.svg', width: 350, height: 200),
  SvgPicture.asset('assets/images/section_4.svg', width: 350, height: 200)
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

Widget Function(int index) frame = (index) {
  return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xFFBBBBBB), width: 0.8)),
      child: Column(children: [
        Container(child: imgList1[index]),
        Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              Expanded(
                  flex: 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(titleList1[index],
                                style: TextStyle(fontSize: 22))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                            child: Text(titleList2[index]))
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

class Neighborhood extends StatelessWidget {
  const Neighborhood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(
              children: const [
                Expanded(
                    flex: 6,
                    child: Text(
                      '우리동네 플리마켓',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    )),
                Expanded(flex: 1, child: Text('더보기'))
              ],
            )),
        Container(
            color: const Color(0xFFEDF0F4),
            height: 300,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Swiper(
                    autoplay: true,
                    scale: 1,
                    viewportFraction: 1,
                    itemCount: imgList1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return frame(index);
                    })))
      ],
    );
  }
}
