import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: 800,
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/carrot.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "nectar",
                  style: TextStyle(
                   // fontFamily: "TimesNew Roman",
                    fontSize: 80,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "online grocielet",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
