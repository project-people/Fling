import 'package:fling/screens/mypage/mypage_screen/components/body_mypage.dart';
import 'package:flutter/material.dart';


class MypageScreen extends StatelessWidget{

  static const String_title = '마이페이지';


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
              centerTitle: true,
              title: const Text(String_title, style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.grey
      ),
      body: MyPageBody(),
      );
  }
}