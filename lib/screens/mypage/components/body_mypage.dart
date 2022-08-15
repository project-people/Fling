import 'package:fling/screens/mypage/components/acitivities.dart';
import 'package:fling/screens/mypage/components/profile.dart';
import 'package:fling/screens/mypage/components/settings_private.dart';
import 'package:flutter/material.dart';

class MyPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        myProfile(),
        const Acitivities(),
        const PrivateSettings(),
      ],
    ));
  }
}