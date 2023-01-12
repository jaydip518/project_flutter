import 'package:flutter/material.dart';

class Container_animations extends StatefulWidget {
  const Container_animations({Key? key}) : super(key: key);

  @override
  State<Container_animations> createState() => _Container_animationsState();
}

class _Container_animationsState extends State<Container_animations> {
  double hight = 200;
  double width = 200;
  double padding1 = 30;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedPadding(
              padding: const EdgeInsets.only(left: 9),
              duration: Duration(seconds: 2),
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                height: hight,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: color,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  padding1 = 300;
                  hight = hight != 200 ? 200 : 50;
                  color = color == Colors.red ? Colors.green : Colors.red;
                });
              },
              child: Text("Enimations Start"))
        ],
      ),
    );
  }
}
