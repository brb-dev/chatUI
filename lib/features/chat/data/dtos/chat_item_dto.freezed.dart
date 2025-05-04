// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatItemDto {

// ignore: invalid_annotation_target
@JsonKey(name: 'sender_name', defaultValue: '') String get senderName;// ignore: invalid_annotation_target
@JsonKey(name: 'timestamp', defaultValue: '') String get timestamp;// ignore: invalid_annotation_target
@JsonKey(name: 'sender_image', defaultValue: '') String get senderImage;// ignore: invalid_annotation_target
@JsonKey(name: 'message', defaultValue: '') String get message;
/// Create a copy of ChatItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatItemDtoCopyWith<ChatItemDto> get copyWith => _$ChatItemDtoCopyWithImpl<ChatItemDto>(this as ChatItemDto, _$identity);

  /// Serializes this ChatItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatItemDto&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderName,timestamp,senderImage,message);

@override
String toString() {
  return 'ChatItemDto(senderName: $senderName, timestamp: $timestamp, senderImage: $senderImage, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatItemDtoCopyWith<$Res>  {
  factory $ChatItemDtoCopyWith(ChatItemDto value, $Res Function(ChatItemDto) _then) = _$ChatItemDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sender_name', defaultValue: '') String senderName,@JsonKey(name: 'timestamp', defaultValue: '') String timestamp,@JsonKey(name: 'sender_image', defaultValue: '') String senderImage,@JsonKey(name: 'message', defaultValue: '') String message
});




}
/// @nodoc
class _$ChatItemDtoCopyWithImpl<$Res>
    implements $ChatItemDtoCopyWith<$Res> {
  _$ChatItemDtoCopyWithImpl(this._self, this._then);

  final ChatItemDto _self;
  final $Res Function(ChatItemDto) _then;

/// Create a copy of ChatItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderName = null,Object? timestamp = null,Object? senderImage = null,Object? message = null,}) {
  return _then(_self.copyWith(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,senderImage: null == senderImage ? _self.senderImage : senderImage // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatItemDto extends ChatItemDto {
  const _ChatItemDto({@JsonKey(name: 'sender_name', defaultValue: '') required this.senderName, @JsonKey(name: 'timestamp', defaultValue: '') required this.timestamp, @JsonKey(name: 'sender_image', defaultValue: '') required this.senderImage, @JsonKey(name: 'message', defaultValue: '') required this.message}): super._();
  factory _ChatItemDto.fromJson(Map<String, dynamic> json) => _$ChatItemDtoFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'sender_name', defaultValue: '') final  String senderName;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'timestamp', defaultValue: '') final  String timestamp;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'sender_image', defaultValue: '') final  String senderImage;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'message', defaultValue: '') final  String message;

/// Create a copy of ChatItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatItemDtoCopyWith<_ChatItemDto> get copyWith => __$ChatItemDtoCopyWithImpl<_ChatItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatItemDto&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderName,timestamp,senderImage,message);

@override
String toString() {
  return 'ChatItemDto(senderName: $senderName, timestamp: $timestamp, senderImage: $senderImage, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChatItemDtoCopyWith<$Res> implements $ChatItemDtoCopyWith<$Res> {
  factory _$ChatItemDtoCopyWith(_ChatItemDto value, $Res Function(_ChatItemDto) _then) = __$ChatItemDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sender_name', defaultValue: '') String senderName,@JsonKey(name: 'timestamp', defaultValue: '') String timestamp,@JsonKey(name: 'sender_image', defaultValue: '') String senderImage,@JsonKey(name: 'message', defaultValue: '') String message
});




}
/// @nodoc
class __$ChatItemDtoCopyWithImpl<$Res>
    implements _$ChatItemDtoCopyWith<$Res> {
  __$ChatItemDtoCopyWithImpl(this._self, this._then);

  final _ChatItemDto _self;
  final $Res Function(_ChatItemDto) _then;

/// Create a copy of ChatItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderName = null,Object? timestamp = null,Object? senderImage = null,Object? message = null,}) {
  return _then(_ChatItemDto(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,senderImage: null == senderImage ? _self.senderImage : senderImage // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
