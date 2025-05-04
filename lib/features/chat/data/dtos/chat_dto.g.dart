// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) => _ChatDto(
  groupName: json['group_name'] as String? ?? '',
  groupImage: json['group_image'] as String? ?? '',
  items:
      (json['chats'] as List<dynamic>?)
          ?.map((e) => ChatItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ChatDtoToJson(_ChatDto instance) => <String, dynamic>{
  'group_name': instance.groupName,
  'group_image': instance.groupImage,
  'chats': instance.items,
};
