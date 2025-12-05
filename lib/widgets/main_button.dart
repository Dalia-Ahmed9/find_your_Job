import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, required this.isVisible});
  final String text;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                  fontFamily: 'main_font',
                ),
              ),
              SizedBox(width: 15),
              Visibility(
                visible: isVisible ? true : false,
                child: Icon(Icons.arrow_forward, color: AppColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
