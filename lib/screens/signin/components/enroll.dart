/*import 'package:fling/screens/signin/components/agree.dart';
import 'package:flutter/material.dart';

class Enroll extends StatefulWidget {
  const Enroll({Key? key}) : super(key: key);

  @override
  State<Enroll> createState() => _Enroll();
}

class _Enroll extends State<Enroll> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TextField(
              controller: idController,
              decoration: const InputDecoration(
                  hintText: '아이디'
              )
          ),

          FlatButton(
              onPressed: () {},
              child: Text('중복확인',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.grey
                ),
              )
          ),

          TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: '비밀번호'
              )),

          TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: '비밀번호 확인'
              )
          ),

          TextField(
              controller: nicknameController,
              decoration: const InputDecoration(
                  hintText: '닉네임'
              )
          ),

          Agree(),

          FlatButton(
              color:Colors.grey,
              onPressed: () => Navigator.pushNamed(context,'/'),
              child: Text('회원가입 완료',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white
                ),
              )
          )
        ]
    );
  }
}*/