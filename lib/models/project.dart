import 'project_links.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  Links? links;
  String? type;
  String? name;
  String? key;
  String? uuid;

  Project({this.links, this.type, this.name, this.key, this.uuid});

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
