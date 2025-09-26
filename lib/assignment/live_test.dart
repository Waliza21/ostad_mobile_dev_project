import 'package:flutter/material.dart';

List<Map<String, dynamic>> list = [];

class LiveTest extends StatefulWidget {
  const LiveTest({super.key});

  @override
  State<LiveTest> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LiveTest> {
  final _formKey = GlobalKey();
  final nameController = TextEditingController();
  final numberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey, title: Text('Contact List')),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(controller: nameController, initialValue: 'Name'),
                TextFormField(
                  controller: numberController,
                  initialValue: 'Number',
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              list.add({'name': nameController, 'number': numberController});
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}

