import 'package:flutter/material.dart';

class  Category extends StatelessWidget {
  const Category({super.key, this.text, this.color,this.onTap});
 final String? text;
  final Color? color;
 final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 14),
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(
          '$text',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}

