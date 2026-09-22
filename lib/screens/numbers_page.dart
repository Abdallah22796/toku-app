import 'package:flutter/material.dart';
import 'package:toku_app/Components/list_items.dart';
import 'package:toku_app/Model/items.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'sebun',
      enName: 'seven',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyuu',
      enName: 'nine',
    ),

    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'juu',
      enName: 'ten',
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
        title: Text('Numbers ', style: TextStyle(color: Colors.white)),
      ),
     
     
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItems(number: numbers[index],color: const Color(0xffF99531),);
        },
      ),
    );
  }


}
