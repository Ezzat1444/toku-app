import 'package:flutter/material.dart';
import 'package:toku/components/pharses_item.dart';
import 'package:toku/models/number.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
        jpName: 'Konnichiwa',
        enName: 'Hello',
        sound: 'sounds/phrases/Hello.mp3'),
    ItemModel(
        jpName: 'Domo arigatō gozaimasu',
        enName: 'Thank you very much',
        sound: 'sounds/phrases/Thank_youverymuch.mp3'),
    ItemModel(
        jpName: 'Sumimasen',
        enName: 'Excuse me',
        sound: 'sounds/phrases/Excuse_me.mp3'),
    ItemModel(
        jpName: 'Omedetō gozaimasu!',
        enName: 'Congratulations!',
        sound: 'sounds/phrases/JAPFND1_1110.mp3'),
    ItemModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Jā mata ne',
        enName: 'See you later',
        sound: 'sounds/phrases/Seeu_later.mp3'),
    ItemModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Watashi wa puroguramingu ga daisuki',
        enName: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Isha',
        enName: 'Doctor',
        sound: 'sounds/phrases/JAPF_doctor.mp3'),
    ItemModel(
        jpName: 'Dokutā Mohamedo',
        enName: 'Doctor Mohamed',
        sound: 'sounds/phrases/translate_tts.mp3'),
    ItemModel(
        jpName: 'Ai shiteru',
        enName: 'i love you',
        sound: 'sounds/phrases/love_you.mp3'),
    ItemModel(
        jpName: 'Oyasumi nasai',
        enName: 'Good night',
        sound: 'sounds/phrases/Good_night.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 21, 9),
        title: Text(
          'Pharses',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PharsesItem(
            item: phrasesList[index],
            color: Color.fromARGB(255, 100, 21, 9),
          );
        },
      ),
    );
  }
}
