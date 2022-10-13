import 'package:freezed_annotation/freezed_annotation.dart';

part 'originator.freezed.dart';

part 'originator.g.dart';

@freezed
class Originator with _$Originator {
  factory Originator({
    required int id,
    required String name,
    required String url,
  }) = _Originator;

  factory Originator.fromJson(Map<String, Object?> json) =>
      _$OriginatorFromJson(json);
}
