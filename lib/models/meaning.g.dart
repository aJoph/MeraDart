// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'meaning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meaning _$$_MeaningFromJson(Map<String, dynamic> json) => _$_Meaning(
      partOfSpeech: json['partOfSpeech'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => Definition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MeaningToJson(_$_Meaning instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
    };
