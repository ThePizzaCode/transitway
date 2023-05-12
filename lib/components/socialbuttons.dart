import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class socialButton extends StatefulWidget {
  const socialButton({super.key});

  @override
  State<socialButton> createState() => _socialButtonState();
}

class _socialButtonState extends State<socialButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                // handle sign-in with Google
              },
              icon: CachedNetworkImage(
                  imageUrl:
                      'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png'),
              label: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white, // background color
                onPrimary: Colors.white, // foreground colo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27.0),
                  side: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
