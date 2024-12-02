import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TunerPage extends GetView<TunerLogic> {
  const TunerPage({super.key});

  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.sizeOf(context).width * 0.8 / 380;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  controller.note.value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 65.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  controller.expectedFrequency.value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),
                CustomPaint(
                  size: Size(380 * s, 40),
                  painter: MyPainter(diff: controller.diff.value, s: s),
                ),
                SizedBox(height: 40),
                Text(
                  "${controller.pitch.value} Hz",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  controller.status.value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                Offstage(
                  offstage: controller.isRecording.value,
                  child: TextButton(
                    onPressed: controller.start,
                    child: const Text("START"),
                  ),
                ),
              ]);
        }),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  const MyPainter({required this.s, required this.diff});

  final double diff;
  final double s;

  @override
  void paint(Canvas canvas, Size size) {
    Paint midPaint = Paint()
      ..color = Colors.blue.withOpacity(0.3)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final midRect = Rect.fromLTRB(
        size.width / 2 - 60 * s, 0, size.width / 2 + 60 * s, size.height);
    canvas.drawRect(midRect, midPaint);

    Paint tunedPaint = Paint()
      ..color = Colors.lightBlueAccent
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final tunedRect = Rect.fromLTRB(
        size.width / 2 - 18 * s, 0, size.width / 2 + 18 * s, size.height);
    canvas.drawRect(tunedRect, tunedPaint);

    Paint linePaint = Paint()
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    double dx = size.width / 2 - (diff * 60 * s);
    canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), linePaint);

    final rect = Rect.fromLTRB(0, 0, size.width, size.height);
    canvas.drawRect(rect, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
