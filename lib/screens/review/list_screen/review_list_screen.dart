import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fling/screens/review/list_screen/components/body.dart';

class ReviewListScreen extends StatelessWidget {
  const ReviewListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('후기 게시판'),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/chat_alarm.svg'))
          ]);
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}