import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25,0,25,0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.all(27), child: Text('정보')),
          Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFFD9D9D9),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('개인 정보 처리방침'),
                    Divider(),
                    Text('버전 정보')
                  ]))
        ]));
  }
}
