import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class JobType extends StatefulWidget {
  JobType({super.key, required this.text});
  final String text;
  @override
  State<JobType> createState() => _JobTypeState();
}

bool isSelected = false;

class _JobTypeState extends State<JobType> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
      child: Container(
        height: 50,
        width: MediaQuery.sizeOf(context).width / 3.7,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isSelected ? AppColors.mainColor : Colors.grey[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isSelected ? AppColors.greyColor : AppColors.mainColor,
              fontFamily: 'second_font',
            ),
          ),
        ),
      ),
    );
  }
}
