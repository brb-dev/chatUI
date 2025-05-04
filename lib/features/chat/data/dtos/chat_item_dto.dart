import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/chat_item_entity.dart';

part 'chat_item_dto.freezed.dart';
part 'chat_item_dto.g.dart';

@freezed
abstract class ChatItemDto with _$ChatItemDto {
  const ChatItemDto._();

  const factory ChatItemDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'sender_name', defaultValue: '') required String senderName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'timestamp', defaultValue: '') required String timestamp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'sender_image', defaultValue: '')
    required String senderImage,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message', defaultValue: '') required String message,
  }) = _ChatItemDto;

  ChatItemEntity toDomain() {
    return ChatItemEntity(
      message: message,
      senderImage: senderImage,
      senderName: senderName,
      timestamp: timestamp,
    );
  }

  factory ChatItemDto.fromDomain(ChatItemEntity chat) {
    return ChatItemDto(
      message: chat.message,
      senderImage: chat.senderImage,
      senderName: chat.senderName,
      timestamp: chat.timestamp,
    );
  }

  factory ChatItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChatItemDtoFromJson(json);
}
