// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return Owner(
    displayName: json['display_name'] as String?,
    uuid: json['uuid'] as String?,
    links: json['links'] == null ? null : Links.fromJson(json['links'] as Map<String, dynamic>),
    type: json['type'] as String?,
    nickname: json['nickname'] as String?,
    accountId: json['account_id'],
  );
}

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'display_name': instance.displayName,
      'uuid': instance.uuid,
      'links': instance.links,
      'type': instance.type,
      'nickname': instance.nickname,
      'account_id': instance.accountId,
    };
