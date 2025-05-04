part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialized() = _Initialized;
  const factory ChatEvent.loadChat() = _LoadChat;
  const factory ChatEvent.submitChat() = _SubmitChat;
}
