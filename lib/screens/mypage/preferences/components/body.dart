import 'package:fling/screens/mypage/preferences/components/info.dart';
import 'package:fling/screens/mypage/preferences/components/login.dart';
import 'package:fling/screens/mypage/preferences/components/notice.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: const [Login(), Notice(), Info()]));
  }
}
