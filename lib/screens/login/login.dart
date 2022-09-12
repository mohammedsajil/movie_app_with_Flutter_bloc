import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app_with_bloc/constents.dart';
import 'package:movies_app_with_bloc/screens/login/widgets/signin_options.dart';
import 'package:movies_app_with_bloc/screens/widgets/custom_button.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //bg statrting
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Image.asset(
                    "assets/images/famtv.jpg",
                    fit: BoxFit.cover,
                  ),
                  //  Lottie.asset(logInImage),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                ),
              ],
            ), //bg end
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.black45.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        kheight50,
                        Container(
                          padding: kpadding8,
                          margin: kmarginRL15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5),
                              hintText: "Email",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        kheight20,
                        const CustomButton(
                          name: "Continue",
                        ),
                        kheight10,
                        const Text("OR"),
                        kheight10,
                        const SigninOptions(),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Text(
                                "Don't have an account?",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
