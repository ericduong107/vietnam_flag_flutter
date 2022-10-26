import 'package:flutter/material.dart';
import 'package:vietnam_flag/ui/components/vietnam_flag_painter.dart';

class VietNamFlag extends StatelessWidget {
  const VietNamFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: VietNamFlagPainter(),
      size: const Size(300, 200),
    );
  }
}
