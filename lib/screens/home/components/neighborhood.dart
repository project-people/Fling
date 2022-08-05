import 'package:fling/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<Widget> imgList1 = [
  SvgPicture.asset('assets/images/section_1.svg'),
  SvgPicture.asset('assets/images/section_2.svg'),
  SvgPicture.asset('assets/images/section_3.svg'),
  SvgPicture.asset('assets/images/section_4.svg')
];
List<Widget> imgList2 = [
  SvgPicture.asset('assets/icons/circle.svg'),
  SvgPicture.asset('assets/icons/circle.svg'),
  SvgPicture.asset('assets/icons/circle.svg'),
  SvgPicture.asset('assets/icons/circle.svg')
];

List<String> titleList1 = ['옷 같이 팔아요', '패션 공유해요', '재능 같이 팔아요', '재능 같이 팔아요2'];
List<String> titleList2 = [
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요',
  '트랜드를 앞서 가실 분 모셔요'
];

Column Function(int index) frame = (index) {
  return Column(children: [
    Expanded(flex: 3, child: imgList1[index]),
    Expanded(
        flex: 1,
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Column(children: [
                Container(child: Text(titleList1[index])),
                Container(child: Text(titleList2[index]))
              ])),
          Expanded(flex: 1, child: imgList2[index])
        ]))
  ]);
};

class Neighborhood extends StatelessWidget {
  const Neighborhood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            '우리동네 플리마켓',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            color: const Color(0xFFEDF0F4),
            height: 280,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Swiper(
                    autoplay: true,
                    scale: 0.9,
                    viewportFraction: 0.8,
                    itemCount: imgList1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return frame(index);
                    })))
      ],
    );
  }
}
