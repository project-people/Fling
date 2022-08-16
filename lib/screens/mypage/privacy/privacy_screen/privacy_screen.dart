import 'package:flutter/material.dart';
import 'package:fling/screens/mypage/privacy/privacy_screen//components/body.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('개인정보'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
