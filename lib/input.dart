import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    //textfield er value gula hold korar jonno controller lagbe. shob text field er jonno alada alada controller
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter input'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //flutter e 2 bhabe text input neya jay

            //akdom margin theke shoranor jonno padding dilam
            TextField(
              controller: phoneController,

              //restrict kore deya ki dhoroner input deya jabe
              keyboardType: TextInputType.phone,
              maxLength: 11, //suppose phone number 11 digit er hote hobe
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                //hint hishebe deyar jonno
                hintText: 'Enter your number',
                //hint text ta ke style korar jonno,ebhabe helperstyle and label style
                hintStyle: TextStyle(color: Colors.red),

                helperText: 'Enter phone',

                labelText:
                    'Phone Number', //first e line tar upor e thake,click korle label text upore uthe jay and then hint text ta dekha jay before we start writing.
                prefixIcon: Icon(Icons.phone), //lekhar age kono icon boshaite,
                suffixIcon: Icon(Icons.check), //lekhar pore icon
                //bordercolor and aro stuff ase
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.orange, width: 1.5),
                ),

                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(20),
              ),
            ),

            SizedBox(height: 20, width: double.infinity),

            TextField(
              controller: passwordController,

              //lekha hide korar jonno
              obscureText: true,
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                hintText: 'Enter your password',

                hintStyle: TextStyle(color: Colors.red),

                helperText: 'Enter password',

                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.orange, width: 1.5),
                ),

                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(20),
              ),
            ),

            SizedBox(height: 20, width: double.infinity),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {

                //to show what the controllers are holding, we use controller.text. text er moddhe value ta thake
                print(phoneController.text);
                print(passwordController.text);

                //submit click korle value pass kore field gula clear hoye jabe
                phoneController.clear();
                passwordController.clear();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
