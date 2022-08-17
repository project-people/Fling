import 'package:flutter/material.dart';

import 'package:fling/screens/mypage/privacy/manage/components/body.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('개인정보 관리'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
