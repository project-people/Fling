import 'package:flutter/material.dart';

import 'package:fling/screens/mypage/customer_service/notice/components/body.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('고객센터'));
    }
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
