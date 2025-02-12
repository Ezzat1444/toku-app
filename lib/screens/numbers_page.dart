import 'package:flutter/material.dart';
import 'package:toku/components/number_category.dart';
import 'package:toku/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Shichi ',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyū',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jū',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        // شغاله زي ال بالظبط بتنفذ الكود عدد مرات محددة او عدد لانهائي(loop)
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberCategory(
            item: numbers[index],
            color: Color.fromARGB(255, 217, 143, 38),
          );
        },
        // Color.fromARGB(255, 237, 147, 20)
        // children:
        // getNumber(numbers),
        // NumberCategory(number: one),
        // NumberCategory(number: numbers[0]),
        // NumberCategory(number: numbers[1]),
      ),
    );
  }
  // ListView.builder معاها فوق مش Listview دي بتستخدم
  // List<NumberCategory> getNumber(List<Number> numbers) {
  //   List<NumberCategory> numberList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     numberList.add(NumberCategory(number: numbers[i]));
  //   }
  //   return numberList;
  // }
}
