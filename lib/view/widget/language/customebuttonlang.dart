import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/color.dart';

class CustomeButtonLang extends StatelessWidget {
  const CustomeButtonLang({super.key, required this.lang ,required this.onPressed});

  final String lang;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150),
      child: MaterialButton(
        onPressed: onPressed,
        color: ColorApp.red,
        child:Text(lang) 
      ),
    );
  }
}
