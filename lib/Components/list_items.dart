import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Model/items.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key, required this.number, required this.color});
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          height: 98,
          child: Row(
            children: [
              if (number.image != null)
                Container(
                  color: Color(0xffFFF4DB),
                  child: Image.asset(number.image!),
                ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(flex: 1),

              IconButton(
                onPressed: () {
                  final player = AudioPlayer();

                  player.play(AssetSource(number.sound));
                },

                icon: Icon(Icons.play_arrow, color: Colors.white, size: 40),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
