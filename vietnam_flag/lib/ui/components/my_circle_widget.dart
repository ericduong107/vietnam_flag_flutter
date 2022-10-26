import 'package:flutter/material.dart';
import 'package:vietnam_flag/ui/components/my_custom_painter.dart';

class MyCircleWidget extends StatelessWidget {
  const MyCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomPainter(banKinh: 100),
      size: const Size(300, 300),
    );
  }
}
