import 'package:flutter/widgets.dart';

class ContainerOfImage extends StatelessWidget {
  ContainerOfImage({
    super.key,
    required this.imagePath,
    required this.iswhite,
    required this.width,
    required this.height,
  });
  final String imagePath;
  bool iswhite = false;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        color: iswhite ? Color.fromARGB(255, 255, 255, 255) : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
