import 'package:flutter/material.dart';
import 'package:fling/screens/mypage/notification/components/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('알림'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
