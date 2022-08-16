import 'package:fling/screens/mypage/customer_service/cs_screen/components/bottom.dart';
import 'package:fling/screens/mypage/customer_service/cs_screen/components/top.dart';
import 'package:flutter/material.dart';
import 'package:fling/screens/mypage/customer_service/cs_screen/components/body.dart';

class CustomerServiceScreen extends StatelessWidget {
  const CustomerServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('고객센터'));
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [Top(), Body(), Bottom()])));
  }
}
