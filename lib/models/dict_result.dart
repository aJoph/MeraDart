import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mera_mera_bot/models/meaning.dart';

part 'dict_result.freezed.dart';

part 'dict_result.g.dart';

@freezed
class DictResult with _$DictResult {
  factory DictResult({
    required String word,
    String? origin,
    required List<Meaning> meanings,
  }) = _DictResult;

  factory DictResult.fromJson(Map<String, Object?> json) =>
      _$DictResultFromJson(json);
}
