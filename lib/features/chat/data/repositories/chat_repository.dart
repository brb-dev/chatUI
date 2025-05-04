import 'package:dartz/dartz.dart';

import '../../../../config.dart';
import '../../../../core/error/api_failure.dart';
import '../../../../core/error/failure_handler.dart';
import '../../domain/entities/chat_entity.dart';
import '../../domain/repositories/i_chat_repository.dart';
import '../datasource/chat_datasource.dart';

class ChatRepository implements IChatRepository {
  final Config config;
  final ChatDatasource datasource;

  ChatRepository({required this.config, required this.datasource});
  @override
  Future<Either<ApiFailure, ChatEntity>> loadChat() async {
    try {
      final chatData = await datasource.loadChat();

      return Right(chatData);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> submitChat({required ChatEntity entity}) {
    // TODO: implement submitChat
    throw UnimplementedError();
  }
}
