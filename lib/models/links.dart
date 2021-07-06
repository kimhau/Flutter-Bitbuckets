import 'package:json_annotation/json_annotation.dart';

import 'avatar.dart';
import 'branches.dart';
import 'clone.dart';
import 'commits.dart';
import 'downloads.dart';
import 'forks.dart';
import 'hooks.dart';
import 'html.dart';
import 'pullrequests.dart';
import 'self.dart';
import 'source.dart';
import 'tags.dart';
import 'watchers.dart';

part 'links.g.dart';

@JsonSerializable()
class Links {
  Watchers? watchers;
  Branches? branches;
  Tags? tags;
  Commits? commits;
  List<Clone>? clone;
  Self? self;
  Source? source;
  Html? html;
  Avatar? avatar;
  Hooks? hooks;
  Forks? forks;
  Downloads? downloads;
  Pullrequests? pullrequests;

  Links({
    this.watchers,
    this.branches,
    this.tags,
    this.commits,
    this.clone,
    this.self,
    this.source,
    this.html,
    this.avatar,
    this.hooks,
    this.forks,
    this.downloads,
    this.pullrequests,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
