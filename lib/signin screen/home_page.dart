import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/services/authentication.dart';

class HomePage extends StatelessWidget {
  final Auth firebaseAuth;
  const HomePage({Key? key, required this.firebaseAuth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () async {
              firebaseAuth.signOut();
            },
            icon: Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
