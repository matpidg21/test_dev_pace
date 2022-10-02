import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    double widthItem = (MediaQuery.of(context).size.width - 40) / 2;
    double heightItem = widthItem / 2;

    return Container(
      width: widthItem,
      height: heightItem,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Text('Item$index'),
    );
  }
}
