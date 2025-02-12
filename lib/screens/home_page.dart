import "package:flutter/material.dart";
import "package:toku/components/category_item.dart";
import "package:toku/screens/color_page.dart";
import "package:toku/screens/family_members.dart";
import "package:toku/screens/numbers_page.dart";
import "package:toku/screens/pharses_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              // color: Color.fromARGB(255, 100, 21, 9)),
              color: Color.fromARGB(255, 217, 143, 38)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMembers();
                }));
              },
              text: 'Family Members',
              color: Color.fromARGB(255, 18, 111, 78)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color.fromARGB(255, 9, 74, 100)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PharsesPage();
                }));
              },
              text: 'Pharses',
              color: Color.fromARGB(255, 100, 21, 9)),
        ],
      ),
    );
  }
}
