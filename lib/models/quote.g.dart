// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quote _$$_QuoteFromJson(Map<String, dynamic> json) => _$_Quote(
      id: json['id'] as int,
      languageCode: json['language_code'] as String,
      content: json['content'] as String,
      url: json['url'] as String,
      originator:
          Originator.fromJson(json['originator'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_QuoteToJson(_$_Quote instance) => <String, dynamic>{
      'id': instance.id,
      'language_code': instance.languageCode,
      'content': instance.content,
      'url': instance.url,
      'originator': instance.originator,
      'tags': instance.tags,
    };
