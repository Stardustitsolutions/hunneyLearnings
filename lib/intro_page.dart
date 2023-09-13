import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey.shade700,
      //   title: const Center(
      //     child: Text('Meeting Card'),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 60.0,
              backgroundImage:
                  AssetImage('images/photo-1541963463532-d68292c34b19.jpg'),
            ),
            Text(
              'Hunney Garg',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'Rubikiso',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 2.8,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 170.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueGrey,
                ),
                title: Text('+91 12345 67890'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.blueGrey,
                ),
                title: Text('hunneygarg36412@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
