import 'package:freezed_annotation/freezed_annotation.dart';

import 'definition.dart';

part 'meaning.freezed.dart';

part 'meaning.g.dart';

@freezed
class Meaning with _$Meaning {
  factory Meaning({
    required String partOfSpeech,
    required List<Definition> definitions,
    required List<String> synonyms,
    required List<String> antonyms,
  }) = _Meaning;

  factory Meaning.fromJson(Map<String, Object?> json) =>
      _$MeaningFromJson(json);
}
