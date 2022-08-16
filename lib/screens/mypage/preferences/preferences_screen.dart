import 'package:flutter/material.dart';

import 'components/body.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text('환경설정'));
    }
    return Scaffold(
        appBar: buildAppBar(),
        body: Body()
    );
  }
}
