import 'package:json_annotation/json_annotation.dart';

part 'forks.g.dart';

@JsonSerializable()
class Forks {
	String? href;

	Forks({this.href});

	factory Forks.fromJson(Map<String, dynamic> json) => _$ForksFromJson(json);

	Map<String, dynamic> toJson()  => _$ForksToJson(this);
}
