import 'package:find_job/utils/colors.dart';
import 'package:find_job/widgets/main_button.dart';
import 'package:flutter/material.dart';

class Applyforjobbutton extends StatelessWidget {
  const Applyforjobbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.buttonColor),
            ),
            child: Icon(
              Icons.favorite_outline,
              size: 30,
              color: AppColors.buttonColor,
            ),
          ),

          SizedBox(width: 15),

          Container(
            height: 60,
            width: MediaQuery.sizeOf(context).width - 100,
            child: MainButton(text: 'Apply For Job', isVisible: false),
          ),
        ],
      ),
    );
  }
}
