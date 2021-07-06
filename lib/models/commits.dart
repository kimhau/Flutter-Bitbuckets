import 'package:json_annotation/json_annotation.dart';

part 'commits.g.dart';

@JsonSerializable()
class Commits {
	String? href;

	Commits({this.href});

	factory Commits.fromJson(Map<String, dynamic> json) => _$CommitsFromJson(json);
	Map<String, dynamic> toJson() => _$CommitsToJson(this);

}