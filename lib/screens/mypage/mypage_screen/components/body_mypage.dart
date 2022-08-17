import 'package:fling/screens/mypage/mypage_screen/components/acitivities.dart';
import 'package:fling/screens/mypage/mypage_screen/components/profile.dart';
import 'package:fling/screens/mypage/mypage_screen/components/settings_private.dart';
import 'package:flutter/material.dart';

class MyPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: <Widget>[
        myProfile(),
        const Acitivities(),
        const PrivateSettings(),
      ],
    ));
  }
}