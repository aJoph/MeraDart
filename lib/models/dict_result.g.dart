// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dict_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictResult _$$_DictResultFromJson(Map<String, dynamic> json) =>
    _$_DictResult(
      word: json['word'] as String,
      origin: json['origin'] as String?,
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => Meaning.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DictResultToJson(_$_DictResult instance) =>
    <String, dynamic>{
      'word': instance.word,
      'origin': instance.origin,
      'meanings': instance.meanings,
    };
