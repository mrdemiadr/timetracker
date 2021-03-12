import 'package:flutter/material.dart';
import 'package:timetracker/common_widget/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomElevatedButton(
            child: Text(
              'Sign in with Google',
              style: TextStyle(color: Colors.black54),
            ),
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {
              print('Tapped');
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomElevatedButton(
            child: Text(
              'Sign in with Facebook',
              style: TextStyle(color: Colors.black54),
            ),
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {
              print('Tapped 2');
            },
          ),
        ],
      ),
    );
  }
}
