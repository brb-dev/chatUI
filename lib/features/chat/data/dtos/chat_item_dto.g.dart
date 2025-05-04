// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatItemDto _$ChatItemDtoFromJson(Map<String, dynamic> json) => _ChatItemDto(
  senderName: json['sender_name'] as String? ?? '',
  timestamp: json['timestamp'] as String? ?? '',
  senderImage: json['sender_image'] as String? ?? '',
  message: json['message'] as String? ?? '',
);

Map<String, dynamic> _$ChatItemDtoToJson(_ChatItemDto instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'timestamp': instance.timestamp,
      'sender_image': instance.senderImage,
      'message': instance.message,
    };
