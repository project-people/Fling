import 'package:fling/main.dart';
import 'package:flutter/material.dart';

import 'package:fling/screens/home/home_screen.dart';
import 'package:fling/screens/review/review_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';

List<Widget> icon = [
  SvgPicture.asset('assets/icons/bottom_home.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_review.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_flea_market.svg',
      width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_saved.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_profile.svg', width: 35, height: 35),
];

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  var currentTab = [ HomeScreen(),
    ReviewScreen(),
    Text('플리마켓'),
    Text('저장'),
    Text('후기')];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
        body: SafeArea(
          child: currentTab[provider.currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: icon[0], label: '홈'),
            BottomNavigationBarItem(icon: icon[1], label: '후기 게시판'),
            BottomNavigationBarItem(icon: icon[2], label: '플리마켓'),
            BottomNavigationBarItem(icon: icon[3], label: '저장된 글'),
            BottomNavigationBarItem(icon: icon[4], label: '마이 페이지')
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: provider.currentIndex,
          onTap: (index) {provider.currentIndex = index;},
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ));
  }
/*
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }*/
}
