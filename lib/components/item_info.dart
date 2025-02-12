import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.item,
  });
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(item.enName,
                  style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 255, 255, 255))),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}
