import 'package:flutter/material.dart';

class Aboutthejob extends StatelessWidget {
  const Aboutthejob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 245, 245, 245),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 20, // Increased blur radius
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About the Job',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'main_font',
            ),
          ),
          SizedBox(height: 10),
          Text(
            '- Bachelor\'s degree in Design or related field\n'
            '- 3+ years of experience in product design\n'
            '- Proficiency in design tools such as Figma, Sketch, or Adobe XD\n',

            style: TextStyle(fontSize: 16, fontFamily: 'second_font'),
          ),
        ],
      ),
    );
  }
}
