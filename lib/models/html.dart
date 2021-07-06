import 'package:json_annotation/json_annotation.dart';

part 'html.g.dart';

@JsonSerializable()
class Html {
  String? href;

  Html({this.href});

  factory Html.fromJson(Map<String, dynamic> json) => _$HtmlFromJson(json);

  Map<String, dynamic> toJson() => _$HtmlToJson(this);
}
