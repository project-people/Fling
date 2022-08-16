import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.all(27), child: Text('로그인')),
          Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFFD9D9D9),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('aaaa@naver.com'),
                          TextButton(
                            onPressed: () {},
                            child: const Text('로그아웃 >',
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xFF000000))),
                          )
                        ]),
                    const Divider(),
                    const Text('자동 로그인')
                  ]))
        ]));
  }
}
