import 'package:json_annotation/json_annotation.dart';

part 'watchers.g.dart';

@JsonSerializable()
class Watchers {
  String? href;

  Watchers({this.href});

  factory Watchers.fromJson(Map<String, dynamic> json) => _$WatchersFromJson(json);

  Map<String, dynamic> toJson() => _$WatchersToJson(this);
}
