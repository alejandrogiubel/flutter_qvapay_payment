import 'package:json_annotation/json_annotation.dart';

part 'me_model.g.dart';

@JsonSerializable()
class MeModel {
  MeModel({
    required this.uuid,
    required this.username,
    required this.name,
    required this.profilePhotoUrl,
  });

  final String uuid;
  final String username;
  final String name;
  @JsonKey(name: 'profile_photo_url')
  final String profilePhotoUrl;

  factory MeModel.fromJson(Map<String, dynamic> json) =>
      _$MeModelFromJson(json);

  Map<String, dynamic> toJson() => _$MeModelToJson(this);
}
