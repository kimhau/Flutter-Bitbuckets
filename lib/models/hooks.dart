import 'package:json_annotation/json_annotation.dart';

part 'hooks.g.dart';

@JsonSerializable()
class Hooks {
  String? href;

  Hooks({this.href});

  factory Hooks.fromJson(Map<String, dynamic> json) => _$HooksFromJson(json);

  Map<String, dynamic> toJson() => _$HooksToJson(this);
}
