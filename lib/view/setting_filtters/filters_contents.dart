import 'dart:core';

import 'package:find_job/view/setting_filtters/drop_down_menu.dart';
import 'package:find_job/view/setting_filtters/job_type.dart';
import 'package:find_job/widgets/main_button.dart';
import 'package:find_job/widgets/sallery_slider.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';

class FiltersContents extends StatefulWidget {
  const FiltersContents({super.key});

  @override
  State<FiltersContents> createState() => _FiltersContentsState();
}

final List<String?> Catogry = [
  'Flutter Developer',
  'Web DEveloper',
  'UiUx Designer',
  'Java Developer',
  'Python Developer',
  'Full Stack Developer',
  'Data Scientist',
];

final List<String?> Location = ['Remote', 'In-office', 'Hybrid'];

final List<String?> experience = [
  '0-1 years',
  '1-3 years',
  '3-5 years',
  '5+ years',
];

String SelectedCatogry = 'Flutter Developer';
String SelectedLocation = 'In-office';
String SelectedExperience = '0-1 years';

class _FiltersContentsState extends State<FiltersContents> {
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
              texts(text: 'Category', size: 18, mainfont: false),
              SizedBox(height: 10),
              DropDownMenu(
                itemLabel: (item) => item,
                itemsList: Catogry,
                selectedValue: SelectedCatogry,
                onChanged: (value) {
                  setState(() {
                    SelectedCatogry = value!;
                  });
                },
              ),

              SizedBox(height: 20),

              texts(text: 'Location', size: 18, mainfont: false),
              SizedBox(height: 10),
              DropDownMenu(
                itemLabel: (item) => item,
                itemsList: Location,
                selectedValue: SelectedLocation,
                onChanged: (value) {
                  setState(() {
                    SelectedLocation = value!;
                  });
                },
              ),

              SizedBox(height: 20),

              texts(text: 'Experience', size: 18, mainfont: false),
              SizedBox(height: 10),
              DropDownMenu(
                itemLabel: (item) => item,
                itemsList: experience,
                selectedValue: SelectedExperience,
                onChanged: (value) {
                  setState(() {
                    SelectedExperience = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  texts(text: 'Min.Salary', size: 14, mainfont: false),
                  texts(text: 'Max.Salary', size: 14, mainfont: false),
                ],
              ),
              SalaryRangeSlider(),
              SizedBox(height: 10),
              // job Type
              texts(text: 'Job Type', size: 19, mainfont: true),
              SizedBox(height: 10),
              Row(
                children: [
                  JobType(text: 'Full Time'),
                  JobType(text: 'Part Time'),
                  JobType(text: 'Contract'),
                ],
              ),

              SizedBox(height: 15),
              Row(
                children: [JobType(text: 'Freelance'), JobType(text: 'Remote')],
              ),
              SizedBox(height: 30),
              MainButton(isVisible: false, text: 'Apply Filters'),
            ],
          ),
        ),
      ),
    );
  }
}
