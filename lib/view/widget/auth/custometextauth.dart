import 'package:flutter/material.dart';

class CustomeTextAuth extends StatelessWidget {
  final Text label;
  final Text hint;
  final IconData iconData;
  final String? Function(String?)? validator;
  final TextEditingController? myController;

  const CustomeTextAuth({
    super.key,
    required this.label,
    required this.hint,
    required this.iconData,
    required this.myController,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        controller: myController,
        validator: validator,

        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(padding: EdgeInsets.all(3), child: label),
          hint: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          suffixIcon: Icon(iconData),
        ),
      ),
    );
  }
}
