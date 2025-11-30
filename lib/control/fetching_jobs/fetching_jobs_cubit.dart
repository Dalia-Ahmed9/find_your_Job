import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_job/control/fetching_jobs/fetching_jobs_state.dart';
import 'package:find_job/models/fetching_job_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchingJobsCubit extends Cubit<FetchingJobState> {
  FetchingJobsCubit() : super(FetchingJobInitial());

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<FetchingJobModel> jobs = [];

  Future<void> fetchJob(String collectionName) async {
    emit(FetchingJobLoading());

    try {
      final snapshot =
          await FirebaseFirestore.instance.collection(collectionName).get();
      this.jobs =
          snapshot.docs
              .map((doc) => FetchingJobModel.fromJson(doc.data()))
              .toList();
      emit(FetchingJobLoaded(jobs));
    } catch (error) {
      emit(FetchingJobError(error.toString()));
    }
  }
}
