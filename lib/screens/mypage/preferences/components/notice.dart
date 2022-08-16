import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25,0,25,0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(27), child: Text('알림')),
              Container(
              padding: const EdgeInsets.all(12),
              color:  const Color(0xFFD9D9D9),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [Text('푸시 알림 설정'),
                        Divider(),
                        Text('플링의 플리마켓정보 및 알림을 실시간으로 받아보실 수 있습니다.')]))
            ]));
  }
}
