import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';


class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAssets.login, height: 300, width: 150);
  }
}
