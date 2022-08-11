import 'package:fling/constants.dart';
import 'package:fling/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> icon = [
  SvgPicture.asset('assets/icons/bottom_home.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_flea_market.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_neighborhood.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_saved.svg', width: 35, height: 35),
  SvgPicture.asset('assets/icons/bottom_profile.svg', width: 35, height: 35),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fling',
        /*theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
              body: TabBarView(children: [
                Center(
                  child: HomeScreen(),
                ),
                const Center(
                  child: Text('플리마켓 자랑'),
                ),
                const Center(
                  child: Text('플리마켓'),
                ),
                const Center(
                  child: Text('저장'),
                ),
                const Center(child: Text('마이페이지'))
              ]),
              extendBodyBehindAppBar: true,
              bottomNavigationBar: Container(
                  color: const Color(0xFFFFFFFF),
                  child: Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 10, top: 5),
                    child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: const Color(0xFFFF0000),
                        indicatorWeight: 2,
                        labelColor: const Color(0xFFFF0000),
                        unselectedLabelColor: const Color(0xFF000000),
                        labelStyle: const TextStyle(
                          fontSize: 13,
                        ),
                        tabs: [
                          Tab(icon: icon[0]),
                          Tab(icon: icon[1]),
                          Tab(icon: icon[2]),
                          Tab(icon: icon[3]),
                          Tab(icon: icon[4]),
                        ]),
                  ))),
        ));
  }
}
