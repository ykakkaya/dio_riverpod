// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      console: json['console'] as String,
      photo: json['photo'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      releaseYear: (json['released_year'] as num).toInt(),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'console': instance.console,
      'photo': instance.photo,
      'created_at': instance.createdAt.toIso8601String(),
      'released_year': instance.releaseYear,
    };
