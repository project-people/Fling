import 'package:fling/screens/mypage/saved/components/body.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          title: const Text('저장 목록'),
      );
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
