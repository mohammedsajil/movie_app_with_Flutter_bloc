import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app_with_bloc/app_screens/home_screen.dart';
import 'package:movies_app_with_bloc/constents.dart';
import 'package:movies_app_with_bloc/login_screens/widgets/custom_button.dart';

class Loginpass extends StatelessWidget {
  const Loginpass({super.key});

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
                    "Log in",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                user,
                                fit: BoxFit.cover,
                                height: 80,
                                width: 80,
                              ),
                            ),
                            kwidth10,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: GoogleFonts.combo(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  'User Email@Adress',
                                  style: GoogleFonts.combo(
                                      textStyle: const TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                )
                              ],
                            )
                          ],
                        ),
                        kheight50,
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
                        CustomButton(
                          onpressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          name: "Continue",
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 15),
                              child: Text(
                                "Forgot your password?",
                                style: GoogleFonts.combo(
                                  textStyle: const TextStyle(
                                    color: Colors.purple,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
