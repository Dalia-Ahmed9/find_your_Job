import 'package:find_job/utils/colors.dart';
import 'package:find_job/widgets/main_button.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('asset/images/job_finder.png'),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.75),
                      spreadRadius: -6,
                      blurRadius: 11,
                      offset: Offset(0, 0), // Shadow only on the right side
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      texts(
                        text: 'Find a Perfect \n job match',
                        size: 22,
                        mainfont: true,
                      ),
                      SizedBox(height: 20),
                      texts(
                        text:
                            'Finding your dream job is now much easier and faster like never before',
                        size: 16,
                        mainfont: false,
                      ),
                      SizedBox(height: 60),
                      MainButton(text: 'Let\'s Get Started ', isVisible: true),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
