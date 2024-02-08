import 'package:flutter/material.dart';
import 'package:flutter_noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
         decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16)
         ),
        child: Center(child: Text('Add',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),),
      ),
    );
  }
}