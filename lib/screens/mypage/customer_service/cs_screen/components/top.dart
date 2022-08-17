import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(45),
      color: const Color(0xFFD9D9D9),
      child: const Text('플링에 관해 궁금한 점은 고객센터를\n통해 물어보세요',
          style: TextStyle(fontSize: 17, color: Color(0xFF000000)), textAlign: TextAlign.center)
    );
  }
}
