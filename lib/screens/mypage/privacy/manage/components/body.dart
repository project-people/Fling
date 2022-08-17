import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(padding: EdgeInsets.all(17)),
        Container(height: 15, color: const Color(0xFFD9D9D9)),
        Container(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 17),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('동의정보(필수)'),
                  Padding(padding: EdgeInsets.all(17)),
                  Text('휴대폰 번호, 이용자 이름(닉네임), 프로필 사진, 이용자의 단말기 주소록에 등록된 전화번호')
                ])),
        Container(height: 15, color: const Color(0xFFD9D9D9)),
        Container(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 17),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('동의정보(선택)'),
                  Padding(padding: EdgeInsets.all(17)),
                  Text('위치정보 이용 동의')
                ])),
        Container(height: 15, color: const Color(0xFFD9D9D9)),
        Container(
            padding: const EdgeInsets.fromLTRB(25, 17, 25, 17),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('개인정보 관리'),
                  Padding(padding: EdgeInsets.all(17)),
                  Text('내 정보 다운로드'),
                  Padding(padding: EdgeInsets.all(17)),
                  Text('플링 탈퇴')
                ])),
        Container(height: 15, color: const Color(0xFFD9D9D9))
      ],
    ));
  }
}
