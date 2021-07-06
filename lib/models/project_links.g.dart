// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    self: json['self'] == null
        ? null
        : Self.fromJson(json['self'] as Map<String, dynamic>),
    html: json['html'] == null
        ? null
        : Html.fromJson(json['html'] as Map<String, dynamic>),
    avatar: json['avatar'] == null
        ? null
        : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'avatar': instance.avatar,
    };
