import 'project_links.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workspace.g.dart';

@JsonSerializable()
class Workspace {
  String? slug;
  String? type;
  String? name;
  Links? links;
  String? uuid;

  Workspace({this.slug, this.type, this.name, this.links, this.uuid});

  factory Workspace.fromJson(Map<String, dynamic> json) => _$WorkspaceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceToJson(this);
}
