import 'package:flutter/material.dart';
import 'package:fling/screens/mypage/privacy/account/components/body.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('플링 계정'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
