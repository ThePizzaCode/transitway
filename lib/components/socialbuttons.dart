import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class socialButton extends StatefulWidget {
  final String imageURL;
  final String buttonText;
  const socialButton({
    required this.imageURL,
    required this.buttonText,
  });

  @override
  State<socialButton> createState() => _socialButtonState();
}

class _socialButtonState extends State<socialButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                // handle sign-in with Google
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: CachedNetworkImage(
                  height: 24,
                  imageUrl: widget.imageURL,
                ),
              ),
              label: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  widget.buttonText,
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ),
              style: ElevatedButton.styleFrom(
                alignment: Alignment.centerLeft,
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
