import 'package:flutter_bitbuckets/models/bitbucket.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bitbucket_response.g.dart';

@JsonSerializable()
class BitbucketResponse {
  int pagelen;
  List<Bitbucket>? values;
  String? next;

  BitbucketResponse({required this.pagelen, this.values, this.next});

  factory BitbucketResponse.fromJson(Map<String, dynamic> json) => _$BitbucketResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BitbucketResponseToJson(this);
}
