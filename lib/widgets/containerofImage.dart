import 'package:flutter/widgets.dart';

class ContainerOfImage extends StatelessWidget {
  const ContainerOfImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
