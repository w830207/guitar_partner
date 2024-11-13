import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:guitar_partner/guitar_db.dart';
import 'package:guitar_partner/models/chord_models.dart';

class ChordLogic extends GetxController {
  final Rx<Index> index = const Index().obs;
  final RxList<Chord> chordsList = <Chord>[].obs;
  final RxList<Position> positions = <Position>[].obs;
  Chord? currentChord;

  final swiperController = SwiperController();

  @override
  void onInit() {
    getGuitarDb();
    super.onInit();
  }

  getGuitarDb() {
    index.value = Index.fromJson(guitarDb);
  }

  keyNoteOnSelected(KeyNote? keyNote) {
    positions.call([]);
    currentChord = null;
    if (index.value.chords case Chords chords) {
      switch (keyNote) {
        case KeyNote.A:
          chordsList.call(chords.chordsInA);
        case KeyNote.Ab:
          chordsList.call(chords.chordsInAb);
        case KeyNote.B:
          chordsList.call(chords.chordsInB);
        case KeyNote.Bb:
          chordsList.call(chords.chordsInBb);
        case KeyNote.C:
          chordsList.call(chords.chordsInC);
        case KeyNote.D:
          chordsList.call(chords.chordsInD);
        case KeyNote.E:
          chordsList.call(chords.chordsInE);
        case KeyNote.Eb:
          chordsList.call(chords.chordsInEb);
        case KeyNote.F:
          chordsList.call(chords.chordsInF);
        case KeyNote.G:
          chordsList.call(chords.chordsInG);
        case KeyNote.Csharp:
          chordsList.call(chords.chordsInCsharp);
        case KeyNote.Fsharp:
          chordsList.call(chords.chordsInFsharp);
        default:
      }
    }
  }

  chordOnSelected(Chord? chord) {
    positions.call(chord?.positions);
    currentChord = chord;
    // print(chord?.positions);
  }
}
