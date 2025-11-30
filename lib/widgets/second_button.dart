import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({super.key, required this.content, required this.onTap});

  final Widget content;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 60,
        height: 60,
        child: content,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.buttonColor,
          //flutter.minSdkVersion
        ),
      ),
    );
  }
}
