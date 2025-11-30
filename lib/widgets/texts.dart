import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class texts extends StatelessWidget {
  const texts({
    super.key,
    required this.text,
    required this.size,
    required this.mainfont,
  });
  final String text;
  final double size;
  final bool mainfont;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        //fontWeight: FontWeight.bold,
        color: AppColors.mainColor,
        fontFamily: mainfont ? 'main_font' : 'second_font',
      ),
    );
  }
}
