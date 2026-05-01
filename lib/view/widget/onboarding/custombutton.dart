import 'package:flutter/material.dart';

class CustomeButtonOnBoarding extends StatelessWidget {
  const CustomeButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        color: Colors.blue,
        onPressed: () {},
        child: Text("Continue"),
      ),
    );
  }
}
