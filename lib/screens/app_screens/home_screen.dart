import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies_app_with_bloc/screens/app_screens/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  // appbar
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // menu icon
      leading: IconButton(
        padding: const EdgeInsets.only(left: 20),
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('assets/images/menu.png'),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                '  Signed In as',
                style: TextStyle(fontSize: 16),
              ),
              actions: <Widget>[
                const SizedBox(
                  height: 9,
                ),
                Center(
                  child: Text(FirebaseAuth.instance.currentUser!.email!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: const Text('signout')),
              ],
            ),
          );
        },
      ),
      // Search icon
      actions: [
        IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {},
            icon: Image.asset('assets/images/search.png'))
      ],
    );
  }
}
