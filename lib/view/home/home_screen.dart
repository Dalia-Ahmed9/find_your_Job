import 'package:find_job/control/fetching_jobs/fetching_jobs_cubit.dart';
import 'package:find_job/control/fetching_jobs/fetching_jobs_state.dart';
import 'package:find_job/utils/colors.dart';
import 'package:find_job/view/home/job_widget.dart';
import 'package:find_job/view/home/nearby_job_widget.dart';
import 'package:find_job/view/home/tabs.dart';
import 'package:find_job/widgets/containerofImage.dart';
import 'package:find_job/widgets/icon.dart';
import 'package:find_job/widgets/job_shimmer.dart';
import 'package:find_job/widgets/second_button.dart';
import 'package:find_job/widgets/text_field.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final popularJobs = context.read<FetchingJobsCubit>().jobs;
    final nearbyJobs = context.read<FetchingJobsCubit>().jobs;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusedIcon(icon: Icon(Icons.menu), height: 40, width: 40),
                  ContainerOfImage(
                    height: 60,
                    width: 60,
                    imagePath: 'asset/images/profile.jpg',
                    iswhite: false,
                  ),
                ],
              ),
              SizedBox(height: 10),
              texts(text: ' Hello Dalia', size: 20, mainfont: false),
              texts(text: 'Find your perfect job ', size: 20, mainfont: true),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      fieldName: 'What are you looking for?',
                      //myIcon: Icons.search,
                      myController: TextEditingController(),
                    ),
                  ),
                  SizedBox(width: 10),
                  SecondButton(
                    content: Icon(
                      Icons.tune,
                      size: 30,
                      color: AppColors.whiteColor,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Tabs(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  texts(text: 'Popular Jobs', size: 18, mainfont: true),
                  GestureDetector(
                    child: texts(text: 'Show all', size: 14, mainfont: false),
                  ),
                ],
              ),
              SizedBox(height: 20),

              //for popular jobs
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.8,
                child: BlocBuilder<FetchingJobsCubit, FetchingJobState>(
                  bloc: BlocProvider.of<FetchingJobsCubit>(context),
                  builder: (context, state) {
                    if (state is FetchingJobLoading) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) => jobShimmerWidget(),
                      );
                    } else if (state is FetchingJobLoaded) {
                      final popularJobs = state.jobs;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularJobs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: JobWidget(job: popularJobs[index]),
                          );
                        },
                      );
                    }
                    return Center(child: Text("Error loading jobs"));
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  texts(text: 'NearBy Jobs', size: 18, mainfont: true),
                  GestureDetector(
                    child: texts(text: 'Show all', size: 14, mainfont: false),
                  ),
                ],
              ),
              //for nearby jobs
              Expanded(
                child: BlocBuilder<FetchingJobsCubit, FetchingJobState>(
                  bloc: BlocProvider.of<FetchingJobsCubit>(context),

                  builder: (context, state) {
                    if (state is FetchingJobLoading) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) => jobShimmerWidget(),
                      );
                    } else if (state is FetchingJobLoaded) {
                      final nearbyJobs = state.jobs;
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: nearbyJobs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: NearbyJobWidget(job: nearbyJobs[index]),
                          );
                        },
                      );
                    }
                    return Center(child: Text("Error loading jobs"));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
