import 'package:find_job/view/job_details/aboutThejob.dart';
import 'package:find_job/view/job_details/applyForJobButton.dart';
import 'package:find_job/view/job_details/job_name.dart';
import 'package:find_job/view/job_details/job_qualifications.dart';
import 'package:find_job/view/job_details/job_tabs.dart';
import 'package:find_job/widgets/icon.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Applyforjobbutton(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: ReusedIcon(
                icon: const Icon(Icons.arrow_back, size: 20),
                height: 35,
                width: 45,
              ),
            ),
          ),
        ),

        actions: [
          ReusedIcon(icon: Icon(Icons.share), height: 35, width: 35),

          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              JobName(),
              SizedBox(height: 20),
              JobTabs(),
              SizedBox(height: 15),
              JobQualifications(),
              SizedBox(height: 15),
              Aboutthejob(),
            ],
          ),
        ),
      ),
    );
  }
}
