import 'package:json_annotation/json_annotation.dart';

part 'downloads.g.dart';

@JsonSerializable()
class Downloads {
	String? href;

	Downloads({this.href});

	factory Downloads.fromJson(Map<String, dynamic> json) => _$DownloadsFromJson(json);

	Map<String, dynamic> toJson() => _$DownloadsToJson(this);
}
