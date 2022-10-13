// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'originator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Originator _$OriginatorFromJson(Map<String, dynamic> json) {
  return _Originator.fromJson(json);
}

/// @nodoc
mixin _$Originator {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginatorCopyWith<Originator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginatorCopyWith<$Res> {
  factory $OriginatorCopyWith(
          Originator value, $Res Function(Originator) then) =
      _$OriginatorCopyWithImpl<$Res>;
  $Res call({int id, String name, String url});
}

/// @nodoc
class _$OriginatorCopyWithImpl<$Res> implements $OriginatorCopyWith<$Res> {
  _$OriginatorCopyWithImpl(this._value, this._then);

  final Originator _value;
  // ignore: unused_field
  final $Res Function(Originator) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OriginatorCopyWith<$Res>
    implements $OriginatorCopyWith<$Res> {
  factory _$$_OriginatorCopyWith(
          _$_Originator value, $Res Function(_$_Originator) then) =
      __$$_OriginatorCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String url});
}

/// @nodoc
class __$$_OriginatorCopyWithImpl<$Res> extends _$OriginatorCopyWithImpl<$Res>
    implements _$$_OriginatorCopyWith<$Res> {
  __$$_OriginatorCopyWithImpl(
      _$_Originator _value, $Res Function(_$_Originator) _then)
      : super(_value, (v) => _then(v as _$_Originator));

  @override
  _$_Originator get _value => super._value as _$_Originator;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Originator(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Originator implements _Originator {
  _$_Originator({required this.id, required this.name, required this.url});

  factory _$_Originator.fromJson(Map<String, dynamic> json) =>
      _$$_OriginatorFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Originator(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Originator &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_OriginatorCopyWith<_$_Originator> get copyWith =>
      __$$_OriginatorCopyWithImpl<_$_Originator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OriginatorToJson(
      this,
    );
  }
}

abstract class _Originator implements Originator {
  factory _Originator(
      {required final int id,
      required final String name,
      required final String url}) = _$_Originator;

  factory _Originator.fromJson(Map<String, dynamic> json) =
      _$_Originator.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_OriginatorCopyWith<_$_Originator> get copyWith =>
      throw _privateConstructorUsedError;
}
