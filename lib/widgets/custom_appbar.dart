import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_searchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}