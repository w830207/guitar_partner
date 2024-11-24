import 'dart:typed_data';

import 'package:buffered_list_stream/buffered_list_stream.dart';
import 'package:get/get.dart';
import 'package:pitch_detector_dart/pitch_detector.dart';
import 'package:pitchupdart/instrument_type.dart';
import 'package:pitchupdart/pitch_handler.dart';
import 'package:pitchupdart/pitch_result.dart';
import 'package:pitchupdart/tuning_status.dart';
import 'package:record/record.dart';

class TunerLogic extends GetxController {
  final AudioRecorder _audioRecorder = AudioRecorder();
  final PitchDetector _pitchDetectorDart = PitchDetector();
  final PitchHandler _pitchupDart = PitchHandler(InstrumentType.guitar);

  RxString note = "".obs;
  RxString status = "".obs;
  RxBool isRecording = false.obs;

  start() async {
    isRecording.value = true;

    final recordStream = await _audioRecorder.startStream(const RecordConfig(
      encoder: AudioEncoder.pcm16bits,
      numChannels: 1,
      bitRate: 128000,
      sampleRate: PitchDetector.DEFAULT_SAMPLE_RATE,
    ));

    var audioSampleBufferedStream = bufferedListStream(
      recordStream.map((event) {
        return event.toList();
      }),
      //The library converts a PCM16 to 8bits internally. So we need twice as many bytes
      PitchDetector.DEFAULT_BUFFER_SIZE * 2,
    );

    await for (var audioSample in audioSampleBufferedStream) {
      final intBuffer = Uint8List.fromList(audioSample);

      _pitchDetectorDart.getPitchFromIntBuffer(intBuffer).then((detectedPitch) {
        if (detectedPitch.pitched) {
          print(detectedPitch.pitch);
          _pitchupDart
              .handlePitch(detectedPitch.pitch)
              .then((PitchResult pitchResult) {
            note.value = pitchResult.note;
            status.value = pitchResult.tuningStatus.getDescription();
          });
        }
      });
    }
  }

  @override
  void onClose() {
    _audioRecorder.cancel();
    super.onClose();
  }
}

extension Description on TuningStatus {
  String getDescription() => switch (this) {
        TuningStatus.tuned => "Tuned",
        TuningStatus.toolow => "Too low. Tighten the string",
        TuningStatus.toohigh => "Too hig. Give it some slack",
        TuningStatus.waytoolow => "Way too low. Tighten the string",
        TuningStatus.waytoohigh => "Way to high. Give it some slack",
        TuningStatus.undefined => "Note is not in the valid interval.",
      };
}
