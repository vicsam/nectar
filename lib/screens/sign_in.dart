import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/food_pic1.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(230, 20, 0, 0),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 80, 0),
                child: Text(
                  "Get your groceries \nwith nectar",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.flag),
                  ),
                  SizedBox(
                    //height: 2,
                    width: 300,
                    child: Form(
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        onSaved: (String? value) {},
                        validator: (String? value) {
                          return (value != null &&
                                  value.contains('.', ',' as int))
                              ? 'Do not use any special character'
                              : null;
                        },
                        showCursor: true,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Input Phone Number",
                          hintTextDirection: TextDirection.ltr,
                        ),
                        maxLines: 1,
                        maxLength: 11,
                        cursorColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Text("Or connect with socail media"),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Google button is pressed");
                    }
                  },
                  icon: Icon(Icons.phone_android_sharp),
                  style: IconButton.styleFrom(
                    fixedSize: Size(320, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
