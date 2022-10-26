import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  MyCustomPainter({required this.banKinh});

  // banKinh là bán kính đường tròn
  final double banKinh;

  @override
  void paint(Canvas canvas, Size size) {
    // tọa độ tâm đường tròn cũng chính là tâm của Widget (size.width / 2, size.height / 2)
    final toaDoTamDuongTron = Offset(size.width / 2, size.height / 2);

    // paint: giống như chọn style cho cái hình mình vẽ: nó màu gì,...
    final paint = Paint()
      ..color = Colors.pink // vẽ màu hồng
      ..style = PaintingStyle.stroke // chỉ vẽ viền
      ..strokeWidth = 2; // độ dày viền bằng 2

    // vẽ đường tròn
    canvas.drawCircle(toaDoTamDuongTron, banKinh, paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return banKinh !=
        oldDelegate
            .banKinh; // nếu bán kính truyền vào bị thay đổi thì mới cho vẽ lại.
  }
}
