import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //akta white page suppose kori jekhane ami akbo amr page ta ke, prottek page e akta kore thakbe
      appBar: AppBar(
        title: Text('This is Appbar'),
        centerTitle: true,  //title ke center e anar jonno
        backgroundColor: Colors.deepPurple, //predefined colors ase kichu, colors likhe dot dilei ashbe shegula, egula material package theke ashe

      ),

      body: SingleChildScrollView(
        child:
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, //horizontally scroll korar jonno must direction thik korte hoy, default vertical thake direction
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //evenly spacing hobe, spacebetween- purata space ke bhag kore nibe, spacearound- 2 dike ektu faka rekhe majher space ta te nijeder moto boshe jabe evenly 
                crossAxisAlignment: CrossAxisAlignment.center, // row ta onk chot dekhe cross axis thikmoto bojha jacche na
                        children: [
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                Text('Test'),
                ],
              ),
          ),

        Column(
          
          mainAxisAlignment: MainAxisAlignment.center,  //vertically center e chole ashlo
          crossAxisAlignment: CrossAxisAlignment.end, //eta akhn bujha jabe na, row dile bujha jabe
        
          children: [
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
            Text('This is body',  //ekhane Text single child widget
            style: TextStyle(fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold), //text ke styling korte pari ebhabe
            ),
          ],
          ),
      
                  ],
      ),
      ),
    );
  }
}

///multiple child hold koer erokom akta widget hocche column
///column er main axis hocche vertical, cross axis allignment hocche horizontal
///screen theke ber hoye gele overflow, overflow solve korar jonno scrollable dite pari, jei widget ta ke scrollable korte chacchi shetake wrap korbo SingleChildScrollView
///vertically niche niche show - column
///horizontally pashapashi show - row
///horizontal overflow holeo scrollable widget use korte hoy, but ekhetre direction ta horizontal kore nie hoy as default hishebe vertical thake direction
///horizontal - row, column- vertical
///row, column, list - multiple child (children) hold korte pare