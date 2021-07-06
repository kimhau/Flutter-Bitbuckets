import 'package:json_annotation/json_annotation.dart';

part 'branches.g.dart';

@JsonSerializable()
class Branches {
  String? href;

  Branches({this.href});

  factory Branches.fromJson(Map<String, dynamic> json) => _$BranchesFromJson(json);

  Map<String, dynamic> toJson() => _$BranchesToJson(this);
}
