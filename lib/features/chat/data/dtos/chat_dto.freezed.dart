// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatDto {

// ignore: invalid_annotation_target
@JsonKey(name: 'group_name', defaultValue: '') String get groupName;// ignore: invalid_annotation_target
@JsonKey(name: 'group_image', defaultValue: '') String get groupImage;// ignore: invalid_annotation_target
@JsonKey(name: 'chats', defaultValue: <ChatItemDto>[]) List<ChatItemDto> get items;
/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDtoCopyWith<ChatDto> get copyWith => _$ChatDtoCopyWithImpl<ChatDto>(this as ChatDto, _$identity);

  /// Serializes this ChatDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDto&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupImage, groupImage) || other.groupImage == groupImage)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupName,groupImage,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ChatDto(groupName: $groupName, groupImage: $groupImage, items: $items)';
}


}

/// @nodoc
abstract mixin class $ChatDtoCopyWith<$Res>  {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) _then) = _$ChatDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group_name', defaultValue: '') String groupName,@JsonKey(name: 'group_image', defaultValue: '') String groupImage,@JsonKey(name: 'chats', defaultValue: <ChatItemDto>[]) List<ChatItemDto> items
});




}
/// @nodoc
class _$ChatDtoCopyWithImpl<$Res>
    implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._self, this._then);

  final ChatDto _self;
  final $Res Function(ChatDto) _then;

/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupName = null,Object? groupImage = null,Object? items = null,}) {
  return _then(_self.copyWith(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupImage: null == groupImage ? _self.groupImage : groupImage // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ChatItemDto>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ChatDto extends ChatDto {
  const _ChatDto({@JsonKey(name: 'group_name', defaultValue: '') required this.groupName, @JsonKey(name: 'group_image', defaultValue: '') required this.groupImage, @JsonKey(name: 'chats', defaultValue: <ChatItemDto>[]) required final  List<ChatItemDto> items}): _items = items,super._();
  factory _ChatDto.fromJson(Map<String, dynamic> json) => _$ChatDtoFromJson(json);

// ignore: invalid_annotation_target
@override@JsonKey(name: 'group_name', defaultValue: '') final  String groupName;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'group_image', defaultValue: '') final  String groupImage;
// ignore: invalid_annotation_target
 final  List<ChatItemDto> _items;
// ignore: invalid_annotation_target
@override@JsonKey(name: 'chats', defaultValue: <ChatItemDto>[]) List<ChatItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDtoCopyWith<_ChatDto> get copyWith => __$ChatDtoCopyWithImpl<_ChatDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatDto&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupImage, groupImage) || other.groupImage == groupImage)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupName,groupImage,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ChatDto(groupName: $groupName, groupImage: $groupImage, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ChatDtoCopyWith<$Res> implements $ChatDtoCopyWith<$Res> {
  factory _$ChatDtoCopyWith(_ChatDto value, $Res Function(_ChatDto) _then) = __$ChatDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group_name', defaultValue: '') String groupName,@JsonKey(name: 'group_image', defaultValue: '') String groupImage,@JsonKey(name: 'chats', defaultValue: <ChatItemDto>[]) List<ChatItemDto> items
});




}
/// @nodoc
class __$ChatDtoCopyWithImpl<$Res>
    implements _$ChatDtoCopyWith<$Res> {
  __$ChatDtoCopyWithImpl(this._self, this._then);

  final _ChatDto _self;
  final $Res Function(_ChatDto) _then;

/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupName = null,Object? groupImage = null,Object? items = null,}) {
  return _then(_ChatDto(
groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupImage: null == groupImage ? _self.groupImage : groupImage // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChatItemDto>,
  ));
}


}

// dart format on
