import 'package:find_job/utils/colors.dart';
import 'package:flutter/widgets.dart';

class ReusedIcon extends StatelessWidget {
  const ReusedIcon({super.key, required this.icon});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: icon,
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
