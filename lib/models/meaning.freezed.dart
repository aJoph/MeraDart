// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meaning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meaning _$MeaningFromJson(Map<String, dynamic> json) {
  return _Meaning.fromJson(json);
}

/// @nodoc
mixin _$Meaning {
  String get partOfSpeech => throw _privateConstructorUsedError;
  List<Definition> get definitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeaningCopyWith<Meaning> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningCopyWith<$Res> {
  factory $MeaningCopyWith(Meaning value, $Res Function(Meaning) then) =
      _$MeaningCopyWithImpl<$Res>;
  $Res call({String partOfSpeech, List<Definition> definitions});
}

/// @nodoc
class _$MeaningCopyWithImpl<$Res> implements $MeaningCopyWith<$Res> {
  _$MeaningCopyWithImpl(this._value, this._then);

  final Meaning _value;
  // ignore: unused_field
  final $Res Function(Meaning) _then;

  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = freezed,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>,
    ));
  }
}

/// @nodoc
abstract class _$$_MeaningCopyWith<$Res> implements $MeaningCopyWith<$Res> {
  factory _$$_MeaningCopyWith(
          _$_Meaning value, $Res Function(_$_Meaning) then) =
      __$$_MeaningCopyWithImpl<$Res>;
  @override
  $Res call({String partOfSpeech, List<Definition> definitions});
}

/// @nodoc
class __$$_MeaningCopyWithImpl<$Res> extends _$MeaningCopyWithImpl<$Res>
    implements _$$_MeaningCopyWith<$Res> {
  __$$_MeaningCopyWithImpl(_$_Meaning _value, $Res Function(_$_Meaning) _then)
      : super(_value, (v) => _then(v as _$_Meaning));

  @override
  _$_Meaning get _value => super._value as _$_Meaning;

  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = freezed,
  }) {
    return _then(_$_Meaning(
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meaning implements _Meaning {
  _$_Meaning(
      {required this.partOfSpeech, required final List<Definition> definitions})
      : _definitions = definitions;

  factory _$_Meaning.fromJson(Map<String, dynamic> json) =>
      _$$_MeaningFromJson(json);

  @override
  final String partOfSpeech;
  final List<Definition> _definitions;
  @override
  List<Definition> get definitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  String toString() {
    return 'Meaning(partOfSpeech: $partOfSpeech, definitions: $definitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meaning &&
            const DeepCollectionEquality()
                .equals(other.partOfSpeech, partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(partOfSpeech),
      const DeepCollectionEquality().hash(_definitions));

  @JsonKey(ignore: true)
  @override
  _$$_MeaningCopyWith<_$_Meaning> get copyWith =>
      __$$_MeaningCopyWithImpl<_$_Meaning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeaningToJson(
      this,
    );
  }
}

abstract class _Meaning implements Meaning {
  factory _Meaning(
      {required final String partOfSpeech,
      required final List<Definition> definitions}) = _$_Meaning;

  factory _Meaning.fromJson(Map<String, dynamic> json) = _$_Meaning.fromJson;

  @override
  String get partOfSpeech;
  @override
  List<Definition> get definitions;
  @override
  @JsonKey(ignore: true)
  _$$_MeaningCopyWith<_$_Meaning> get copyWith =>
      throw _privateConstructorUsedError;
}
