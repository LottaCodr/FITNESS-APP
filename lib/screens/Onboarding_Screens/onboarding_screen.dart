import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:the_trainer/screens/Onboarding_Screens/OnBoardingColors.dart';
import 'package:the_trainer/screens/Onboarding_Screens/OnBoardingPageWidget.dart';
import 'package:the_trainer/screens/Onboarding_Screens/image_String.dart';
import 'package:the_trainer/screens/Onboarding_Screens/text_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'OnBoardingModel.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: fit,
          title: title_1,
          subTitle: subTitle_1,
          counterText: count_1,
          bgColor: pageColor_1,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: focused,
          title: title_2,
          subTitle: subTitle_2,
          counterText: count_2,
          bgColor: pageColor_2,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: formidable,
          title: title_3,
          subTitle: subTitle_3,
          counterText: count_3,
          bgColor: pageColor_3,
          height: size.height,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.deepPurple, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 50,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 3),
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5,
              ),
              count: 3,
            ),
          )
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
