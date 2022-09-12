import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_app_with_bloc/constents.dart';
import 'package:movies_app_with_bloc/screens/widgets/custom_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
                    child: Lottie.asset(logInImage)),
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
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight20,
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
                          margin: kmargin15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5),
                              hintText: "Email",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const CustomButton(
                          name: "Continue",
                        ),
                        kheight10,
                        const Text("OR"),
                        kheight10,
                        SignInButton(
                          Buttons.FacebookNew,
                          elevation: 0,
                          padding: kpadding8,
                          text: "Continue with Facebook",
                          onPressed: () {},
                        ),
                        kheight10,
                        SignInButton(
                          Buttons.Google,
                          elevation: 0,
                          padding: kpadding8,
                          text: "Continue with Facebook",
                          onPressed: () {},
                        ),
                        kheight10,
                        SignInButton(
                          Buttons.AppleDark,
                          elevation: 0,
                          padding: kpadding8,
                          text: "Continue with Facebook",
                          onPressed: () {},
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
