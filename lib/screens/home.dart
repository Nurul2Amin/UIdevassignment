import 'package:flutter/material.dart';
import 'package:myapp/screens/second_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // This Expanded widget takes up 2/3 of the screen space
            Expanded(
              flex: 2, // 2 parts of 3 total
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 15, // Adjust the size to your preference
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Plan IT",
                    style: TextStyle(
                      fontSize: 35, // Adjust the size to fit your design
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // This Expanded widget takes up 1/3 of the screen space
            Expanded(
              flex: 1, // 1 part of 3 total
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Your Personal task management and \n planning solution",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                      decoration: BoxDecoration(
                        color: isClicked == true ? Colors.black54 : Colors.black54,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Let's get started",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
