import 'package:freezed_annotation/freezed_annotation.dart';

part 'definition.freezed.dart';

part 'definition.g.dart';

@freezed
class Definition with _$Definition {
  factory Definition({
    required String definition,
    String? example,
    required List<Map<String, dynamic>> synonyms,
    required List<Map<String, dynamic>> antonyms,
  }) = _Definition;

  factory Definition.fromJson(Map<String, Object?> json) =>
      _$DefinitionFromJson(json);
}
