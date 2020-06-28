import 'package:flutter/material.dart';
import 'package:grand_pool/screens/authentication/login.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    //TODO: Check for the user
    return Login();
  }
}