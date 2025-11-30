import 'package:find_job/models/fetching_job_model.dart';
import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class JobWidget extends StatefulWidget {
  const JobWidget({super.key, required this.job});
  final FetchingJobModel job;
  @override
  State<JobWidget> createState() => _JobWidgetState();
}

class _JobWidgetState extends State<JobWidget> {
  bool isFavorit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width / 1.18,
      height: MediaQuery.of(context).size.height / 3.8,
      decoration: BoxDecoration(
        color: isFavorit ? AppColors.mainColor : AppColors.whiteColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 10, // Increased blur radius
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 0,
                      blurRadius: 20, // Increased blur radius
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      widget.job.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorit = !isFavorit;
                    print(' it is fave ');
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 30,
                  color: isFavorit ? AppColors.redColor : AppColors.mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  widget.job.companyName,
                  style: TextStyle(
                    color:
                        isFavorit ? AppColors.whiteColor : AppColors.mainColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.job.jobTitle,
                  style: TextStyle(
                    color:
                        isFavorit ? AppColors.whiteColor : AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'main_font',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.job.salary,
                  style: TextStyle(
                    color:
                        isFavorit ? AppColors.whiteColor : AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
