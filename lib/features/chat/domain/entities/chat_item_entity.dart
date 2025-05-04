import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item_entity.freezed.dart';

@freezed
abstract class ChatItemEntity with _$ChatItemEntity {
  const ChatItemEntity._();
  const factory ChatItemEntity({
    required String senderName,
    required String timestamp,
    required String senderImage,
    required String message,
  }) = _ChatItemEntity;

  factory ChatItemEntity.empty() => const ChatItemEntity(
    senderName: '',
    timestamp: '',
    senderImage: '',
    message: '',
  );

  String get date {
    final dateTime = DateTime.parse(timestamp.substring(0, 8));
    return '${dateTime.day} ${_monthName(dateTime.month)} ${dateTime.year}';
  }

  String get time {
    final tim = timestamp.substring(8);
    return '${tim.substring(0, 2)}:${tim.substring(2)}';
  }

  String _monthName(int month) {
    const monthNames = [
      '',
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return monthNames[month];
  }
}
