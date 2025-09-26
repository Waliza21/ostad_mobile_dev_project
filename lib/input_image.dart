import 'package:flutter/material.dart';

class Module10Class3 extends StatelessWidget {
  const Module10Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "data:image/png;base64,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",
            width: 150,
            //height: ,
          ),

          Image.asset('asset/birmingham-museums-trust-0pJPixfGfVo-unsplash.jpg',
          width: 150,
          ),

        Text('Login with Phone and password',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),),

        SizedBox(height: 10,),

        Form(
          child: Column(
            children: [
              
            ],
          )
          
          
          ),


        ],
      ),
    );
  }
}
