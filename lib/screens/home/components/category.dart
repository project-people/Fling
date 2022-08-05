import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> imgList = [
  SvgPicture.asset('assets/icons/category_fashion.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_event.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_talent.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_drawing.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_home_appliance.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_handcraft.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_travel_fashion.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/category_seasonal_fashion.svg', width: 35, height: 35)
];

List<String> categories = ['패션', '이벤트', '재능', '그림', '가전제품', '수공예', '여행패션', '계절패션'];

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Row(
          children: [Text('카테고리별로 보기'), Text('더보기')],
        )),
        Table(
          children: [
            TableRow(children: [
              Column(
                children: [imgList[0], Text(categories[0])],
              ),
              Column(
                children: [imgList[1], Text(categories[1])],
              ),
              Column(
                children: [imgList[2], Text(categories[2])],
              ),
              Column(
                children: [imgList[3], Text(categories[3])],
              )
            ]),
            TableRow(children: [
              Column(
                children: [imgList[4], Text(categories[4])],
              ),
              Column(
                children: [imgList[4], Text(categories[5])],
              ),
              Column(
                children: [imgList[4], Text(categories[6])],
              ),
              Column(
                children: [imgList[4], Text(categories[7])],
              )
            ])
          ],
        )
      ],
    );
  }
}
