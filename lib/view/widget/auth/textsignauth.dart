import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/color.dart';

class CustomeTextAuthRow extends StatelessWidget {
  final String rowText;
  final String rowText2;
  final void Function()? onPressed ;
  const CustomeTextAuthRow({super.key, required this.rowText , required this.rowText2 ,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text(rowText2),
        InkWell(
          onTap: onPressed ,
          child: Text(rowText, style: TextStyle(color: ColorApp.red)),
        ),
      ],
    );
  }
}
