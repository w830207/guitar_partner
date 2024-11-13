// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chord_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndexImpl _$$IndexImplFromJson(Map<String, dynamic> json) => _$IndexImpl(
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      tunings: json['tunings'] == null
          ? null
          : Tunings.fromJson(json['tunings'] as Map<String, dynamic>),
      keys: (json['keys'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$KeyNoteEnumMap, e))
          .toList(),
      suffixes: (json['suffixes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      chords: json['chords'] == null
          ? null
          : Chords.fromJson(json['chords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndexImplToJson(_$IndexImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'tunings': instance.tunings,
      'keys': instance.keys?.map((e) => _$KeyNoteEnumMap[e]!).toList(),
      'suffixes': instance.suffixes,
      'chords': instance.chords,
    };

const _$KeyNoteEnumMap = {
  KeyNote.A: 'A',
  KeyNote.Ab: 'Ab',
  KeyNote.B: 'B',
  KeyNote.Bb: 'Bb',
  KeyNote.C: 'C',
  KeyNote.D: 'D',
  KeyNote.E: 'E',
  KeyNote.Eb: 'Eb',
  KeyNote.F: 'F',
  KeyNote.G: 'G',
  KeyNote.Csharp: 'C#',
  KeyNote.Fsharp: 'F#',
};

_$ChordsImpl _$$ChordsImplFromJson(Map<String, dynamic> json) => _$ChordsImpl(
      chordsInC: (json['C'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInCsharp: (json['Csharp'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInD: (json['D'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInEb: (json['Eb'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInE: (json['E'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInF: (json['F'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInFsharp: (json['Fsharp'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInG: (json['G'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInAb: (json['Ab'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInA: (json['A'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInBb: (json['Bb'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
      chordsInB: (json['B'] as List<dynamic>)
          .map((e) => Chord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChordsImplToJson(_$ChordsImpl instance) =>
    <String, dynamic>{
      'C': instance.chordsInC,
      'Csharp': instance.chordsInCsharp,
      'D': instance.chordsInD,
      'Eb': instance.chordsInEb,
      'E': instance.chordsInE,
      'F': instance.chordsInF,
      'Fsharp': instance.chordsInFsharp,
      'G': instance.chordsInG,
      'Ab': instance.chordsInAb,
      'A': instance.chordsInA,
      'Bb': instance.chordsInBb,
      'B': instance.chordsInB,
    };

_$ChordImpl _$$ChordImplFromJson(Map<String, dynamic> json) => _$ChordImpl(
      key: $enumDecode(_$KeyNoteEnumMap, json['key']),
      suffix: json['suffix'] as String,
      positions: (json['positions'] as List<dynamic>)
          .map((e) => Position.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChordImplToJson(_$ChordImpl instance) =>
    <String, dynamic>{
      'key': _$KeyNoteEnumMap[instance.key]!,
      'suffix': instance.suffix,
      'positions': instance.positions,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      frets: (json['frets'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      fingers: (json['fingers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      baseFret: (json['baseFret'] as num).toInt(),
      barres: (json['barres'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      midi: (json['midi'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      capo: json['capo'] as bool?,
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'frets': instance.frets,
      'fingers': instance.fingers,
      'baseFret': instance.baseFret,
      'barres': instance.barres,
      'midi': instance.midi,
      'capo': instance.capo,
    };

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
      strings: (json['strings'] as num).toInt(),
      fretsOnChord: (json['fretsOnChord'] as num).toInt(),
      name: json['name'] as String,
      numberOfChords: (json['numberOfChords'] as num).toInt(),
    );

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'strings': instance.strings,
      'fretsOnChord': instance.fretsOnChord,
      'name': instance.name,
      'numberOfChords': instance.numberOfChords,
    };

_$TuningsImpl _$$TuningsImplFromJson(Map<String, dynamic> json) =>
    _$TuningsImpl(
      standard:
          (json['standard'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TuningsImplToJson(_$TuningsImpl instance) =>
    <String, dynamic>{
      'standard': instance.standard,
    };
