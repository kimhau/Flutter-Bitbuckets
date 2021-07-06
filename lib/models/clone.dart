import 'package:json_annotation/json_annotation.dart';

part 'clone.g.dart';

@JsonSerializable()
class Clone {
	String? href;
	String? name;

	Clone({this.href, this.name});

	factory Clone.fromJson(Map<String, dynamic> json)  => _$CloneFromJson(json);

	Map<String, dynamic> toJson()  => _$CloneToJson(this);
}
