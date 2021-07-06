// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return Project(
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    type: json['type'] as String?,
    name: json['name'] as String?,
    key: json['key'] as String?,
    uuid: json['uuid'] as String?,
  );
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'links': instance.links,
      'type': instance.type,
      'name': instance.name,
      'key': instance.key,
      'uuid': instance.uuid,
    };
