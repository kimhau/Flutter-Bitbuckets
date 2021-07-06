// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitbucket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bitbucket _$BitbucketFromJson(Map<String, dynamic> json) {
  return Bitbucket(
    scm: json['scm'] as String?,
    website: json['website'] as String?,
    hasWiki: json['has_wiki'] as bool?,
    uuid: json['uuid'] as String?,
    links: json['links'] == null ? null : Links.fromJson(json['links'] as Map<String, dynamic>),
    forkPolicy: json['fork_policy'] as String?,
    fullName: json['full_name'] as String?,
    name: json['name'] as String?,
    project: json['project'] == null ? null : Project.fromJson(json['project'] as Map<String, dynamic>),
    language: json['language'] as String?,
    createdOn: json['created_on'] as String?,
    mainbranch: json['mainbranch'] == null ? null : Mainbranch.fromJson(json['mainbranch'] as Map<String, dynamic>),
    workspace: json['workspace'] == null ? null : Workspace.fromJson(json['workspace'] as Map<String, dynamic>),
    hasIssues: json['has_issues'] as bool?,
    owner: json['owner'] == null ? null : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    updatedOn: json['updated_on'] as String?,
    size: json['size'] as int?,
    type: json['type'] as String?,
    slug: json['slug'] as String?,
    isPrivate: json['is_private'] as bool?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$BitbucketToJson(Bitbucket instance) => <String, dynamic>{
      'scm': instance.scm,
      'website': instance.website,
      'has_wiki': instance.hasWiki,
      'uuid': instance.uuid,
      'links': instance.links,
      'fork_policy': instance.forkPolicy,
      'fullName': instance.fullName,
      'name': instance.name,
      'project': instance.project,
      'language': instance.language,
      'created_on': instance.createdOn,
      'mainbranch': instance.mainbranch,
      'workspace': instance.workspace,
      'hasIssues': instance.hasIssues,
      'owner': instance.owner,
      'updated_on': instance.updatedOn,
      'size': instance.size,
      'type': instance.type,
      'slug': instance.slug,
      'is_private': instance.isPrivate,
      'description': instance.description,
    };
