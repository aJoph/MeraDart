// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Definition _$DefinitionFromJson(Map<String, dynamic> json) {
  return _Definition.fromJson(json);
}

/// @nodoc
mixin _$Definition {
  String get definition => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get synonyms => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get antonyms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefinitionCopyWith<Definition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinitionCopyWith<$Res> {
  factory $DefinitionCopyWith(
          Definition value, $Res Function(Definition) then) =
      _$DefinitionCopyWithImpl<$Res>;
  $Res call(
      {String definition,
      String? example,
      List<Map<String, dynamic>> synonyms,
      List<Map<String, dynamic>> antonyms});
}

/// @nodoc
class _$DefinitionCopyWithImpl<$Res> implements $DefinitionCopyWith<$Res> {
  _$DefinitionCopyWithImpl(this._value, this._then);

  final Definition _value;
  // ignore: unused_field
  final $Res Function(Definition) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: synonyms == freezed
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      antonyms: antonyms == freezed
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_DefinitionCopyWith<$Res>
    implements $DefinitionCopyWith<$Res> {
  factory _$$_DefinitionCopyWith(
          _$_Definition value, $Res Function(_$_Definition) then) =
      __$$_DefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String definition,
      String? example,
      List<Map<String, dynamic>> synonyms,
      List<Map<String, dynamic>> antonyms});
}

/// @nodoc
class __$$_DefinitionCopyWithImpl<$Res> extends _$DefinitionCopyWithImpl<$Res>
    implements _$$_DefinitionCopyWith<$Res> {
  __$$_DefinitionCopyWithImpl(
      _$_Definition _value, $Res Function(_$_Definition) _then)
      : super(_value, (v) => _then(v as _$_Definition));

  @override
  _$_Definition get _value => super._value as _$_Definition;

  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
  }) {
    return _then(_$_Definition(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: synonyms == freezed
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      antonyms: antonyms == freezed
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Definition implements _Definition {
  _$_Definition(
      {required this.definition,
      this.example,
      required final List<Map<String, dynamic>> synonyms,
      required final List<Map<String, dynamic>> antonyms})
      : _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$_Definition.fromJson(Map<String, dynamic> json) =>
      _$$_DefinitionFromJson(json);

  @override
  final String definition;
  @override
  final String? example;
  final List<Map<String, dynamic>> _synonyms;
  @override
  List<Map<String, dynamic>> get synonyms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<Map<String, dynamic>> _antonyms;
  @override
  List<Map<String, dynamic>> get antonyms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  String toString() {
    return 'Definition(definition: $definition, example: $example, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Definition &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(example),
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms));

  @JsonKey(ignore: true)
  @override
  _$$_DefinitionCopyWith<_$_Definition> get copyWith =>
      __$$_DefinitionCopyWithImpl<_$_Definition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefinitionToJson(
      this,
    );
  }
}

abstract class _Definition implements Definition {
  factory _Definition(
      {required final String definition,
      final String? example,
      required final List<Map<String, dynamic>> synonyms,
      required final List<Map<String, dynamic>> antonyms}) = _$_Definition;

  factory _Definition.fromJson(Map<String, dynamic> json) =
      _$_Definition.fromJson;

  @override
  String get definition;
  @override
  String? get example;
  @override
  List<Map<String, dynamic>> get synonyms;
  @override
  List<Map<String, dynamic>> get antonyms;
  @override
  @JsonKey(ignore: true)
  _$$_DefinitionCopyWith<_$_Definition> get copyWith =>
      throw _privateConstructorUsedError;
}
