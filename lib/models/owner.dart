import 'project_links.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  String? displayName;
  String? uuid;
  Links? links;
  String? type;
  String? nickname;
  dynamic accountId;

  Owner({
    this.displayName,
    this.uuid,
    this.links,
    this.type,
    this.nickname,
    this.accountId,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
