// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KidImpl _$$KidImplFromJson(Map<String, dynamic> json) => _$KidImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      isWellBehaved: json['isWellBehaved'] as bool? ?? false,
    );

Map<String, dynamic> _$$KidImplToJson(_$KidImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'isWellBehaved': instance.isWellBehaved,
    };
