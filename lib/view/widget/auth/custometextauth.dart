import 'package:flutter/material.dart';

class CustomeTextAuth extends StatelessWidget {
 final Text label;
  final Text hint;
  final IconData iconData;
  

  const CustomeTextAuth({super.key , required this.label , required this.hint ,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          label: Container(padding: EdgeInsets.all(3), child: label),
          hint:hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          suffixIcon: Icon(iconData),
        ),
      ),
    );
  }
}
