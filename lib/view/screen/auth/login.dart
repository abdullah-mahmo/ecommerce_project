import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Sign In',style:Theme.of(context).textTheme.headlineLarge ,),
        
      ),
      body:Column(
        children: [
          Text("Welocme Back", style: Theme.of(context).textTheme.headlineLarge
          ,),

          Text("Sign in with your email and password \n Countiue With Social Media" , style: Theme.of(context).textTheme.bodySmall,),
          Container(
            padding:EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  
                  decoration: InputDecoration(
                    label:Text( 'Email'),
                    // hint: Text('Enter Your Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      
                    ),
                    suffixIcon: Icon(Icons.email_outlined)
                    
                  ),
                

                )
              ],
            ),
          )


        ],
      )
      

    );
  }
}