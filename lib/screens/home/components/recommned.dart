import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<Widget> imgList = [
  SvgPicture.asset('assets/images/section_1.svg'),
  SvgPicture.asset('assets/images/section_2.svg'),
  SvgPicture.asset('assets/images/section_3.svg'),
  SvgPicture.asset('assets/images/section_4.svg')
];

class Recommend extends StatelessWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFEDF0F4),
        height: 280,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
            child: Swiper(
                autoplay: true,
                scale: 0.9,
                viewportFraction: 0.8,
                pagination: const SwiperPagination(alignment: Alignment.bottomRight),
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index) {
                  return imgList[index];
                })));
  }
}
