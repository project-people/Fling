import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('이메일'), Text('aaaa@naver.com')]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('전화번호'), Text('010-1234-5678')])
        ]));
  }
}
