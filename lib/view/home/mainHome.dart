import 'package:find_job/control/fetching_jobs/fetching_jobs_cubit.dart';
import 'package:find_job/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchingJobsCubit()..fetchJob('popular_jobs'),
        ),
        BlocProvider(
          create: (context) => FetchingJobsCubit()..fetchJob('nearby_jobs'),
        ),
      ],
      child: HomeScreen(),
    );
  }
}
