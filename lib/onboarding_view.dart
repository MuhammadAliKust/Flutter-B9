import 'package:flutter/material.dart';
import 'package:flutter_b9/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/1.png', title: 'First Screen'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Second Screen'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Third Screen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OnBoarding"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(
                        onBoardingList[i].title.toString(),
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
