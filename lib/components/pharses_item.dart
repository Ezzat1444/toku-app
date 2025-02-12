import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class PharsesItem extends StatelessWidget {
  const PharsesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        color: color,
        child: ItemInfo(item: item));
  }
}
