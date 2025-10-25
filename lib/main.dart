import 'package:flutter/material.dart';
import 'package:ostad_mobile_dev_project/module_10/app.dart';

main() {
  runApp(MyApp());
}

//premodule class module 8 class 6

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My First App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.blue,
//           brightness: Brightness.light,
//         ),
//       ),
//       home: HomeActivity(),
//     );
//   }
// }

// class HomeActivity extends StatefulWidget {
//   const HomeActivity({super.key});

//   @override
//   State<HomeActivity> createState() => _HomeActivityState();
// }

// class _HomeActivityState extends State<HomeActivity> {
//   int _currentIndex = 0;
//   void _showMessage(BuildContext context) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(SnackBar(content: Text('Clicked')));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello'),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         elevation: 200,
//         // actions: [
//         //   IconButton(
//         //     onPressed: () {
//         //       _showMessage(context);
//         //     },
//         //     icon: Icon(Icons.search_rounded),
//         //   ),
//         // ], //right side er data
//         centerTitle: true,
//         backgroundColor: Theme.of(context).colorScheme.primary,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Hello'),
//               accountEmail: Text('hello@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   'data:image/jpeg;base64,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',
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.add),
//               title: Text('Add'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       endDrawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Hello'),
//               accountEmail: Text('hello@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   'data:image/jpeg;base64,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',
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.add),
//               title: Text('Add'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showMessage(context);
//         },
//         child: Icon(Icons.add),
//       ),
//       body: Text('Body'),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//           _showMessage(context);
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business_sharp),
//             label: 'Business',
//           ),
//         ],
//       ),
//     );
//   }
// }
