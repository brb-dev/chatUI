import 'package:chatui/features/chat/domain/entities/chat_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
abstract class ChatEntity with _$ChatEntity {
  const ChatEntity._();
  const factory ChatEntity({
    required String groupName,
    required String groupImage,
    required List<ChatItemEntity> items,
  }) = _ChatEntity;

  factory ChatEntity.empty() => const ChatEntity(
    groupName: '',
    groupImage: '',
    items: <ChatItemEntity>[],
  );
}
