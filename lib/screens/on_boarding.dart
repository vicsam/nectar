import 'package:flutter/material.dart';
import 'package:nectar/screens/signup.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/man_delivery.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 350, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/carrot.png"),
                Text(
                  "Welcome \nto our store",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, 'signup');
                  },
                  child: Text("Get Started"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)),
                      backgroundColor: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
