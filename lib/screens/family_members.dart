import 'package:flutter/material.dart';
import 'package:toku_app/Components/list_items.dart';
import 'package:toku_app/Model/items.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  final List<ItemModel> members = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),

    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),

    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'Grand Father',
    ),

    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),

    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grand Mother',
    ),

    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'Older Brother',
    ),

    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),

    ItemModel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),

    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
    ),

    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color:
              Colors.white, // تعيين اللون الأبيض لجميع الأيقونات في الـ AppBar
        ),
        backgroundColor: const Color(0xff463126),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),

      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListItems(color: Color(0xff527D31),number: members[index] );
        },
      ),
    );
  }
}
