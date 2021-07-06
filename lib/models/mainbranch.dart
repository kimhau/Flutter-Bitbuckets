import 'package:json_annotation/json_annotation.dart';

part 'mainbranch.g.dart';

@JsonSerializable()
class Mainbranch {
  String? type;
  String? name;

  Mainbranch({this.type, this.name});

  factory Mainbranch.fromJson(Map<String, dynamic> json) => _$MainbranchFromJson(json);

  Map<String, dynamic> toJson() => _$MainbranchToJson(this);
}
