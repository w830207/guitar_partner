import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DragPointController extends GetxController {
  Rx<Offset> offset = const Offset(30, 80).obs;
  Rx<Orientation> orientation = Orientation.portrait.obs;

  calOffset(Offset offset, Offset nextOffset) {
    double dx = 0;
    double r = orientation.value == Orientation.portrait ? 104.r : 172.r;
    //水平方向偏移量不能小于0不能大于屏幕最大宽度
    if (offset.dx + nextOffset.dx <= 0) {
      dx = 0;
    } else if (offset.dx + nextOffset.dx >= (1.sw - r)) {
      dx = 1.sw - r;
    } else {
      dx = offset.dx + nextOffset.dx;
    }
    double dy = 0;
    //垂直方向偏移量不能小于0不能大于屏幕最大高度
    if (offset.dy + nextOffset.dy <= 0) {
      dy = 0;
    } else if (offset.dy + nextOffset.dy >= (1.sh - 2.5 * r)) {
      dy = 1.sh - 2.5 * r;
    } else {
      dy = offset.dy + nextOffset.dy;
    }
    this.offset.value = Offset(
      dx,
      dy,
    );
  }

  updateOrientation() {
    Orientation next = Get.mediaQuery.orientation;
    if (orientation.value != next) {
      offset.value = const Offset(30, 30);
      orientation.value = next;
    }
  }
}

class FloatButton extends StatelessWidget {
  final DragPointController controller = Get.put(DragPointController());
  final void Function()? onPressed;

  FloatButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    controller.updateOrientation();

    return Obx(
      () => Positioned(
        left: controller.offset.value.dx,
        top: controller.offset.value.dy,
        child: SizedBox(
          width: 80.r,
          height: 80.r,
          child: Builder(builder: (context) {
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onPanUpdate: (detail) {
                controller.calOffset(
                  controller.offset.value,
                  detail.delta,
                );
              },
              onTap: () {},
              child: FloatingActionButton(
                mini: true,
                shape: CircleBorder(
                  side: BorderSide(
                    width: 6.r,
                  ),
                ),
                elevation: 6,
                onPressed: onPressed,
                child: Icon(Icons.home),
              ),
            );
          }),
        ),
      ),
    );
  }
}
