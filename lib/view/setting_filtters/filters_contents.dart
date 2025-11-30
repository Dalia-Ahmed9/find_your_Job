import 'package:find_job/view/setting_filtters/filter_dropdown_category.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';

class FiltersContents extends StatelessWidget {
  const FiltersContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(height: 3, width: 40, color: Colors.black),
              ),
              SizedBox(height: 20),
              Center(
                child: texts(text: 'Set Filters', size: 20, mainfont: true),
              ),

              //*********************************************************** */
              texts(text: 'Category', size: 18, mainfont: true),

              SizedBox(height: 150, child: CategoryFilter()),

              SizedBox(height: 30),
              texts(text: 'Category', size: 18, mainfont: true),
              SizedBox(height: 10),
              Expanded(child: CategoryFilter()),

              SizedBox(height: 30),
              texts(text: 'Category', size: 18, mainfont: true),
              SizedBox(height: 10),
              Expanded(child: CategoryFilter()),
            ],
          ),
        ),
      ),
    );
  }
}
