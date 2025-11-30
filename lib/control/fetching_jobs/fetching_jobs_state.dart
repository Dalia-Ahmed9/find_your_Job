import 'package:find_job/models/fetching_job_model.dart';

abstract class FetchingJobState {}

class FetchingJobInitial extends FetchingJobState {}

class FetchingJobLoading extends FetchingJobState {}

class FetchingJobLoaded extends FetchingJobState {
  final List<FetchingJobModel> jobs;

  FetchingJobLoaded(this.jobs);
}

class FetchingJobError extends FetchingJobState {
  final String errorMessage;

  FetchingJobError(this.errorMessage);
}
