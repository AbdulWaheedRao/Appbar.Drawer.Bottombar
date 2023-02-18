import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_appbar_bottom_drawer/LogingenralDialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomBarSelectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          actions: [
            IconButton(
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const Logingeneraldialog(),
                  );
                },
                icon: Icon(Icons.alarm)),
            IconButton(
                onPressed: () async {
                  bool isDelete = await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(actions: [
                      Text('Do you want to delete'),
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text('yes')),
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text('No'))
                    ]),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(isDelete.toString()),
                  ));
                },
                icon: Icon(Icons.person))
          ],
        ),
        drawer: Drawer(
          child: Column(children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Image.asset(
                  'assest/images/tokyo.jpeg',
                  fit: BoxFit.fill,
                )),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.home)),
              title: Text('H'),
              subtitle: Text('Home'),
              trailing: Icon(Icons.person),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.school)),
              title: Text('S'),
              subtitle: Text('School'),
              trailing: Icon(Icons.person),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.factory)),
              title: Text('F'),
              subtitle: Text('Factory'),
              trailing: Icon(Icons.person),
            )
          ]),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: bottomBarSelectedItemIndex,
          onTap: (value) => bottomBarSelectedItemIndex = value,
          elevation: 20,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_gymnastics), label: 'Sports'),
            BottomNavigationBarItem(
                icon: Icon(Icons.factory), label: 'Factory'),
          ],
        ));
  }
}
