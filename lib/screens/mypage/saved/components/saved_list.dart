import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<List> contents = [
  ['옷 팔 사람', '함께 좋은 옷 판매할 사람'],
  ['물건 팔 사람', '함께 좋은 물건 판매할 사람']
];

Widget thumbnail =
SvgPicture.asset('assets/icons/logo.svg', width: 94, height: 94);
Widget heart = SvgPicture.asset('assets/icons/logo.svg', width: 28, height: 28);
Widget comment =
SvgPicture.asset('assets/icons/logo.svg', width: 28, height: 28);

Widget listviewBuilder() {
  if (contents.isNotEmpty) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 13, right: 13),
        scrollDirection: Axis.vertical,
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return frame(index);
        });
  } else {
    return const Center(child: Text('저장 목록이 없어요.\n나의 관심사를 저장해 보세요.'));
  }
}

Widget Function(int index) frame = (index) {
  return Container(
    width: 343,
    height: 190,
    padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
    color: const Color(0xFFF8F8F8),
    child: Column(children: [
      Row(children: [
        thumbnail,
        const Padding(padding: EdgeInsets.only(left: 26)),
        SizedBox(width: 206, child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(contents[index][0]),
              Text(contents[index][1]),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [heart, comment])
            ]))
      ]),
      const Divider(),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [Text('장소 선정중'), Text('모집중')])
    ]),
  );
};

class SavedList extends StatelessWidget {
  const SavedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listviewBuilder();
  }
}
