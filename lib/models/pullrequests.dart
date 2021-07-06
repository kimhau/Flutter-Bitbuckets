import 'package:json_annotation/json_annotation.dart';

part 'pullrequests.g.dart';

@JsonSerializable()
class Pullrequests {
  String? href;

  Pullrequests({this.href});

  factory Pullrequests.fromJson(Map<String, dynamic> json) => _$PullrequestsFromJson(json);

  Map<String, dynamic> toJson() => _$PullrequestsToJson(this);
}
