// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chord_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Index _$IndexFromJson(Map<String, dynamic> json) {
  return _Index.fromJson(json);
}

/// @nodoc
mixin _$Index {
  @JsonKey(name: "main")
  Main? get main => throw _privateConstructorUsedError;
  @JsonKey(name: "tunings")
  Tunings? get tunings => throw _privateConstructorUsedError;
  @JsonKey(name: "keys")
  List<KeyNote>? get keys => throw _privateConstructorUsedError;
  @JsonKey(name: "suffixes")
  List<String>? get suffixes => throw _privateConstructorUsedError;
  @JsonKey(name: "chords")
  Chords? get chords => throw _privateConstructorUsedError;

  /// Serializes this Index to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndexCopyWith<Index> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexCopyWith<$Res> {
  factory $IndexCopyWith(Index value, $Res Function(Index) then) =
      _$IndexCopyWithImpl<$Res, Index>;
  @useResult
  $Res call(
      {@JsonKey(name: "main") Main? main,
      @JsonKey(name: "tunings") Tunings? tunings,
      @JsonKey(name: "keys") List<KeyNote>? keys,
      @JsonKey(name: "suffixes") List<String>? suffixes,
      @JsonKey(name: "chords") Chords? chords});

  $MainCopyWith<$Res>? get main;
  $TuningsCopyWith<$Res>? get tunings;
  $ChordsCopyWith<$Res>? get chords;
}

/// @nodoc
class _$IndexCopyWithImpl<$Res, $Val extends Index>
    implements $IndexCopyWith<$Res> {
  _$IndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? tunings = freezed,
    Object? keys = freezed,
    Object? suffixes = freezed,
    Object? chords = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      tunings: freezed == tunings
          ? _value.tunings
          : tunings // ignore: cast_nullable_to_non_nullable
              as Tunings?,
      keys: freezed == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<KeyNote>?,
      suffixes: freezed == suffixes
          ? _value.suffixes
          : suffixes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chords: freezed == chords
          ? _value.chords
          : chords // ignore: cast_nullable_to_non_nullable
              as Chords?,
    ) as $Val);
  }

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TuningsCopyWith<$Res>? get tunings {
    if (_value.tunings == null) {
      return null;
    }

    return $TuningsCopyWith<$Res>(_value.tunings!, (value) {
      return _then(_value.copyWith(tunings: value) as $Val);
    });
  }

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChordsCopyWith<$Res>? get chords {
    if (_value.chords == null) {
      return null;
    }

    return $ChordsCopyWith<$Res>(_value.chords!, (value) {
      return _then(_value.copyWith(chords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndexImplCopyWith<$Res> implements $IndexCopyWith<$Res> {
  factory _$$IndexImplCopyWith(
          _$IndexImpl value, $Res Function(_$IndexImpl) then) =
      __$$IndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "main") Main? main,
      @JsonKey(name: "tunings") Tunings? tunings,
      @JsonKey(name: "keys") List<KeyNote>? keys,
      @JsonKey(name: "suffixes") List<String>? suffixes,
      @JsonKey(name: "chords") Chords? chords});

  @override
  $MainCopyWith<$Res>? get main;
  @override
  $TuningsCopyWith<$Res>? get tunings;
  @override
  $ChordsCopyWith<$Res>? get chords;
}

/// @nodoc
class __$$IndexImplCopyWithImpl<$Res>
    extends _$IndexCopyWithImpl<$Res, _$IndexImpl>
    implements _$$IndexImplCopyWith<$Res> {
  __$$IndexImplCopyWithImpl(
      _$IndexImpl _value, $Res Function(_$IndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? tunings = freezed,
    Object? keys = freezed,
    Object? suffixes = freezed,
    Object? chords = freezed,
  }) {
    return _then(_$IndexImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      tunings: freezed == tunings
          ? _value.tunings
          : tunings // ignore: cast_nullable_to_non_nullable
              as Tunings?,
      keys: freezed == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<KeyNote>?,
      suffixes: freezed == suffixes
          ? _value._suffixes
          : suffixes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      chords: freezed == chords
          ? _value.chords
          : chords // ignore: cast_nullable_to_non_nullable
              as Chords?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexImpl implements _Index {
  const _$IndexImpl(
      {@JsonKey(name: "main") this.main,
      @JsonKey(name: "tunings") this.tunings,
      @JsonKey(name: "keys") final List<KeyNote>? keys,
      @JsonKey(name: "suffixes") final List<String>? suffixes,
      @JsonKey(name: "chords") this.chords})
      : _keys = keys,
        _suffixes = suffixes;

  factory _$IndexImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexImplFromJson(json);

  @override
  @JsonKey(name: "main")
  final Main? main;
  @override
  @JsonKey(name: "tunings")
  final Tunings? tunings;
  final List<KeyNote>? _keys;
  @override
  @JsonKey(name: "keys")
  List<KeyNote>? get keys {
    final value = _keys;
    if (value == null) return null;
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _suffixes;
  @override
  @JsonKey(name: "suffixes")
  List<String>? get suffixes {
    final value = _suffixes;
    if (value == null) return null;
    if (_suffixes is EqualUnmodifiableListView) return _suffixes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "chords")
  final Chords? chords;

  @override
  String toString() {
    return 'Index(main: $main, tunings: $tunings, keys: $keys, suffixes: $suffixes, chords: $chords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.tunings, tunings) || other.tunings == tunings) &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            const DeepCollectionEquality().equals(other._suffixes, _suffixes) &&
            (identical(other.chords, chords) || other.chords == chords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      main,
      tunings,
      const DeepCollectionEquality().hash(_keys),
      const DeepCollectionEquality().hash(_suffixes),
      chords);

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      __$$IndexImplCopyWithImpl<_$IndexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexImplToJson(
      this,
    );
  }
}

abstract class _Index implements Index {
  const factory _Index(
      {@JsonKey(name: "main") final Main? main,
      @JsonKey(name: "tunings") final Tunings? tunings,
      @JsonKey(name: "keys") final List<KeyNote>? keys,
      @JsonKey(name: "suffixes") final List<String>? suffixes,
      @JsonKey(name: "chords") final Chords? chords}) = _$IndexImpl;

  factory _Index.fromJson(Map<String, dynamic> json) = _$IndexImpl.fromJson;

  @override
  @JsonKey(name: "main")
  Main? get main;
  @override
  @JsonKey(name: "tunings")
  Tunings? get tunings;
  @override
  @JsonKey(name: "keys")
  List<KeyNote>? get keys;
  @override
  @JsonKey(name: "suffixes")
  List<String>? get suffixes;
  @override
  @JsonKey(name: "chords")
  Chords? get chords;

  /// Create a copy of Index
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chords _$ChordsFromJson(Map<String, dynamic> json) {
  return _Chords.fromJson(json);
}

/// @nodoc
mixin _$Chords {
  @JsonKey(name: "C")
  List<Chord> get chordsInC => throw _privateConstructorUsedError;
  @JsonKey(name: "Csharp")
  List<Chord> get chordsInCsharp => throw _privateConstructorUsedError;
  @JsonKey(name: "D")
  List<Chord> get chordsInD => throw _privateConstructorUsedError;
  @JsonKey(name: "Eb")
  List<Chord> get chordsInEb => throw _privateConstructorUsedError;
  @JsonKey(name: "E")
  List<Chord> get chordsInE => throw _privateConstructorUsedError;
  @JsonKey(name: "F")
  List<Chord> get chordsInF => throw _privateConstructorUsedError;
  @JsonKey(name: "Fsharp")
  List<Chord> get chordsInFsharp => throw _privateConstructorUsedError;
  @JsonKey(name: "G")
  List<Chord> get chordsInG => throw _privateConstructorUsedError;
  @JsonKey(name: "Ab")
  List<Chord> get chordsInAb => throw _privateConstructorUsedError;
  @JsonKey(name: "A")
  List<Chord> get chordsInA => throw _privateConstructorUsedError;
  @JsonKey(name: "Bb")
  List<Chord> get chordsInBb => throw _privateConstructorUsedError;
  @JsonKey(name: "B")
  List<Chord> get chordsInB => throw _privateConstructorUsedError;

  /// Serializes this Chords to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChordsCopyWith<Chords> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChordsCopyWith<$Res> {
  factory $ChordsCopyWith(Chords value, $Res Function(Chords) then) =
      _$ChordsCopyWithImpl<$Res, Chords>;
  @useResult
  $Res call(
      {@JsonKey(name: "C") List<Chord> chordsInC,
      @JsonKey(name: "Csharp") List<Chord> chordsInCsharp,
      @JsonKey(name: "D") List<Chord> chordsInD,
      @JsonKey(name: "Eb") List<Chord> chordsInEb,
      @JsonKey(name: "E") List<Chord> chordsInE,
      @JsonKey(name: "F") List<Chord> chordsInF,
      @JsonKey(name: "Fsharp") List<Chord> chordsInFsharp,
      @JsonKey(name: "G") List<Chord> chordsInG,
      @JsonKey(name: "Ab") List<Chord> chordsInAb,
      @JsonKey(name: "A") List<Chord> chordsInA,
      @JsonKey(name: "Bb") List<Chord> chordsInBb,
      @JsonKey(name: "B") List<Chord> chordsInB});
}

/// @nodoc
class _$ChordsCopyWithImpl<$Res, $Val extends Chords>
    implements $ChordsCopyWith<$Res> {
  _$ChordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chordsInC = null,
    Object? chordsInCsharp = null,
    Object? chordsInD = null,
    Object? chordsInEb = null,
    Object? chordsInE = null,
    Object? chordsInF = null,
    Object? chordsInFsharp = null,
    Object? chordsInG = null,
    Object? chordsInAb = null,
    Object? chordsInA = null,
    Object? chordsInBb = null,
    Object? chordsInB = null,
  }) {
    return _then(_value.copyWith(
      chordsInC: null == chordsInC
          ? _value.chordsInC
          : chordsInC // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInCsharp: null == chordsInCsharp
          ? _value.chordsInCsharp
          : chordsInCsharp // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInD: null == chordsInD
          ? _value.chordsInD
          : chordsInD // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInEb: null == chordsInEb
          ? _value.chordsInEb
          : chordsInEb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInE: null == chordsInE
          ? _value.chordsInE
          : chordsInE // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInF: null == chordsInF
          ? _value.chordsInF
          : chordsInF // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInFsharp: null == chordsInFsharp
          ? _value.chordsInFsharp
          : chordsInFsharp // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInG: null == chordsInG
          ? _value.chordsInG
          : chordsInG // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInAb: null == chordsInAb
          ? _value.chordsInAb
          : chordsInAb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInA: null == chordsInA
          ? _value.chordsInA
          : chordsInA // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInBb: null == chordsInBb
          ? _value.chordsInBb
          : chordsInBb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInB: null == chordsInB
          ? _value.chordsInB
          : chordsInB // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChordsImplCopyWith<$Res> implements $ChordsCopyWith<$Res> {
  factory _$$ChordsImplCopyWith(
          _$ChordsImpl value, $Res Function(_$ChordsImpl) then) =
      __$$ChordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "C") List<Chord> chordsInC,
      @JsonKey(name: "Csharp") List<Chord> chordsInCsharp,
      @JsonKey(name: "D") List<Chord> chordsInD,
      @JsonKey(name: "Eb") List<Chord> chordsInEb,
      @JsonKey(name: "E") List<Chord> chordsInE,
      @JsonKey(name: "F") List<Chord> chordsInF,
      @JsonKey(name: "Fsharp") List<Chord> chordsInFsharp,
      @JsonKey(name: "G") List<Chord> chordsInG,
      @JsonKey(name: "Ab") List<Chord> chordsInAb,
      @JsonKey(name: "A") List<Chord> chordsInA,
      @JsonKey(name: "Bb") List<Chord> chordsInBb,
      @JsonKey(name: "B") List<Chord> chordsInB});
}

/// @nodoc
class __$$ChordsImplCopyWithImpl<$Res>
    extends _$ChordsCopyWithImpl<$Res, _$ChordsImpl>
    implements _$$ChordsImplCopyWith<$Res> {
  __$$ChordsImplCopyWithImpl(
      _$ChordsImpl _value, $Res Function(_$ChordsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chordsInC = null,
    Object? chordsInCsharp = null,
    Object? chordsInD = null,
    Object? chordsInEb = null,
    Object? chordsInE = null,
    Object? chordsInF = null,
    Object? chordsInFsharp = null,
    Object? chordsInG = null,
    Object? chordsInAb = null,
    Object? chordsInA = null,
    Object? chordsInBb = null,
    Object? chordsInB = null,
  }) {
    return _then(_$ChordsImpl(
      chordsInC: null == chordsInC
          ? _value._chordsInC
          : chordsInC // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInCsharp: null == chordsInCsharp
          ? _value._chordsInCsharp
          : chordsInCsharp // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInD: null == chordsInD
          ? _value._chordsInD
          : chordsInD // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInEb: null == chordsInEb
          ? _value._chordsInEb
          : chordsInEb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInE: null == chordsInE
          ? _value._chordsInE
          : chordsInE // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInF: null == chordsInF
          ? _value._chordsInF
          : chordsInF // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInFsharp: null == chordsInFsharp
          ? _value._chordsInFsharp
          : chordsInFsharp // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInG: null == chordsInG
          ? _value._chordsInG
          : chordsInG // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInAb: null == chordsInAb
          ? _value._chordsInAb
          : chordsInAb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInA: null == chordsInA
          ? _value._chordsInA
          : chordsInA // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInBb: null == chordsInBb
          ? _value._chordsInBb
          : chordsInBb // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
      chordsInB: null == chordsInB
          ? _value._chordsInB
          : chordsInB // ignore: cast_nullable_to_non_nullable
              as List<Chord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChordsImpl implements _Chords {
  const _$ChordsImpl(
      {@JsonKey(name: "C") required final List<Chord> chordsInC,
      @JsonKey(name: "Csharp") required final List<Chord> chordsInCsharp,
      @JsonKey(name: "D") required final List<Chord> chordsInD,
      @JsonKey(name: "Eb") required final List<Chord> chordsInEb,
      @JsonKey(name: "E") required final List<Chord> chordsInE,
      @JsonKey(name: "F") required final List<Chord> chordsInF,
      @JsonKey(name: "Fsharp") required final List<Chord> chordsInFsharp,
      @JsonKey(name: "G") required final List<Chord> chordsInG,
      @JsonKey(name: "Ab") required final List<Chord> chordsInAb,
      @JsonKey(name: "A") required final List<Chord> chordsInA,
      @JsonKey(name: "Bb") required final List<Chord> chordsInBb,
      @JsonKey(name: "B") required final List<Chord> chordsInB})
      : _chordsInC = chordsInC,
        _chordsInCsharp = chordsInCsharp,
        _chordsInD = chordsInD,
        _chordsInEb = chordsInEb,
        _chordsInE = chordsInE,
        _chordsInF = chordsInF,
        _chordsInFsharp = chordsInFsharp,
        _chordsInG = chordsInG,
        _chordsInAb = chordsInAb,
        _chordsInA = chordsInA,
        _chordsInBb = chordsInBb,
        _chordsInB = chordsInB;

  factory _$ChordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChordsImplFromJson(json);

  final List<Chord> _chordsInC;
  @override
  @JsonKey(name: "C")
  List<Chord> get chordsInC {
    if (_chordsInC is EqualUnmodifiableListView) return _chordsInC;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInC);
  }

  final List<Chord> _chordsInCsharp;
  @override
  @JsonKey(name: "Csharp")
  List<Chord> get chordsInCsharp {
    if (_chordsInCsharp is EqualUnmodifiableListView) return _chordsInCsharp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInCsharp);
  }

  final List<Chord> _chordsInD;
  @override
  @JsonKey(name: "D")
  List<Chord> get chordsInD {
    if (_chordsInD is EqualUnmodifiableListView) return _chordsInD;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInD);
  }

  final List<Chord> _chordsInEb;
  @override
  @JsonKey(name: "Eb")
  List<Chord> get chordsInEb {
    if (_chordsInEb is EqualUnmodifiableListView) return _chordsInEb;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInEb);
  }

  final List<Chord> _chordsInE;
  @override
  @JsonKey(name: "E")
  List<Chord> get chordsInE {
    if (_chordsInE is EqualUnmodifiableListView) return _chordsInE;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInE);
  }

  final List<Chord> _chordsInF;
  @override
  @JsonKey(name: "F")
  List<Chord> get chordsInF {
    if (_chordsInF is EqualUnmodifiableListView) return _chordsInF;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInF);
  }

  final List<Chord> _chordsInFsharp;
  @override
  @JsonKey(name: "Fsharp")
  List<Chord> get chordsInFsharp {
    if (_chordsInFsharp is EqualUnmodifiableListView) return _chordsInFsharp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInFsharp);
  }

  final List<Chord> _chordsInG;
  @override
  @JsonKey(name: "G")
  List<Chord> get chordsInG {
    if (_chordsInG is EqualUnmodifiableListView) return _chordsInG;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInG);
  }

  final List<Chord> _chordsInAb;
  @override
  @JsonKey(name: "Ab")
  List<Chord> get chordsInAb {
    if (_chordsInAb is EqualUnmodifiableListView) return _chordsInAb;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInAb);
  }

  final List<Chord> _chordsInA;
  @override
  @JsonKey(name: "A")
  List<Chord> get chordsInA {
    if (_chordsInA is EqualUnmodifiableListView) return _chordsInA;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInA);
  }

  final List<Chord> _chordsInBb;
  @override
  @JsonKey(name: "Bb")
  List<Chord> get chordsInBb {
    if (_chordsInBb is EqualUnmodifiableListView) return _chordsInBb;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInBb);
  }

  final List<Chord> _chordsInB;
  @override
  @JsonKey(name: "B")
  List<Chord> get chordsInB {
    if (_chordsInB is EqualUnmodifiableListView) return _chordsInB;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chordsInB);
  }

  @override
  String toString() {
    return 'Chords(chordsInC: $chordsInC, chordsInCsharp: $chordsInCsharp, chordsInD: $chordsInD, chordsInEb: $chordsInEb, chordsInE: $chordsInE, chordsInF: $chordsInF, chordsInFsharp: $chordsInFsharp, chordsInG: $chordsInG, chordsInAb: $chordsInAb, chordsInA: $chordsInA, chordsInBb: $chordsInBb, chordsInB: $chordsInB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChordsImpl &&
            const DeepCollectionEquality()
                .equals(other._chordsInC, _chordsInC) &&
            const DeepCollectionEquality()
                .equals(other._chordsInCsharp, _chordsInCsharp) &&
            const DeepCollectionEquality()
                .equals(other._chordsInD, _chordsInD) &&
            const DeepCollectionEquality()
                .equals(other._chordsInEb, _chordsInEb) &&
            const DeepCollectionEquality()
                .equals(other._chordsInE, _chordsInE) &&
            const DeepCollectionEquality()
                .equals(other._chordsInF, _chordsInF) &&
            const DeepCollectionEquality()
                .equals(other._chordsInFsharp, _chordsInFsharp) &&
            const DeepCollectionEquality()
                .equals(other._chordsInG, _chordsInG) &&
            const DeepCollectionEquality()
                .equals(other._chordsInAb, _chordsInAb) &&
            const DeepCollectionEquality()
                .equals(other._chordsInA, _chordsInA) &&
            const DeepCollectionEquality()
                .equals(other._chordsInBb, _chordsInBb) &&
            const DeepCollectionEquality()
                .equals(other._chordsInB, _chordsInB));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chordsInC),
      const DeepCollectionEquality().hash(_chordsInCsharp),
      const DeepCollectionEquality().hash(_chordsInD),
      const DeepCollectionEquality().hash(_chordsInEb),
      const DeepCollectionEquality().hash(_chordsInE),
      const DeepCollectionEquality().hash(_chordsInF),
      const DeepCollectionEquality().hash(_chordsInFsharp),
      const DeepCollectionEquality().hash(_chordsInG),
      const DeepCollectionEquality().hash(_chordsInAb),
      const DeepCollectionEquality().hash(_chordsInA),
      const DeepCollectionEquality().hash(_chordsInBb),
      const DeepCollectionEquality().hash(_chordsInB));

  /// Create a copy of Chords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChordsImplCopyWith<_$ChordsImpl> get copyWith =>
      __$$ChordsImplCopyWithImpl<_$ChordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChordsImplToJson(
      this,
    );
  }
}

abstract class _Chords implements Chords {
  const factory _Chords(
      {@JsonKey(name: "C") required final List<Chord> chordsInC,
      @JsonKey(name: "Csharp") required final List<Chord> chordsInCsharp,
      @JsonKey(name: "D") required final List<Chord> chordsInD,
      @JsonKey(name: "Eb") required final List<Chord> chordsInEb,
      @JsonKey(name: "E") required final List<Chord> chordsInE,
      @JsonKey(name: "F") required final List<Chord> chordsInF,
      @JsonKey(name: "Fsharp") required final List<Chord> chordsInFsharp,
      @JsonKey(name: "G") required final List<Chord> chordsInG,
      @JsonKey(name: "Ab") required final List<Chord> chordsInAb,
      @JsonKey(name: "A") required final List<Chord> chordsInA,
      @JsonKey(name: "Bb") required final List<Chord> chordsInBb,
      @JsonKey(name: "B") required final List<Chord> chordsInB}) = _$ChordsImpl;

  factory _Chords.fromJson(Map<String, dynamic> json) = _$ChordsImpl.fromJson;

  @override
  @JsonKey(name: "C")
  List<Chord> get chordsInC;
  @override
  @JsonKey(name: "Csharp")
  List<Chord> get chordsInCsharp;
  @override
  @JsonKey(name: "D")
  List<Chord> get chordsInD;
  @override
  @JsonKey(name: "Eb")
  List<Chord> get chordsInEb;
  @override
  @JsonKey(name: "E")
  List<Chord> get chordsInE;
  @override
  @JsonKey(name: "F")
  List<Chord> get chordsInF;
  @override
  @JsonKey(name: "Fsharp")
  List<Chord> get chordsInFsharp;
  @override
  @JsonKey(name: "G")
  List<Chord> get chordsInG;
  @override
  @JsonKey(name: "Ab")
  List<Chord> get chordsInAb;
  @override
  @JsonKey(name: "A")
  List<Chord> get chordsInA;
  @override
  @JsonKey(name: "Bb")
  List<Chord> get chordsInBb;
  @override
  @JsonKey(name: "B")
  List<Chord> get chordsInB;

  /// Create a copy of Chords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChordsImplCopyWith<_$ChordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chord _$ChordFromJson(Map<String, dynamic> json) {
  return _Chord.fromJson(json);
}

/// @nodoc
mixin _$Chord {
  @JsonKey(name: "key")
  KeyNote get key => throw _privateConstructorUsedError;
  @JsonKey(name: "suffix")
  String get suffix => throw _privateConstructorUsedError;
  @JsonKey(name: "positions")
  List<Position> get positions => throw _privateConstructorUsedError;

  /// Serializes this Chord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChordCopyWith<Chord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChordCopyWith<$Res> {
  factory $ChordCopyWith(Chord value, $Res Function(Chord) then) =
      _$ChordCopyWithImpl<$Res, Chord>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") KeyNote key,
      @JsonKey(name: "suffix") String suffix,
      @JsonKey(name: "positions") List<Position> positions});
}

/// @nodoc
class _$ChordCopyWithImpl<$Res, $Val extends Chord>
    implements $ChordCopyWith<$Res> {
  _$ChordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? suffix = null,
    Object? positions = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as KeyNote,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChordImplCopyWith<$Res> implements $ChordCopyWith<$Res> {
  factory _$$ChordImplCopyWith(
          _$ChordImpl value, $Res Function(_$ChordImpl) then) =
      __$$ChordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") KeyNote key,
      @JsonKey(name: "suffix") String suffix,
      @JsonKey(name: "positions") List<Position> positions});
}

/// @nodoc
class __$$ChordImplCopyWithImpl<$Res>
    extends _$ChordCopyWithImpl<$Res, _$ChordImpl>
    implements _$$ChordImplCopyWith<$Res> {
  __$$ChordImplCopyWithImpl(
      _$ChordImpl _value, $Res Function(_$ChordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? suffix = null,
    Object? positions = null,
  }) {
    return _then(_$ChordImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as KeyNote,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<Position>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChordImpl implements _Chord {
  const _$ChordImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "suffix") required this.suffix,
      @JsonKey(name: "positions") required final List<Position> positions})
      : _positions = positions;

  factory _$ChordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChordImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final KeyNote key;
  @override
  @JsonKey(name: "suffix")
  final String suffix;
  final List<Position> _positions;
  @override
  @JsonKey(name: "positions")
  List<Position> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'Chord(key: $key, suffix: $suffix, positions: $positions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChordImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, suffix,
      const DeepCollectionEquality().hash(_positions));

  /// Create a copy of Chord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChordImplCopyWith<_$ChordImpl> get copyWith =>
      __$$ChordImplCopyWithImpl<_$ChordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChordImplToJson(
      this,
    );
  }
}

abstract class _Chord implements Chord {
  const factory _Chord(
      {@JsonKey(name: "key") required final KeyNote key,
      @JsonKey(name: "suffix") required final String suffix,
      @JsonKey(name: "positions")
      required final List<Position> positions}) = _$ChordImpl;

  factory _Chord.fromJson(Map<String, dynamic> json) = _$ChordImpl.fromJson;

  @override
  @JsonKey(name: "key")
  KeyNote get key;
  @override
  @JsonKey(name: "suffix")
  String get suffix;
  @override
  @JsonKey(name: "positions")
  List<Position> get positions;

  /// Create a copy of Chord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChordImplCopyWith<_$ChordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  @JsonKey(name: "frets")
  List<int> get frets => throw _privateConstructorUsedError;
  @JsonKey(name: "fingers")
  List<int> get fingers => throw _privateConstructorUsedError;
  @JsonKey(name: "baseFret")
  int get baseFret => throw _privateConstructorUsedError;
  @JsonKey(name: "barres")
  List<int> get barres => throw _privateConstructorUsedError;
  @JsonKey(name: "midi")
  List<int> get midi => throw _privateConstructorUsedError;
  @JsonKey(name: "capo")
  bool? get capo => throw _privateConstructorUsedError;

  /// Serializes this Position to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call(
      {@JsonKey(name: "frets") List<int> frets,
      @JsonKey(name: "fingers") List<int> fingers,
      @JsonKey(name: "baseFret") int baseFret,
      @JsonKey(name: "barres") List<int> barres,
      @JsonKey(name: "midi") List<int> midi,
      @JsonKey(name: "capo") bool? capo});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frets = null,
    Object? fingers = null,
    Object? baseFret = null,
    Object? barres = null,
    Object? midi = null,
    Object? capo = freezed,
  }) {
    return _then(_value.copyWith(
      frets: null == frets
          ? _value.frets
          : frets // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fingers: null == fingers
          ? _value.fingers
          : fingers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      baseFret: null == baseFret
          ? _value.baseFret
          : baseFret // ignore: cast_nullable_to_non_nullable
              as int,
      barres: null == barres
          ? _value.barres
          : barres // ignore: cast_nullable_to_non_nullable
              as List<int>,
      midi: null == midi
          ? _value.midi
          : midi // ignore: cast_nullable_to_non_nullable
              as List<int>,
      capo: freezed == capo
          ? _value.capo
          : capo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res>
    implements $PositionCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "frets") List<int> frets,
      @JsonKey(name: "fingers") List<int> fingers,
      @JsonKey(name: "baseFret") int baseFret,
      @JsonKey(name: "barres") List<int> barres,
      @JsonKey(name: "midi") List<int> midi,
      @JsonKey(name: "capo") bool? capo});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frets = null,
    Object? fingers = null,
    Object? baseFret = null,
    Object? barres = null,
    Object? midi = null,
    Object? capo = freezed,
  }) {
    return _then(_$PositionImpl(
      frets: null == frets
          ? _value._frets
          : frets // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fingers: null == fingers
          ? _value._fingers
          : fingers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      baseFret: null == baseFret
          ? _value.baseFret
          : baseFret // ignore: cast_nullable_to_non_nullable
              as int,
      barres: null == barres
          ? _value._barres
          : barres // ignore: cast_nullable_to_non_nullable
              as List<int>,
      midi: null == midi
          ? _value._midi
          : midi // ignore: cast_nullable_to_non_nullable
              as List<int>,
      capo: freezed == capo
          ? _value.capo
          : capo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionImpl implements _Position {
  const _$PositionImpl(
      {@JsonKey(name: "frets") required final List<int> frets,
      @JsonKey(name: "fingers") required final List<int> fingers,
      @JsonKey(name: "baseFret") required this.baseFret,
      @JsonKey(name: "barres") required final List<int> barres,
      @JsonKey(name: "midi") required final List<int> midi,
      @JsonKey(name: "capo") this.capo})
      : _frets = frets,
        _fingers = fingers,
        _barres = barres,
        _midi = midi;

  factory _$PositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionImplFromJson(json);

  final List<int> _frets;
  @override
  @JsonKey(name: "frets")
  List<int> get frets {
    if (_frets is EqualUnmodifiableListView) return _frets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frets);
  }

  final List<int> _fingers;
  @override
  @JsonKey(name: "fingers")
  List<int> get fingers {
    if (_fingers is EqualUnmodifiableListView) return _fingers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fingers);
  }

  @override
  @JsonKey(name: "baseFret")
  final int baseFret;
  final List<int> _barres;
  @override
  @JsonKey(name: "barres")
  List<int> get barres {
    if (_barres is EqualUnmodifiableListView) return _barres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barres);
  }

  final List<int> _midi;
  @override
  @JsonKey(name: "midi")
  List<int> get midi {
    if (_midi is EqualUnmodifiableListView) return _midi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_midi);
  }

  @override
  @JsonKey(name: "capo")
  final bool? capo;

  @override
  String toString() {
    return 'Position(frets: $frets, fingers: $fingers, baseFret: $baseFret, barres: $barres, midi: $midi, capo: $capo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            const DeepCollectionEquality().equals(other._frets, _frets) &&
            const DeepCollectionEquality().equals(other._fingers, _fingers) &&
            (identical(other.baseFret, baseFret) ||
                other.baseFret == baseFret) &&
            const DeepCollectionEquality().equals(other._barres, _barres) &&
            const DeepCollectionEquality().equals(other._midi, _midi) &&
            (identical(other.capo, capo) || other.capo == capo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_frets),
      const DeepCollectionEquality().hash(_fingers),
      baseFret,
      const DeepCollectionEquality().hash(_barres),
      const DeepCollectionEquality().hash(_midi),
      capo);

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionImplToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
      {@JsonKey(name: "frets") required final List<int> frets,
      @JsonKey(name: "fingers") required final List<int> fingers,
      @JsonKey(name: "baseFret") required final int baseFret,
      @JsonKey(name: "barres") required final List<int> barres,
      @JsonKey(name: "midi") required final List<int> midi,
      @JsonKey(name: "capo") final bool? capo}) = _$PositionImpl;

  factory _Position.fromJson(Map<String, dynamic> json) =
      _$PositionImpl.fromJson;

  @override
  @JsonKey(name: "frets")
  List<int> get frets;
  @override
  @JsonKey(name: "fingers")
  List<int> get fingers;
  @override
  @JsonKey(name: "baseFret")
  int get baseFret;
  @override
  @JsonKey(name: "barres")
  List<int> get barres;
  @override
  @JsonKey(name: "midi")
  List<int> get midi;
  @override
  @JsonKey(name: "capo")
  bool? get capo;

  /// Create a copy of Position
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  @JsonKey(name: "strings")
  int get strings => throw _privateConstructorUsedError;
  @JsonKey(name: "fretsOnChord")
  int get fretsOnChord => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfChords")
  int get numberOfChords => throw _privateConstructorUsedError;

  /// Serializes this Main to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call(
      {@JsonKey(name: "strings") int strings,
      @JsonKey(name: "fretsOnChord") int fretsOnChord,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "numberOfChords") int numberOfChords});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
    Object? fretsOnChord = null,
    Object? name = null,
    Object? numberOfChords = null,
  }) {
    return _then(_value.copyWith(
      strings: null == strings
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as int,
      fretsOnChord: null == fretsOnChord
          ? _value.fretsOnChord
          : fretsOnChord // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChords: null == numberOfChords
          ? _value.numberOfChords
          : numberOfChords // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
          _$MainImpl value, $Res Function(_$MainImpl) then) =
      __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "strings") int strings,
      @JsonKey(name: "fretsOnChord") int fretsOnChord,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "numberOfChords") int numberOfChords});
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
    Object? fretsOnChord = null,
    Object? name = null,
    Object? numberOfChords = null,
  }) {
    return _then(_$MainImpl(
      strings: null == strings
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as int,
      fretsOnChord: null == fretsOnChord
          ? _value.fretsOnChord
          : fretsOnChord // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChords: null == numberOfChords
          ? _value.numberOfChords
          : numberOfChords // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainImpl implements _Main {
  const _$MainImpl(
      {@JsonKey(name: "strings") required this.strings,
      @JsonKey(name: "fretsOnChord") required this.fretsOnChord,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "numberOfChords") required this.numberOfChords});

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  @override
  @JsonKey(name: "strings")
  final int strings;
  @override
  @JsonKey(name: "fretsOnChord")
  final int fretsOnChord;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "numberOfChords")
  final int numberOfChords;

  @override
  String toString() {
    return 'Main(strings: $strings, fretsOnChord: $fretsOnChord, name: $name, numberOfChords: $numberOfChords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            (identical(other.strings, strings) || other.strings == strings) &&
            (identical(other.fretsOnChord, fretsOnChord) ||
                other.fretsOnChord == fretsOnChord) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfChords, numberOfChords) ||
                other.numberOfChords == numberOfChords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, strings, fretsOnChord, name, numberOfChords);

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
          {@JsonKey(name: "strings") required final int strings,
          @JsonKey(name: "fretsOnChord") required final int fretsOnChord,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "numberOfChords") required final int numberOfChords}) =
      _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  @JsonKey(name: "strings")
  int get strings;
  @override
  @JsonKey(name: "fretsOnChord")
  int get fretsOnChord;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "numberOfChords")
  int get numberOfChords;

  /// Create a copy of Main
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tunings _$TuningsFromJson(Map<String, dynamic> json) {
  return _Tunings.fromJson(json);
}

/// @nodoc
mixin _$Tunings {
  @JsonKey(name: "standard")
  List<String> get standard => throw _privateConstructorUsedError;

  /// Serializes this Tunings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tunings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TuningsCopyWith<Tunings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TuningsCopyWith<$Res> {
  factory $TuningsCopyWith(Tunings value, $Res Function(Tunings) then) =
      _$TuningsCopyWithImpl<$Res, Tunings>;
  @useResult
  $Res call({@JsonKey(name: "standard") List<String> standard});
}

/// @nodoc
class _$TuningsCopyWithImpl<$Res, $Val extends Tunings>
    implements $TuningsCopyWith<$Res> {
  _$TuningsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tunings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standard = null,
  }) {
    return _then(_value.copyWith(
      standard: null == standard
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TuningsImplCopyWith<$Res> implements $TuningsCopyWith<$Res> {
  factory _$$TuningsImplCopyWith(
          _$TuningsImpl value, $Res Function(_$TuningsImpl) then) =
      __$$TuningsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "standard") List<String> standard});
}

/// @nodoc
class __$$TuningsImplCopyWithImpl<$Res>
    extends _$TuningsCopyWithImpl<$Res, _$TuningsImpl>
    implements _$$TuningsImplCopyWith<$Res> {
  __$$TuningsImplCopyWithImpl(
      _$TuningsImpl _value, $Res Function(_$TuningsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tunings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standard = null,
  }) {
    return _then(_$TuningsImpl(
      standard: null == standard
          ? _value._standard
          : standard // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TuningsImpl implements _Tunings {
  const _$TuningsImpl(
      {@JsonKey(name: "standard") required final List<String> standard})
      : _standard = standard;

  factory _$TuningsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TuningsImplFromJson(json);

  final List<String> _standard;
  @override
  @JsonKey(name: "standard")
  List<String> get standard {
    if (_standard is EqualUnmodifiableListView) return _standard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standard);
  }

  @override
  String toString() {
    return 'Tunings(standard: $standard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TuningsImpl &&
            const DeepCollectionEquality().equals(other._standard, _standard));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_standard));

  /// Create a copy of Tunings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TuningsImplCopyWith<_$TuningsImpl> get copyWith =>
      __$$TuningsImplCopyWithImpl<_$TuningsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TuningsImplToJson(
      this,
    );
  }
}

abstract class _Tunings implements Tunings {
  const factory _Tunings(
          {@JsonKey(name: "standard") required final List<String> standard}) =
      _$TuningsImpl;

  factory _Tunings.fromJson(Map<String, dynamic> json) = _$TuningsImpl.fromJson;

  @override
  @JsonKey(name: "standard")
  List<String> get standard;

  /// Create a copy of Tunings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TuningsImplCopyWith<_$TuningsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
