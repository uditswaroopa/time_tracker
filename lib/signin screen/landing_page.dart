import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/signin%20screen/home_page.dart';
import 'package:time_tracker/signin%20screen/signin_page.dart';

import '../services/authentication.dart';

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
    setState(() {
      _user = widget.firebaseAuth.getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignIn(
        updateUser: (user) {
          setState(() {
            _user = user;
          });
        },
        firebaseAuth: widget.firebaseAuth,
      );
    } else {
      return HomePage(
        signOut: () => setState(() {
          _user = null;
        }),
        firebaseAuth: widget.firebaseAuth,
      );
    }
  }
}
