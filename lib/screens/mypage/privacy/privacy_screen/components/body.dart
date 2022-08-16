import 'package:fling/screens/mypage/privacy/account/account_screen.dart';
import 'package:fling/screens/mypage/privacy/manage/manage_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const AccountScreen()));},
              child: const Text('플링 계졍',
                  style: TextStyle(fontSize: 17, color: Color(0xFF000000)))),
          TextButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const ManageScreen()));},
              child: const Text('개인정보 관리',
                  style: TextStyle(fontSize: 17, color: Color(0xFF000000)))),
        ]));
  }
}
