import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/signin%20screen/home_page.dart';
import 'package:time_tracker/signin%20screen/signin_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignIn(
        updateUser: (user) {
          setState(() {
            _user = user;
          });
        },
      );
    } else {
      return HomePage(
        signOut: () => setState(() {
          _user = null;
        }),
      );
    }
  }
}
