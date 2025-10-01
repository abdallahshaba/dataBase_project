import 'package:e_commerce_app14/core/constant/image_assets.dart';
import 'package:e_commerce_app14/view/widgets/onBoarding_widgets.dart';
import 'package:flutter/material.dart';




class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<Map<String, String>> onboardingData = [
     {
    "title": "Welcome to the University System",
    "description": "Manage your academic life easily in one place.",
    "image": AppImageAsset.university1, // Replace with your image path
  },
  {
    "title": "Register Your Courses",
    "description": "Select and register your courses in just a few steps.",
    "image": AppImageAsset.university2, // Replace with your image path
  },
  {
    "title": "Track Your Grades",
    "description": "View your academic performance and results anytime.",
    "image": AppImageAsset.university3, // Replace with your image path
  },
  {
    "title": "University Services",
    "description": "Access all important services like schedules, exams, and more.",
    "image": AppImageAsset.university1, // Replace with your image path
  },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 20),
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingWidgets(
                  title: onboardingData[index]["title"]!,
                  decription: onboardingData[index]["description"]!,
                  image: onboardingData[index]["image"]!,
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => buildDot(index, context),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _currentPage == onboardingData.length - 1
                        ? ElevatedButton(
                            onPressed: () {
                              // Navigate to home screen or next step
                              // Example: Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
                              print("Onboarding completed!");
                            },
                            child: const Text("Get Started"),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: const Text("Next"),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 10,
      width: _currentPage == index ? 24 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}