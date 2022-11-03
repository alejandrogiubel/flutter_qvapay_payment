// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeModel _$MeModelFromJson(Map<String, dynamic> json) => MeModel(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      profilePhotoUrl: json['profile_photo_url'] as String,
    );

Map<String, dynamic> _$MeModelToJson(MeModel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'name': instance.name,
      'profile_photo_url': instance.profilePhotoUrl,
    };
