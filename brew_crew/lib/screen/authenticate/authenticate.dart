import 'package:brew_crew/screen/authenticate/register.dart';
import 'package:brew_crew/screen/authenticate/signIn.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toogleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toogleView);
    } else {
      return Register(toggleView: toogleView);
    }
  }
}