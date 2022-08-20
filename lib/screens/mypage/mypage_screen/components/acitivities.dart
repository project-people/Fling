import 'package:fling/screens/mypage/activities/activities_screen.dart';
import 'package:fling/screens/mypage/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:fling/bottom_nav_page.dart';

class Acitivities extends StatelessWidget {
  const Acitivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Container (
        margin: const EdgeInsets.only(left: 69.0, right: 69.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                IconButton(
                      onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ActivitiesScreen()));},
                      icon: Image.asset('assets/icons/mypage_cart.png', width: 60, height: 60),),
                const Text('나의 활동', style: TextStyle(color: Colors.black, fontSize: 14),),
                ]
              ),


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
          IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => const NotificationScreen()));},
            icon: Image.asset('assets/icons/mypage_alarm.png', width: 60, height: 60),
          ),
         const Text('알림', style: TextStyle(color: Colors.black, fontSize: 14))
        ]
        ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                IconButton(
                    onPressed: () => {provider.currentIndex = 3},
                  icon: Image.asset('assets/icons/mypage_runcart.png', width: 60, height: 60)),
                  const Text('관심 글', style: TextStyle(color: Colors.black, fontSize:14))
                  ],
            )
        ],
        )
    );
  }
}