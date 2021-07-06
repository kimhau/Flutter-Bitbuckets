// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitbucket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BitbucketResponse _$BitbucketResponseFromJson(Map<String, dynamic> json) {
  return BitbucketResponse(
    pagelen: json['pagelen'] as int,
    values: (json['values'] as List<dynamic>?)?.map((e) => Bitbucket.fromJson(e as Map<String, dynamic>)).toList(),
    next: json['next'] as String?,
  );
}

Map<String, dynamic> _$BitbucketResponseToJson(BitbucketResponse instance) => <String, dynamic>{
      'pagelen': instance.pagelen,
      'values': instance.values,
      'next': instance.next,
    };
