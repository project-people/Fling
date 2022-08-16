import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fling/screens/review/components/body.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: const Color(0xFF909090),
        elevation: 0,
        title: Text('후기 게시판'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/chat_alarm.svg'))
        ]);
  }
}
