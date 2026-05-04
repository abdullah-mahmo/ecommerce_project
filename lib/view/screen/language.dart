import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/language/customebuttonlang.dart';
import 'package:flutter/material.dart';


class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      title:const Text('title'),

    ),
    body:Container(
      //  padding:EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
     
        children: [
          Text("Choose language",style: Theme.of(context).textTheme.headlineLarge),
            CustomeButtonLang(lang:"Ar",onPressed: (){}),
            CustomeButtonLang(lang:"En",onPressed: (){}),
            

        ],    
      ),
    )) ;
  }
}
