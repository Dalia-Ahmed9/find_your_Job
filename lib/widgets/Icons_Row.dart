import 'package:flutter/material.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key, required this.imagename});
  final String imagename;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Image.asset(imagename),
          ),
        ),
      ],
    );
  }
}
