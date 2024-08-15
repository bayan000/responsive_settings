import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
Widget CustomTextFormField(bool iconbutton,String hintText) => Row(
  children: [
    iconbutton?     IconButton(
      icon: Icon(Icons.add,color: Colors.blue,),
      onPressed: () {
        // Handle navigation to change password screen
      },
    ):Text(''),
    Expanded(

      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    ),
    IconButton(
      icon: Icon(Icons.arrow_forward_ios),
      onPressed: () {
        // Handle navigation to change password screen
      },
    ),
  ],
);