import 'package:dartz/dartz.dart';

import '../../../../core/error/api_failure.dart';
import '../entities/chat_entity.dart';

abstract class IChatRepository {
  Future<Either<ApiFailure, ChatEntity>> loadChat();
  Future<Either<ApiFailure, Unit>> submitChat({required ChatEntity entity});
}
