import 'package:json_annotation/json_annotation.dart';

import 'links.dart';
import 'mainbranch.dart';
import 'owner.dart';
import 'project.dart';
import 'workspace.dart';

part 'bitbucket.g.dart';

@JsonSerializable()
class Bitbucket {
  String? scm;
  String? website;
  bool? hasWiki;
  String? uuid;
  Links? links;
  String? forkPolicy;
  String? fullName;
  String? name;
  Project? project;
  String? language;
  String? createdOn;
  Mainbranch? mainbranch;
  Workspace? workspace;
  bool? hasIssues;
  Owner? owner;
  String? updatedOn;
  int? size;
  String? type;
  String? slug;
  bool? isPrivate;
  String? description;

  Bitbucket({
    this.scm,
    this.website,
    this.hasWiki,
    this.uuid,
    this.links,
    this.forkPolicy,
    this.fullName,
    this.name,
    this.project,
    this.language,
    this.createdOn,
    this.mainbranch,
    this.workspace,
    this.hasIssues,
    this.owner,
    this.updatedOn,
    this.size,
    this.type,
    this.slug,
    this.isPrivate,
    this.description,
  });

  factory Bitbucket.fromJson(Map<String, dynamic> json) => _$BitbucketFromJson(json);

  Map<String, dynamic> toJson() => _$BitbucketToJson(this);
}
