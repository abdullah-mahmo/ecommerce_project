import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/color.dart';

class CustomeButtonAuth extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomeButtonAuth({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,

      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
      color: ColorApp.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(buttonText),
    );
  }
}
