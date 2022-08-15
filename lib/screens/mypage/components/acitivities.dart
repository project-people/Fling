import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Acitivities extends StatelessWidget {
  const Acitivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
        margin: const EdgeInsets.only(left: 69.0, right: 69.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/mypage_cart.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/mypage_alarm.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/mypage_runcart.svg'),
      )
    ],
    )
    );
  }
}