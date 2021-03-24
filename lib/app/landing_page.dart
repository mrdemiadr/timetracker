import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetracker/app/home_page.dart';
import 'package:timetracker/app/sign_in/sign_in_page.dart';
import 'package:timetracker/services/auth.dart';

class LandingPage extends StatefulWidget {
  final AuthBase auth;
  const LandingPage({Key key, @required this.auth}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;

  @override
  void initState() {
    super.initState();
    widget.auth.authStateChange().listen((user) {
      print('uid: ${user?.uid}');
    });
    _updateUser(widget.auth.currentUser);
  }

  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: widget.auth.authStateChange(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: widget.auth,
              onSignIn: _updateUser,
            );
          }
          return HomePage(
            auth: widget.auth,
            onSignOut: () => _updateUser(null),
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
