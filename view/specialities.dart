import 'package:flutter/material.dart';

class Specialities extends StatefulWidget {
  const Specialities({Key? key}) : super(key: key);

  @override
  State<Specialities> createState() => _SpecialitiesState();
}

class _SpecialitiesState extends State<Specialities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  print(index + 1);
                },
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3_pBp08sgd8syI12_dGhHBRKyED7T00BGmg&usqp=CAU',
                  ),
                ),
              ),
              Text(
                'Neurology',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
        itemCount: 60,
      ),
    );
  }
}
