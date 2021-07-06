// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) {
  return Workspace(
    slug: json['slug'] as String?,
    type: json['type'] as String?,
    name: json['name'] as String?,
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    uuid: json['uuid'] as String?,
  );
}

Map<String, dynamic> _$WorkspaceToJson(Workspace instance) => <String, dynamic>{
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'links': instance.links,
      'uuid': instance.uuid,
    };
