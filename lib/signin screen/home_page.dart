import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/services/authentication.dart';

class HomePage extends StatelessWidget {
  final VoidCallback signOut;
  final Auth firebaseAuth;
  const HomePage({Key? key, required this.firebaseAuth, required this.signOut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () async {
              firebaseAuth.signOut();
              signOut();
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
