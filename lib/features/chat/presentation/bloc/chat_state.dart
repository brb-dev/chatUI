part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const ChatState._();
  const factory ChatState({
    required bool isChatFetching,
    required bool isChatSubmitted,
    required ChatEntity chatData,
    required Option<Either<ApiFailure, dynamic>> chatFailureOrSuccessOption,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
    isChatFetching: false,
    isChatSubmitted: false,
    chatData: ChatEntity.empty(),
    chatFailureOrSuccessOption: none(),
  );

  Set<String> get senders => chatData.items.map((e) => e.senderName).toSet();
}
