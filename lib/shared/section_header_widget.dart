import 'package:flutter/material.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String text;

  const SectionHeaderWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

Widget CustomContainer(double height, double width,Widget widget)=>Container(
  height: height,
width: width,
decoration: BoxDecoration(
border: Border.all(color: Colors.black),
borderRadius: BorderRadius.circular(8.0),
),
padding: EdgeInsets.all(16.0),
child:widget
);