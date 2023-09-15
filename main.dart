import 'package:flutter/material.dart';
import 'view/home_page.dart';
import 'view/calender.dart';
import 'view/profile.dart';
import 'view/specialities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    Specialities(),
    Calender(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 130,
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text('Specialities'),
          ),
        ),
        body: pages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_rounded,
                color: Colors.blueGrey,
              ),
              label: 'Specialities',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.blueGrey,
              ),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
                color: Colors.blueGrey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
