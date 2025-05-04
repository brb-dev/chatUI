// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatItemEntity {

 String get senderName; String get timestamp; String get senderImage; String get message;
/// Create a copy of ChatItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatItemEntityCopyWith<ChatItemEntity> get copyWith => _$ChatItemEntityCopyWithImpl<ChatItemEntity>(this as ChatItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatItemEntity&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,senderName,timestamp,senderImage,message);

@override
String toString() {
  return 'ChatItemEntity(senderName: $senderName, timestamp: $timestamp, senderImage: $senderImage, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatItemEntityCopyWith<$Res>  {
  factory $ChatItemEntityCopyWith(ChatItemEntity value, $Res Function(ChatItemEntity) _then) = _$ChatItemEntityCopyWithImpl;
@useResult
$Res call({
 String senderName, String timestamp, String senderImage, String message
});




}
/// @nodoc
class _$ChatItemEntityCopyWithImpl<$Res>
    implements $ChatItemEntityCopyWith<$Res> {
  _$ChatItemEntityCopyWithImpl(this._self, this._then);

  final ChatItemEntity _self;
  final $Res Function(ChatItemEntity) _then;

/// Create a copy of ChatItemEntity
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


class _ChatItemEntity extends ChatItemEntity {
  const _ChatItemEntity({required this.senderName, required this.timestamp, required this.senderImage, required this.message}): super._();
  

@override final  String senderName;
@override final  String timestamp;
@override final  String senderImage;
@override final  String message;

/// Create a copy of ChatItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatItemEntityCopyWith<_ChatItemEntity> get copyWith => __$ChatItemEntityCopyWithImpl<_ChatItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatItemEntity&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,senderName,timestamp,senderImage,message);

@override
String toString() {
  return 'ChatItemEntity(senderName: $senderName, timestamp: $timestamp, senderImage: $senderImage, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChatItemEntityCopyWith<$Res> implements $ChatItemEntityCopyWith<$Res> {
  factory _$ChatItemEntityCopyWith(_ChatItemEntity value, $Res Function(_ChatItemEntity) _then) = __$ChatItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String senderName, String timestamp, String senderImage, String message
});




}
/// @nodoc
class __$ChatItemEntityCopyWithImpl<$Res>
    implements _$ChatItemEntityCopyWith<$Res> {
  __$ChatItemEntityCopyWithImpl(this._self, this._then);

  final _ChatItemEntity _self;
  final $Res Function(_ChatItemEntity) _then;

/// Create a copy of ChatItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderName = null,Object? timestamp = null,Object? senderImage = null,Object? message = null,}) {
  return _then(_ChatItemEntity(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,senderImage: null == senderImage ? _self.senderImage : senderImage // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
