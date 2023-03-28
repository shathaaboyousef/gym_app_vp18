import 'package:flutter/material.dart';

class out_boarding_button extends StatelessWidget {
  const out_boarding_button({
    Key? key, required this.image,
  }) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        side: BorderSide(
            color: Colors.white
        ),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(30),

        ),
        minimumSize: Size(150,50),

      ),
      child: Image.asset('images/$image',width: 24,height: 24,),
    );
  }
}