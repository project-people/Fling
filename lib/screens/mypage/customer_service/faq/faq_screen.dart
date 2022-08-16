import 'package:flutter/material.dart';

import 'package:fling/screens/mypage/customer_service/faq/components/body.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('자주 묻는 질문'));
    }
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
