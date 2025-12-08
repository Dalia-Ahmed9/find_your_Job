import 'package:find_job/widgets/containerofImage.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';

class JobName extends StatelessWidget {
  const JobName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerOfImage(
          height: 100,
          width: 100,
          imagePath: 'asset/images/search.png',
          iswhite: true,
        ),
        SizedBox(height: 10),
        texts(mainfont: true, text: 'Product Designer', size: 20),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            texts(mainfont: true, text: 'Google Inc / ', size: 16),
            Icon(Icons.location_on, size: 16),
            texts(mainfont: false, text: 'California', size: 16),
          ],
        ),
      ],
    );
  }
}
