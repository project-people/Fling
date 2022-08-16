import 'package:fling/screens/mypage/activities/components/completed.dart';
import 'package:fling/screens/mypage/activities/components/recruiting.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 214,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: TabBar(
            controller: _tabController,
            labelColor: const Color(0xFF000000),
            tabs: const [Tab(text: '모집중'), Tab(text: '활동완료')]
          )
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
              children: [Recruiting(), Completed()],
          )
        )
      ]
    );
  }
}
