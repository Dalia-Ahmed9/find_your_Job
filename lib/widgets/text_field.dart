import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon,
    this.validator,
  });
  final TextEditingController myController;
  String fieldName;
  final IconData? myIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: myController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: '$fieldName',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: Icon(myIcon, color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 40, // يمين وشمال
          vertical: 16, // فوق وتحت
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
