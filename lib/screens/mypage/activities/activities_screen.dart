import 'package:flutter/material.dart';

import 'package:fling/screens/mypage/activities/components/body.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('나의 활동'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
