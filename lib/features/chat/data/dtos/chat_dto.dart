import 'package:chatui/features/chat/data/dtos/chat_item_dto.dart';
import 'package:chatui/features/chat/domain/entities/chat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

@freezed
abstract class ChatDto with _$ChatDto {
  const ChatDto._();

  const factory ChatDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'group_name', defaultValue: '') required String groupName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'group_image', defaultValue: '') required String groupImage,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'chats', defaultValue: <ChatItemDto>[])
    required List<ChatItemDto> items,
  }) = _ChatDto;

  ChatEntity toDomain() {
    return ChatEntity(
      groupImage: groupImage,
      groupName: groupName,
      items: items.map((e) => e.toDomain()).toList(),
    );
  }

  factory ChatDto.fromDomain(ChatEntity chat) {
    return ChatDto(
      groupImage: chat.groupImage,
      groupName: chat.groupName,
      items: chat.items.map((e) => ChatItemDto.fromDomain(e)).toList(),
    );
  }

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);
}
