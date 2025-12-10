import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<String> tabs = ['Product', 'Design', 'Development'];
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
                height: 40,
                width: MediaQuery.sizeOf(context).width / 3.6,
                padding: EdgeInsets.symmetric(horizontal: 9),
                margin: EdgeInsets.only(right: 10),
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
