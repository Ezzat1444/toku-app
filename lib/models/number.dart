import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const ItemModel(
      { this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
      playSound(){
         final player = AudioPlayer();
            player.play(AssetSource(sound));
      }
       
}
//  ليه معملتش كلاس جديد وشيلت منه ال متغير بتاع الصورة لان الغرض من الكلاس متغيرش 99% من الكلاس محصلش فيه اي تغيير
//  مختلفة لكل صفحة هتضطر تنشئ كلاس لكل صفحة بالميثود بتاعتها methods امتي المفروض تعمل كدا لما تلاقي نفسك هتضيف 
// الكلاس ليه غرض واحد singel resposability prinsiple  غلط برضو ان الكلاس بتاعك يشغل لاكتر من غرض 