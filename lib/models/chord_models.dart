// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chord_models.freezed.dart';
part 'chord_models.g.dart';

@freezed
class Index with _$Index {
  const factory Index({
    @JsonKey(name: "main") Main? main,
    @JsonKey(name: "tunings") Tunings? tunings,
    @JsonKey(name: "keys") List<KeyNote>? keys,
    @JsonKey(name: "suffixes") List<String>? suffixes,
    @JsonKey(name: "chords") Chords? chords,
  }) = _Index;

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);
}

@freezed
class Chords with _$Chords {
  const factory Chords({
    @JsonKey(name: "C") required List<Chord> chordsInC,
    @JsonKey(name: "Csharp") required List<Chord> chordsInCsharp,
    @JsonKey(name: "D") required List<Chord> chordsInD,
    @JsonKey(name: "Eb") required List<Chord> chordsInEb,
    @JsonKey(name: "E") required List<Chord> chordsInE,
    @JsonKey(name: "F") required List<Chord> chordsInF,
    @JsonKey(name: "Fsharp") required List<Chord> chordsInFsharp,
    @JsonKey(name: "G") required List<Chord> chordsInG,
    @JsonKey(name: "Ab") required List<Chord> chordsInAb,
    @JsonKey(name: "A") required List<Chord> chordsInA,
    @JsonKey(name: "Bb") required List<Chord> chordsInBb,
    @JsonKey(name: "B") required List<Chord> chordsInB,
  }) = _Chords;

  factory Chords.fromJson(Map<String, dynamic> json) => _$ChordsFromJson(json);
}

@freezed
class Chord with _$Chord {
  const factory Chord({
    @JsonKey(name: "key") required KeyNote key,
    @JsonKey(name: "suffix") required String suffix,
    @JsonKey(name: "positions") required List<Position> positions,
  }) = _Chord;

  factory Chord.fromJson(Map<String, dynamic> json) => _$ChordFromJson(json);
}

enum KeyNote {
  @JsonValue("A")
  A("A"),
  @JsonValue("Ab")
  Ab("Ab"),
  @JsonValue("B")
  B("B"),
  @JsonValue("Bb")
  Bb("Bb"),
  @JsonValue("C")
  C("C"),
  @JsonValue("D")
  D("D"),
  @JsonValue("E")
  E("E"),
  @JsonValue("Eb")
  Eb("Eb"),
  @JsonValue("F")
  F("F"),
  @JsonValue("G")
  G("G"),
  @JsonValue("C#")
  Csharp("C#"),
  @JsonValue("F#")
  Fsharp("F#");

  const KeyNote(this.value);

  final String value;
}

@freezed
class Position with _$Position {
  const factory Position({
    @JsonKey(name: "frets") required List<int> frets,
    @JsonKey(name: "fingers") required List<int> fingers,
    @JsonKey(name: "baseFret") required int baseFret,
    @JsonKey(name: "barres") required List<int> barres,
    @JsonKey(name: "midi") required List<int> midi,
    @JsonKey(name: "capo") bool? capo,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    @JsonKey(name: "strings") required int strings,
    @JsonKey(name: "fretsOnChord") required int fretsOnChord,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "numberOfChords") required int numberOfChords,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Tunings with _$Tunings {
  const factory Tunings({
    @JsonKey(name: "standard") required List<String> standard,
  }) = _Tunings;

  factory Tunings.fromJson(Map<String, dynamic> json) =>
      _$TuningsFromJson(json);
}
