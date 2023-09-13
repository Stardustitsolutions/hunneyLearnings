import 'package:flutter/material.dart';

class InsightsPage extends StatefulWidget {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  State<InsightsPage> createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  var arrSkills = [
    'JAVA',
    'HTML',
    'CSS',
    'JAVASCRIPT',
    'REACT',
    'DART',
    'FLUTTER'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(56.0),
              child: Text(
                arrSkills[index],
                style: const TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          );
        },
        itemCount: arrSkills.length,
      ),
    );
  }
}
