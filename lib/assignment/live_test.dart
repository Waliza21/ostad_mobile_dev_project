import 'package:flutter/material.dart';

class LiveTest extends StatelessWidget {
  LiveTest({super.key});

  final _formKey = GlobalKey();

  final nameController = TextEditingController();

  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Hasan',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: numberController,
                      decoration: InputDecoration(
                        hintText: '01745-777777',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  child: Text('Add', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),

              Card(
                color: const Color.fromARGB(255, 227, 226, 226),

                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Jawal', style: TextStyle(color: Colors.red)),
                  subtitle: Text('01877-777777'),
                  trailing: Icon(Icons.call, color: Colors.blue),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 227, 226, 226),

                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Ferdous', style: TextStyle(color: Colors.red)),
                  subtitle: Text('01677-777777'),
                  trailing: Icon(Icons.call, color: Colors.blue),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 227, 226, 226),

                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Hasan', style: TextStyle(color: Colors.red)),
                  subtitle: Text('01745-777777'),
                  trailing: Icon(Icons.call, color: Colors.blue),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 227, 226, 226),

                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Hasan', style: TextStyle(color: Colors.red)),
                  subtitle: Text('01745-777777'),
                  trailing: Icon(Icons.call, color: Colors.blue),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 227, 226, 226),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Hasan', style: TextStyle(color: Colors.red)),
                  subtitle: Text('01745-777777'),
                  trailing: Icon(Icons.call, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
