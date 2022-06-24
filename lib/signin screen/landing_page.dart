import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/signin%20screen/home_page.dart';
import 'package:time_tracker/signin%20screen/signin_page.dart';

import '../services/authentication.dart';

//State management using function callback
class LandingPage extends StatefulWidget {
  final Auth firebaseAuth;
  const LandingPage({Key? key, required this.firebaseAuth}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  @override
  void initState() {
    super.initState();
    widget.firebaseAuth.onAuthChange().listen((user) {
      print('User: ${user?.uid}');
      setState(() {
        _user = user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignIn(
        firebaseAuth: widget.firebaseAuth,
      );
    } else {
      return HomePage(
        firebaseAuth: widget.firebaseAuth,
      );
    }
  }
}
