import 'package:flutter/material.dart';
import 'package:timetracker/common_widget/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    @required String text,
    Color color,
    Color textColor,
    @required String imageURL,
    VoidCallback onPressed,
  })  : assert(text != null),
        assert(imageURL != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imageURL),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(imageURL),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}

/* CustomElevatedButton(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/google-logo.png'),
                Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                Opacity(
                    opacity: 0.0,
                    child: Image.asset('assets/images/google-logo.png')),
              ],
            ),
            onPressed: () {},
          ), */