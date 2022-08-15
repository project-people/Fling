import 'package:flutter/material.dart';

class Chip {
  String label;
  bool isSelected;

  Chip(this.label, this.isSelected);
}


class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => FilterState();
}

class FilterState extends State<Filter> {
  bool selected = false;
  final List<Chip> _chipsList = [
    Chip('전체선택', false),
    Chip('의류', false),
    Chip('재능기부', false),
    Chip('의류',  false),
    Chip('의류', false),
    Chip('의류', false),
    Chip('의류', false)
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        children: [Wrap(children: filterChips())]),
    );
  }

  List<Widget> filterChips() {
    List<Widget> chips = [];
    for (int i=0; i< _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left:12, right: 12),
        child: FilterChip(
          label: Text(_chipsList[i].label),
          //labelStyle: TextStyle(color: Colors.white),
          //backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value){
            setState(() {
              _chipsList[i].isSelected = value;
              if (i==0) {for (int j=0; j < _chipsList.length; j++) {
                _chipsList[j].isSelected = value;
              }}
            });
          },
          selectedColor: const Color(0xFF00FF00),
          showCheckmark: false,
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}