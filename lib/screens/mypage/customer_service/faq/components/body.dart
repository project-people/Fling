import 'package:flutter/material.dart';

List<String> faq = ['플리마켓 운영정책', '플링 거래에서 지켜야 할 매너', '판매 금지 물품', '플링 뜻?'];

Widget listviewBuilder() {
  return ListView.builder(
      padding: const EdgeInsets.only(left: 13, right: 13),
      scrollDirection: Axis.vertical,
      itemCount: faq.length,
      itemBuilder: (BuildContext context, int index) {
        return frame(index);
      });
}

Widget Function(int index) frame = (index) {
  return Container(
      padding: const EdgeInsets.all(26),
      height: 40,
      width: 390,
      color: Colors.black,
      child: Column(children: [

        Text('Q.${faq[index]}'),
        const Padding(padding: EdgeInsets.all(15)),
        const Text('A: @@@@')
      ]));
};

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('사용자들이 자주 묻는 질문입니다.'),
          Expanded(child: listviewBuilder())
        ]));
  }
}
