import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_searchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIcon(icon: icon,)
      ],
    );
  }
}