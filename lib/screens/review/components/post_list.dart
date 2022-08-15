import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> profile = [
  SvgPicture.asset('assets/icons/circle.svg', width: 42, height: 42),
  SvgPicture.asset('assets/icons/circle.svg', width: 42, height: 42)
];

List<String> nicknames = ['플링이', '플링이'];
List<String> writed = ['2022.8.5', '2022.8.5'];

List<Widget> thumbnail = [
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
  SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover)
];

List<String> titles = ['즐거웠던 문현 플리마켓 후기', '즐거웠던 문현 플리마켓 후기'];
List<String> contents = [
  '설레임과 걱정이 공존하는 플리마켓을 앞두고 귀엽게 뽑아본 '
      '포스터들 너무 귀엽죠? 준비를 마치고 드디어 행사장으로! 오늘처럼...',
  '설레임과 걱정이 '
      '공존하는 플리마켓을 앞두고 귀엽게 뽑아본 포스터들 너무 귀엽죠? '
      '준비를 마치고 드디어 행사장으로! 오늘처럼...'
];

List<Widget> img = [
  SvgPicture.asset('assets/icons/logo.svg', width: 29, height: 29),
  SvgPicture.asset('assets/icons/logo.svg', width: 29, height: 29)
];
Widget imgComment =
    SvgPicture.asset('assets/icons/logo.svg', width: 24, height: 22);
Widget imgSaved =
    SvgPicture.asset('assets/icons/logo.svg', width: 17, height: 22);

List<List> savedNcommentsCount = [
  ['6', '6'],
  ['5', '5']
];

Widget listviewBuilder() {
  return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: titles.length,
      itemBuilder: (BuildContext context, int index) {
        return frame(index);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 10.0,
            color: Color(0xFFEDEDED),
          ));
}

Widget Function(int index) frame = (index) {
  return Container(
    height: 390,
    width: 343,
    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.only(right: 8),
                child: profile[index]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(nicknames[index], style: const TextStyle(fontSize: 13)),
              Text(writed[index], style: const TextStyle(fontSize: 13))
            ])
          ],
        ),
        Container(padding: const EdgeInsets.fromLTRB(0, 13, 0, 13), height: 210, width: 343, child: thumbnail[index]),
        Text(titles[index], style: const TextStyle(fontSize: 19)),
        Text(contents[index], style: const TextStyle(fontSize: 13)),
        Padding(padding: EdgeInsets.only(top: 14)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            img[index],
            Row(
              children: [
                Row(children: [
                  imgSaved,
                  Text(savedNcommentsCount[index][0]),
                  imgComment,
                  Text(savedNcommentsCount[index][1])
                ])
              ],
            )
          ],
        )
      ],
    ),
  );
};

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listviewBuilder();
  }
}
