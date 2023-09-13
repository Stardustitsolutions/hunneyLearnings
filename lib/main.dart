import 'package:flutter/material.dart';
import 'intro_page.dart';
import 'insights_page.dart';

void main() {
  runApp(const Resume());
}

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  int myIndex = 0;
  List<Widget> pages = const [IntroPage(), InsightsPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text('RESUME'),
          ),
        ),
        body: pages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
              backgroundColor: Colors.deepOrange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insights),
              label: 'Insights',
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
