import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class ContinueWithsocialMedia extends StatelessWidget {
  const ContinueWithsocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          ' Or continue With ',
          style: TextStyle(color: AppColors.mainColor, fontSize: 15),
        ),
        const SizedBox(width: 10),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
