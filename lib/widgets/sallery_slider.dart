import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';

class SalaryRangeSlider extends StatefulWidget {
  const SalaryRangeSlider({super.key});

  @override
  State<SalaryRangeSlider> createState() => _SalaryRangeSliderState();
}

class _SalaryRangeSliderState extends State<SalaryRangeSlider> {
  RangeValues _salaryRange = const RangeValues(30000, 120000);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 2,
            activeTrackColor: Colors.deepOrange,
            inactiveTrackColor: Colors.grey.shade300,
            thumbColor: Colors.white,
            rangeThumbShape: const CustomRangeThumbShape(
              radius: 12,
              borderWidth: 2,
              borderColor: Colors.deepOrange,
              fillColor: Colors.white,
            ),

            rangeTrackShape: const RectangularRangeSliderTrackShape(),
            showValueIndicator: ShowValueIndicator.onDrag,
            valueIndicatorColor: Colors.deepOrange,
            valueIndicatorTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: RangeSlider(
            min: 0,
            max: 150000,
            divisions: 15,
            labels: RangeLabels(
              "${_salaryRange.start.round()}",
              "${_salaryRange.end.round()}",
            ),
            values: _salaryRange,
            onChanged: (values) {
              setState(() {
                _salaryRange = values;
              });
            },
          ),
        ),
        Center(
          child: texts(
            text:
                "Salary Range: \$${_salaryRange.start.round()} - \$${_salaryRange.end.round()}",
            mainfont: false,
            size: 14,
          ),
        ),
      ],
    );
  }
}

class CustomRangeThumbShape extends RangeSliderThumbShape {
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color fillColor;

  const CustomRangeThumbShape({
    this.radius = 12,
    this.borderWidth = 2,
    required this.borderColor,
    required this.fillColor,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop = false,
    bool isPressed = false,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
  }) {
    final Canvas canvas = context.canvas;

    // ✅ Fill
    final Paint fillPaint =
        Paint()
          ..color = fillColor
          ..style = PaintingStyle.fill;

    // ✅ Border
    final Paint borderPaint =
        Paint()
          ..color = borderColor
          ..strokeWidth = borderWidth
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, fillPaint);
    canvas.drawCircle(center, radius, borderPaint);
  }
}
