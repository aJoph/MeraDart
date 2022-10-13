// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dict_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictResult _$DictResultFromJson(Map<String, dynamic> json) {
  return _DictResult.fromJson(json);
}

/// @nodoc
mixin _$DictResult {
  String get word => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  List<Meaning> get meanings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictResultCopyWith<DictResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictResultCopyWith<$Res> {
  factory $DictResultCopyWith(
          DictResult value, $Res Function(DictResult) then) =
      _$DictResultCopyWithImpl<$Res>;
  $Res call({String word, String? origin, List<Meaning> meanings});
}

/// @nodoc
class _$DictResultCopyWithImpl<$Res> implements $DictResultCopyWith<$Res> {
  _$DictResultCopyWithImpl(this._value, this._then);

  final DictResult _value;
  // ignore: unused_field
  final $Res Function(DictResult) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? origin = freezed,
    Object? meanings = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: meanings == freezed
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>,
    ));
  }
}

/// @nodoc
abstract class _$$_DictResultCopyWith<$Res>
    implements $DictResultCopyWith<$Res> {
  factory _$$_DictResultCopyWith(
          _$_DictResult value, $Res Function(_$_DictResult) then) =
      __$$_DictResultCopyWithImpl<$Res>;
  @override
  $Res call({String word, String? origin, List<Meaning> meanings});
}

/// @nodoc
class __$$_DictResultCopyWithImpl<$Res> extends _$DictResultCopyWithImpl<$Res>
    implements _$$_DictResultCopyWith<$Res> {
  __$$_DictResultCopyWithImpl(
      _$_DictResult _value, $Res Function(_$_DictResult) _then)
      : super(_value, (v) => _then(v as _$_DictResult));

  @override
  _$_DictResult get _value => super._value as _$_DictResult;

  @override
  $Res call({
    Object? word = freezed,
    Object? origin = freezed,
    Object? meanings = freezed,
  }) {
    return _then(_$_DictResult(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: meanings == freezed
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DictResult implements _DictResult {
  _$_DictResult(
      {required this.word, this.origin, required final List<Meaning> meanings})
      : _meanings = meanings;

  factory _$_DictResult.fromJson(Map<String, dynamic> json) =>
      _$$_DictResultFromJson(json);

  @override
  final String word;
  @override
  final String? origin;
  final List<Meaning> _meanings;
  @override
  List<Meaning> get meanings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  String toString() {
    return 'DictResult(word: $word, origin: $origin, meanings: $meanings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DictResult &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(_meanings));

  @JsonKey(ignore: true)
  @override
  _$$_DictResultCopyWith<_$_DictResult> get copyWith =>
      __$$_DictResultCopyWithImpl<_$_DictResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DictResultToJson(
      this,
    );
  }
}

abstract class _DictResult implements DictResult {
  factory _DictResult(
      {required final String word,
      final String? origin,
      required final List<Meaning> meanings}) = _$_DictResult;

  factory _DictResult.fromJson(Map<String, dynamic> json) =
      _$_DictResult.fromJson;

  @override
  String get word;
  @override
  String? get origin;
  @override
  List<Meaning> get meanings;
  @override
  @JsonKey(ignore: true)
  _$$_DictResultCopyWith<_$_DictResult> get copyWith =>
      throw _privateConstructorUsedError;
}
