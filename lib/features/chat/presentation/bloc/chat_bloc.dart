import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import '../../../../config.dart';
import '../../domain/entities/chat_entity.dart';
import '../../../../core/error/api_failure.dart';
import '../../domain/repositories/i_chat_repository.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository chatRepository;
  final Config config;
  ChatBloc({required this.chatRepository, required this.config})
    : super(ChatState.initial()) {
    on<ChatEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
    ChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    switch (event) {
      case _Initialized():
        add(ChatEvent.loadChat());
        break;
      case _LoadChat():
        emit(
          state.copyWith(
            isChatFetching: true,
            chatFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await chatRepository.loadChat();
        failureOrSuccess.fold(
          (failure) => emit(
            state.copyWith(
              isChatFetching: false,
              chatFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          ),
          (chatData) => emit(
            state.copyWith(
              isChatFetching: false,
              chatFailureOrSuccessOption: optionOf(failureOrSuccess),
              chatData: chatData,
            ),
          ),
        );
        break;
      case _SubmitChat():
        break;
    }
  }
}
