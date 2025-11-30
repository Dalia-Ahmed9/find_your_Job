import 'package:find_job/models/fetching_job_model.dart';
import 'package:find_job/utils/colors.dart';
import 'package:flutter/material.dart';

class NearbyJobWidget extends StatefulWidget {
  const NearbyJobWidget({super.key, required this.job});
  final FetchingJobModel job;
  @override
  State<NearbyJobWidget> createState() => _NearbyJobWidgetState();
}

class _NearbyJobWidgetState extends State<NearbyJobWidget> {
  bool isFavorit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 9.4,
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    widget.job.jobTitle,
                    style: TextStyle(
                      color:
                          isFavorit
                              ? AppColors.whiteColor
                              : AppColors.mainColor,
                      fontSize: 12,
                      fontFamily: 'main_font',
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Full Time',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 0,
                      blurRadius: 20, // Increased blur radius
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.attach_money_sharp,
                      size: 15,
                      color: AppColors.mainColor,
                    ),
                    //
                    Text(widget.job.salary, style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
