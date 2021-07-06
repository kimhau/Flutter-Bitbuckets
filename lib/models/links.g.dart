// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    watchers: json['watchers'] == null
        ? null
        : Watchers.fromJson(json['watchers'] as Map<String, dynamic>),
    branches: json['branches'] == null
        ? null
        : Branches.fromJson(json['branches'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    commits: json['commits'] == null
        ? null
        : Commits.fromJson(json['commits'] as Map<String, dynamic>),
    clone: (json['clone'] as List<dynamic>?)
        ?.map((e) => Clone.fromJson(e as Map<String, dynamic>))
        .toList(),
    self: json['self'] == null
        ? null
        : Self.fromJson(json['self'] as Map<String, dynamic>),
    source: json['source'] == null
        ? null
        : Source.fromJson(json['source'] as Map<String, dynamic>),
    html: json['html'] == null
        ? null
        : Html.fromJson(json['html'] as Map<String, dynamic>),
    avatar: json['avatar'] == null
        ? null
        : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    hooks: json['hooks'] == null
        ? null
        : Hooks.fromJson(json['hooks'] as Map<String, dynamic>),
    forks: json['forks'] == null
        ? null
        : Forks.fromJson(json['forks'] as Map<String, dynamic>),
    downloads: json['downloads'] == null
        ? null
        : Downloads.fromJson(json['downloads'] as Map<String, dynamic>),
    pullrequests: json['pullrequests'] == null
        ? null
        : Pullrequests.fromJson(json['pullrequests'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'watchers': instance.watchers,
      'branches': instance.branches,
      'tags': instance.tags,
      'commits': instance.commits,
      'clone': instance.clone,
      'self': instance.self,
      'source': instance.source,
      'html': instance.html,
      'avatar': instance.avatar,
      'hooks': instance.hooks,
      'forks': instance.forks,
      'downloads': instance.downloads,
      'pullrequests': instance.pullrequests,
    };
