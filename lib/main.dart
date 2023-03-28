import 'package:flutter/material.dart';
import 'package:gym_app_vp18/out_boarding/out_boarding_screen.dart';
void main()=> runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/out_boarding_screen',
      routes: {
        '/out_boarding_screen':(context)=> const OutBoardingScreen(),
      },
    );
  }
}
