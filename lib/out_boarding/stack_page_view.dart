import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackPageView extends StatelessWidget {
  const StackPageView({
    Key? key, required this.image, required this.textBody,
  }) : super(key: key);
  final String image;
  final String textBody;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Image.asset(
          'images/$image',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(
          top: 372,
          bottom: 225,
          child: Text(textBody
           , style: GoogleFonts.poppins(fontSize: 30 ,fontWeight: FontWeight.w600,color: Colors.white),
          ),
        ),

      ],
    );
  }
}