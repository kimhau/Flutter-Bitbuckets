import 'package:json_annotation/json_annotation.dart';

part 'tags.g.dart';

@JsonSerializable()
class Tags {
  String? href;

  Tags({this.href});

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}
