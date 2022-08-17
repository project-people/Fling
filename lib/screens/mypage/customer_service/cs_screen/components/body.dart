import 'package:flutter/material.dart';

import 'package:fling/screens/mypage/customer_service/consulation/consulation_screen.dart';
import 'package:fling/screens/mypage/customer_service/faq/faq_screen.dart';
import 'package:fling/screens/mypage/customer_service/notice/notice_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const ConsulationScreen()));},
              child: const Text('1:1 상담',
                  style: TextStyle(fontSize: 17, color: Color(0xFF000000)))),
          TextButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const FaqScreen()));},
              child: const Text('자주 찾는 질문',
                  style: TextStyle(fontSize: 17, color: Color(0xFF000000)))),
          TextButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(
                  builder: (context) => const NoticeScreen()));},
              child: const Text('공지사항',
                  style: TextStyle(fontSize: 17, color: Color(0xFF000000)))),
        ]));
  }
}
