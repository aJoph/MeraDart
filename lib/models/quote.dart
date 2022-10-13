import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mera_mera_bot/models/originator.dart';

part 'quote.freezed.dart';

part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Quote({
    required int id,
    required String languageCode,
    required String content,
    required String url,
    required Originator originator,
    required List<String> tags,
  }) = _Quote;

  factory Quote.fromJson(Map<String, Object?> json) => _$QuoteFromJson(json);
}
