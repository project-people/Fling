import 'package:flutter/material.dart';

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
                icon: Image.asset('assets/icons/chat_alarm.png'))
          ]);
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}