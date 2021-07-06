import 'avatar.dart';
import 'html.dart';
import 'self.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_links.g.dart';

@JsonSerializable()
class Links {
  Self? self;
  Html? html;
  Avatar? avatar;

  Links({this.self, this.html, this.avatar});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
