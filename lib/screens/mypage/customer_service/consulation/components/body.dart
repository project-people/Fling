import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '이름')),
          const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '이메일')),
          const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '제목')),
          const Text('상담 내용'),
          Container(
              height: 300,
              child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(border: OutlineInputBorder()))),
        ]));
  }
}
