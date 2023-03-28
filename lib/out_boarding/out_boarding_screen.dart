import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app_vp18/out_boarding/out_boarding_button.dart';
import 'package:gym_app_vp18/out_boarding/stack_page_view.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}
class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _pageIndex =0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _pageController=  PageController() ;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            onPageChanged: (int pageIndex){
              setState(() {
                _pageIndex = pageIndex;
              });
            },
          controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              StackPageView(
                image: "bg.png",
                textBody: """         Let’s Make
    Body With A
    Good Shap.""",
              ),
              StackPageView(
                image: "bg_1.png",
                textBody: """         Let’s Make
    Body With A
    Good Shap.""",
              ),
              StackPageView(
                image: "bg_2.png",
                textBody: """         Let’s Make
    Body With A
    Good Shap.""",
              ),
            ],
          ),
          Positioned(
            left: 30,
            right: 30,
            top: 560,
            bottom: 100,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TabPageSelectorIndicator(
                        backgroundColor:_pageIndex ==0? Colors.blue :Colors.white,
                          borderColor: Colors.transparent,
                        size: 10,
                      ),
                      TabPageSelectorIndicator(
                        backgroundColor:_pageIndex ==1? Colors.blue :Colors.white,
                          borderColor: Colors.transparent,
                        size: 10,
                      ),
                      TabPageSelectorIndicator(
                        backgroundColor:_pageIndex ==2? Colors.blue :Colors.white,
                        borderColor: Colors.transparent,
                        size: 10,
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            top: 630,
            bottom: 40,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  out_boarding_button(image: "G.png"),
                  out_boarding_button(image: "f.png"),
                ],
              ),
            ),
          ),
          Positioned(
              left: 30,
              right: 30,
              top: 720,
              bottom: 10,
              child: Text(
                'By continuing you agree to privecy policy. ',
                style: GoogleFonts.poppins(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

