 import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[200], //opacity way 1
      // backgroundColor: Colors.red.withOpacity(0.9), //opacity way 2
      backgroundColor: Colors.amber.shade300,
      appBar: AppBar(
        title: Text('Button group'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      //floating action button scaffold er moddhe thake
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: () {
          print('click on add');
        },
        child: Icon(Icons.add),
      ),

      body: Center(
        child: Column(
          //center e neyar jonno jekono kichu, center widget use. horizontal center
          children: [
            SizedBox(height: 30),

            ElevatedButton(
              //customized
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), //charpash ektu gol korar jonno
                ),  
              ),
              onPressed: () {},
              child: Text('Submit'),
            ), //akta child nibe

            SizedBox(height: 30),

            SizedBox(
              height: 50,
              width: 300,
              // width: double.infinity, //screen er purata size e nibe, jototuku space pabe shobbtai niye nibe
              child: ElevatedButton(
                //customized
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ), //charpash ektu gol korar jonno
                  ),
                ),
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),

            SizedBox(height: 10),

            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ), //transparent background wala button

            SizedBox(height: 10),

            TextButton(
              onPressed: () {},
              child: Text(
                'Read More',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            //text button clickable button
            SizedBox(height: 10),

            Icon(Icons.phone_android, size: 50, color: Colors.red),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 30, color: Colors.red),
            ),

            //akta item ba widget ke clickable bananaor jonno
            GestureDetector(
              onDoubleTap: () {
                print('on double tappp');
              },
              onLongPress: () {
                print('Tapped on long press test');
              },
              onTap: () {
                print('Tapped on test');
              },
              child: Text('This is test text', style: TextStyle(fontSize: 18)),
            ),

            //clickable korar jonno option 2 (ekhane click korle text tay button er moto akta tapped surrounding dekha jay, jeta gesture detector e dekha jay na)
            InkWell(
              onTap: () {
                print('On taped inkwell');
              },
              child: Text('This is test text', style: TextStyle(fontSize: 18)),
            ),

            //gesture detector vs inkewell
            //1. visual effect nai vs ase.
            //2. web e use kora jay as hover option ase vs nai
            //3. onk beshi functionality option ase vs nai.
            //4. use case: custom gesture/ swipe vs button type/list item/choto kono transaction
            //5. material er upor dependent noy vs dependent.
            //6.complex gesture detector vs simple tap
          ],
        ),
      ),
    );
  }
}
