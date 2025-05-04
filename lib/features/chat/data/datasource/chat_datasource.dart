import 'dart:convert';
import 'package:flutter/services.dart';

import '../../domain/entities/chat_entity.dart';
import '../dtos/chat_dto.dart';

class ChatDatasource {
  Future<ChatEntity> loadChat() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = json.decode(
      await rootBundle.loadString('assets/response/chat_response.json'),
    );
    return ChatDto.fromJson(data).toDomain();
  }

  Future<bool> submitChat() async {
    await Future.delayed(const Duration(seconds: 3));

    return true;
  }
}
