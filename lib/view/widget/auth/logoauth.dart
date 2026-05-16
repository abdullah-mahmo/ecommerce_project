import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  final String picture;
  const LogoAuth({super.key, required this.picture});

  @override
  Widget build(BuildContext context) {
    return Image.asset(picture, height: 170, width: 150);
  }
}
