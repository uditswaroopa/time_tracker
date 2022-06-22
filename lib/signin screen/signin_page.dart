import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: _buildSignPage(),
    );
  }
}

Widget _buildSignPage() {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Time Tracker',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Sign In',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              color: Colors.brown,
            ),
          ),
          SizedBox(height: 20.0),
          _signPageButtons(
            '  Sign in with Google  ',
            Icons.people,
            Colors.black87,
            Colors.white70,
          ),
          _signPageButtons(
            'Sign in with Facebook',
            Icons.people,
            Colors.white,
            Colors.blueAccent,
          ),
          _signPageButtons(
            '   Sign in with Email     ',
            Icons.people,
            Colors.white,
            Colors.black,
          ),
          SizedBox(height: 20.0),
          Text(
            'or',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          _signPageButtons('Sign in Anonymously ', Icons.people, Colors.black,
              Colors.limeAccent),
          SizedBox(height: 20.0),
          Text(
            'Don\'t have account? Sign Up',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );
}

Widget _signPageButtons(label, icon, labelColor, buttonColor) {
  return ElevatedButton.icon(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(buttonColor),
    ),
    onPressed: () => print('Called Sign in Page'),
    icon: Icon(
      icon,
      color: labelColor,
      size: 20.0,
    ),
    label: Text(
      label,
      style: TextStyle(
        fontSize: 16.0,
        color: labelColor,
      ),
    ),
  );
}
