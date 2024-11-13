import 'dart:ui' as ui;

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/models/chord_models.dart';

import 'logic.dart';

class ChordPage extends GetView<ChordLogic> {
  const ChordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownMenu<KeyNote>(
                onSelected: controller.keyNoteOnSelected,
                dropdownMenuEntries: KeyNote.values
                    .map((keyNote) => DropdownMenuEntry(
                          value: keyNote,
                          label: keyNote.name,
                        ))
                    .toList(),
              ),
              Obx(() {
                return DropdownMenu(
                  onSelected: controller.chordOnSelected,
                  dropdownMenuEntries: controller.chordsList
                      .toList()
                      .map((chord) => DropdownMenuEntry(
                            value: chord,
                            label: chord.suffix,
                          ))
                      .toList(),
                );
              }),
            ],
          ),
          const SizedBox(height: 20),
          Obx(() {
            if (controller.positions.isNotEmpty) {
              return SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width + 70,
                child: Swiper(
                  controller: controller.swiperController,
                  itemCount: controller.positions.toList().length,
                  pagination: const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                    color: Colors.white,
                    activeColor: Colors.white54,
                  )),
                  outer: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                              "${controller.currentChord?.key.name}${controller.currentChord?.suffix}(v${index + 1})"),
                        ),
                        CustomPaint(
                          size: Size(MediaQuery.sizeOf(context).width,
                              MediaQuery.sizeOf(context).width),
                          painter: ChordPainter(
                              controller.positions.toList()[index]),
                        ),
                      ],
                    );
                  },
                ),
              );
            }
            return const SizedBox();
          }),
        ],
      ),
    );
  }
}

class ChordPainter extends CustomPainter {
  final Position position;

  ChordPainter(this.position);

  final pStyle = ui.ParagraphStyle(fontSize: 30);
  final pStyle2 = ui.ParagraphStyle(fontSize: 20);
  final textStyle = ui.TextStyle(color: Colors.black);
  final textStyle2 = ui.TextStyle(color: Colors.white);

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    drawStrings(canvas, rect);
    drawBaseFret(canvas, rect);
    drawTunings(canvas, rect);
    drawCapo(canvas, rect);
    drawBarres(canvas, rect);
    drawFingers(canvas, rect);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  void drawStrings(Canvas canvas, Rect rect) {
    //背景
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill //填充
      ..color = Colors.white;
    canvas.drawRect(rect, paint);

    //線設置
    paint
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 1.0;

    //画横线
    for (int i = 0; i <= 4; ++i) {
      double dy = rect.top + (rect.height * 0.1) + (rect.height * 0.8 / 4 * i);
      canvas.drawLine(Offset(rect.left + rect.width * 0.1, dy),
          Offset(rect.right - rect.width * 0.1, dy), paint);
    }

    //畫豎線
    for (int i = 0; i <= 5; ++i) {
      double dx = rect.left + (rect.width * 0.1) + rect.width * 0.8 / 5 * i;
      canvas.drawLine(Offset(dx, rect.top + rect.height * 0.1),
          Offset(dx, rect.bottom - rect.height * 0.1), paint);
    }
  }

  void drawBaseFret(Canvas canvas, Rect rect) {
    if (position.baseFret == 1) {
      var paint = Paint()
        ..style = PaintingStyle.stroke //线
        ..color = Colors.black
        ..strokeCap = ui.StrokeCap.round
        ..strokeWidth = 8.0;

      double dy = rect.top + (rect.height * 0.1);
      canvas.drawLine(Offset(rect.left + rect.width * 0.1, dy),
          Offset(rect.right - rect.width * 0.1, dy), paint);
    } else {
      ui.ParagraphBuilder pBuilder = ui.ParagraphBuilder(pStyle2);
      pBuilder.pushStyle(textStyle);
      pBuilder.addText("${position.baseFret}fr");
      ui.Paragraph paragraph = pBuilder.build();
      paragraph.layout(ui.ParagraphConstraints(width: rect.width * 0.16));
      canvas.drawParagraph(
          paragraph, Offset(rect.width * 0.002, rect.height * 0.1));
    }
  }

  void drawTunings(Canvas canvas, Rect rect) {
    List<String> tunings = ["E2", "A2", "D3", "G3", "B3", "E4"];

    for (int i = 0; i <= 5; ++i) {
      ui.ParagraphBuilder pBuilder = ui.ParagraphBuilder(pStyle);
      pBuilder.pushStyle(textStyle);
      pBuilder.addText(tunings[i]);
      ui.Paragraph paragraph = pBuilder.build();
      paragraph.layout(ui.ParagraphConstraints(width: rect.width * 0.16));
      canvas.drawParagraph(
          paragraph, Offset(rect.width * (0.05 + i * 0.16), rect.height * 0.9));
    }
  }

  //畫移調夾
  void drawCapo(Canvas canvas, Rect rect) {
    if (position.barres.isNotEmpty && position.capo == true) {
      var paint = Paint()
        ..style = PaintingStyle.stroke //线
        ..color = Colors.black12
        ..strokeCap = ui.StrokeCap.round
        ..strokeWidth = 40.0;

      double dy = rect.top +
          (rect.height * (0.195 + (position.barres.first - 1) * 0.2));
      canvas.drawLine(
        Offset(rect.left + rect.width * 0.1, dy),
        Offset(rect.right - rect.width * 0.1, dy),
        paint,
      );
    }
  }

  void drawBarres(Canvas canvas, Rect rect) {
    if (position.barres.isNotEmpty) {
      var paint = Paint()
        ..style = PaintingStyle.stroke //线
        ..color = Colors.black
        ..strokeCap = ui.StrokeCap.round
        ..strokeWidth = 40.0;

      for (int barre in position.barres) {
        double dy = rect.top + (rect.height * (0.195 + (barre - 1) * 0.2));

        int start = position.frets.indexOf(barre);
        int end = position.frets.lastIndexOf(barre);

        //rect.width * (0.1 + i * 0.16)
        canvas.drawLine(
          Offset(rect.left + rect.width * (0.1 + start * 0.16), dy),
          Offset(rect.left + rect.width * (0.1 + end * 0.16), dy),
          paint,
        );
      }
    }
  }

  void drawFingers(Canvas canvas, Rect rect) {
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill //填充
      ..color = Colors.black;

    for (int i = 0; i < position.frets.length; i++) {
      switch (position.frets[i]) {
        case < 0:
          ui.ParagraphBuilder pBuilder = ui.ParagraphBuilder(pStyle);
          pBuilder.pushStyle(textStyle);
          pBuilder.addText("X");
          ui.Paragraph paragraph = pBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: rect.width * 0.16));
          canvas.drawParagraph(
              paragraph, Offset(rect.width * (0.075 + i * 0.16), 0));
        case 0:
          ui.ParagraphBuilder pBuilder = ui.ParagraphBuilder(pStyle);
          pBuilder.pushStyle(textStyle);
          pBuilder.addText("O");
          ui.Paragraph paragraph = pBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: rect.width * 0.16));
          canvas.drawParagraph(
              paragraph, Offset(rect.width * (0.075 + i * 0.16), 0));
        case > 0:
          ui.ParagraphBuilder pBuilder = ui.ParagraphBuilder(pStyle);
          pBuilder.pushStyle(textStyle2);
          pBuilder.addText(position.fingers[i].toString());
          ui.Paragraph paragraph = pBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: rect.width * 0.16));

          // 封閉和弦不圈畫
          if (!position.barres.contains(position.frets[i])) {
            canvas.drawCircle(
                Offset(rect.width * (0.1 + i * 0.16),
                    rect.height * (0.195 + (position.frets[i] - 1) * 0.2)),
                20,
                paint);
          }
          canvas.drawParagraph(
              paragraph,
              Offset(rect.width * (0.08 + i * 0.16),
                  rect.height * (0.15 + (position.frets[i] - 1) * 0.2)));
      }
    }
  }
}
