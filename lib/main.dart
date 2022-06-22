import 'package:flutter/material.dart';
import 'package:time_tracker/signin%20screen/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignIn();
  }
}
