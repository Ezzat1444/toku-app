import 'package:flutter/material.dart';
import 'package:toku/components/number_category.dart';
import 'package:toku/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> number = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku 黒',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro 白',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori 緑',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka 赤',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo 茶色',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiroi 黄色い',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori PPoi kiiroi',
        enName: 'Dusty yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'haiiro はいいろ',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 74, 100),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return NumberCategory(
                item: number[index], color: Color.fromARGB(255, 9, 74, 100));
          }),
    );
  }
}
