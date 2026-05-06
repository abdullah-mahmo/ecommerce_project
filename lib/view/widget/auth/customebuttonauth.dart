import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/color.dart';

class CustomeButtonAuth extends StatelessWidget {
  const CustomeButtonAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: (){},

      padding: EdgeInsets.symmetric(horizontal:150,vertical: 15),
      color:ColorApp.orange ,
      child:Text("Log IN") ,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
    );
  }
}
