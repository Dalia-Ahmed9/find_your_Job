import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class JobTabs extends StatefulWidget {
  JobTabs({super.key});

  @override
  State<JobTabs> createState() => _JobTabsState();
}

class _JobTabsState extends State<JobTabs> {
  final List<String> tabs = ['Description', 'Company', 'Reviews'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          tabs.asMap().entries.map((entry) {
            final title = entry.value;
            final index = entry.key;
            final isSelected = index == selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 45,
                width: MediaQuery.sizeOf(context).width / 3.6,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color:
                      isSelected ? AppColors.mainColor : AppColors.whiteColor,
                  border: Border.all(
                    color:
                        isSelected ? AppColors.mainColor : Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),

                child: Center(
                  child: Text(
                    '${title}',
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          isSelected
                              ? AppColors.whiteColor
                              : Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
