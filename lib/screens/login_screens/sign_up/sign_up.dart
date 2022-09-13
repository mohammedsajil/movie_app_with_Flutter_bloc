import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app_with_bloc/constents.dart';
import 'package:movies_app_with_bloc/screens/login_screens/widgets/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              bottom: 100,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign up",
                    style: GoogleFonts.combo(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 350,
                    decoration: BoxDecoration(
                        color: Colors.black45.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        kheight20,
                        SizedBox(
                          width: 300,
                          child: Text(
                            "Looks like you don't have an account. \nLet's Create a  new account ...",
                            style: GoogleFonts.combo(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ),
                        kheight20,
                        Container(
                          padding: kpadding8,
                          margin: kmarginRL15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, right: 10),
                              hintText: "Email",
                              hoverColor: Colors.purple.shade900,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        kheight10,
                        Container(
                          padding: kpadding8,
                          margin: kmarginRL15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, right: 10),
                              hintText: "Password",
                              suffixText: "view",
                              hoverColor: Colors.purple.shade900,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        kheight20,
                        Text(
                          "By selecting Agree and continue  below,",
                          style: GoogleFonts.combo(
                              textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "  I agree to",
                              style: GoogleFonts.combo(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                            Text(
                              "Terms of  Service and Privacy Policy",
                              style: GoogleFonts.combo(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ],
                        ),
                        kheight20,
                        CustomButton(
                          onpressed: () {},
                          name: "Agree and continue",
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
