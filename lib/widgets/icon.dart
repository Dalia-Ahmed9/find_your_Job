import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class ReusedIcon extends StatelessWidget {
  const ReusedIcon({
    super.key,
    required this.icon,
    required this.height,
    required this.width,
  });
  final Widget icon;
  final double height;
  final double width;
  final bool isgrey = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: icon,
      decoration: BoxDecoration(
        color: isgrey ? AppColors.greyColor : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
