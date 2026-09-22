import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.text, this.color, this.onTap});

  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 80,
        child: Text(text!, style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
