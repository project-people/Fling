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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/mypage_cart.svg', width: 60, height: 60),),
                const Text('마이페이지', style: TextStyle(color: Colors.black, fontSize: 14),),
                ]
              ),


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/mypage_alarm.svg', width: 60, height: 60),
          ),
         const Text('알림', style: TextStyle(color: Colors.black, fontSize: 14))
        ]
        ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/mypage_runcart.svg', width: 60, height: 60)),
                  const Text('관심 글', style: TextStyle(color: Colors.black, fontSize:14))
                  ],
            )
        ],
        )
    );
  }
}