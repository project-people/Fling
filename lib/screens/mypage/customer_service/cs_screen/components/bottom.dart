import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        color: const Color(0xFFD9D9D9),
        child: const Center(child: Text('고객센터 123-1234',
            style: TextStyle(fontSize: 17, color: Color(0xFF000000))))
    );
  }
}
