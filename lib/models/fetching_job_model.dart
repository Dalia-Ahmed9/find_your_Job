class FetchingJobModel {
  final String imagePath;
  final String jobTitle;
  final String companyName;
  final String salary;

  FetchingJobModel({
    required this.imagePath,
    required this.jobTitle,
    required this.companyName,
    required this.salary,
  });

  factory FetchingJobModel.fromJson(Map<String, dynamic> json) {
    return FetchingJobModel(
      imagePath: json['image_url'],
      jobTitle: json['job_name'],
      companyName: json['company_name'],
      salary: json['salary_andPlace'],
    );
  }
}
