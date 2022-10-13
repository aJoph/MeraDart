// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Definition _$$_DefinitionFromJson(Map<String, dynamic> json) =>
    _$_Definition(
      definition: json['definition'] as String,
      example: json['example'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_DefinitionToJson(_$_Definition instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'example': instance.example,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };
