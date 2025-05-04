// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// @nodoc


class _Initialized implements ChatEvent {
  const _Initialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.initialized()';
}


}




/// @nodoc


class _LoadChat implements ChatEvent {
  const _LoadChat();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadChat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.loadChat()';
}


}




/// @nodoc


class _SubmitChat implements ChatEvent {
  const _SubmitChat();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitChat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.submitChat()';
}


}




/// @nodoc
mixin _$ChatState {

 bool get isChatFetching; bool get isChatSubmitted; ChatEntity get chatData; Option<Either<ApiFailure, dynamic>> get chatFailureOrSuccessOption;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatStateCopyWith<ChatState> get copyWith => _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState&&(identical(other.isChatFetching, isChatFetching) || other.isChatFetching == isChatFetching)&&(identical(other.isChatSubmitted, isChatSubmitted) || other.isChatSubmitted == isChatSubmitted)&&(identical(other.chatData, chatData) || other.chatData == chatData)&&(identical(other.chatFailureOrSuccessOption, chatFailureOrSuccessOption) || other.chatFailureOrSuccessOption == chatFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isChatFetching,isChatSubmitted,chatData,chatFailureOrSuccessOption);

@override
String toString() {
  return 'ChatState(isChatFetching: $isChatFetching, isChatSubmitted: $isChatSubmitted, chatData: $chatData, chatFailureOrSuccessOption: $chatFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res>  {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) = _$ChatStateCopyWithImpl;
@useResult
$Res call({
 bool isChatFetching, bool isChatSubmitted, ChatEntity chatData, Option<Either<ApiFailure, dynamic>> chatFailureOrSuccessOption
});


$ChatEntityCopyWith<$Res> get chatData;

}
/// @nodoc
class _$ChatStateCopyWithImpl<$Res>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isChatFetching = null,Object? isChatSubmitted = null,Object? chatData = null,Object? chatFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isChatFetching: null == isChatFetching ? _self.isChatFetching : isChatFetching // ignore: cast_nullable_to_non_nullable
as bool,isChatSubmitted: null == isChatSubmitted ? _self.isChatSubmitted : isChatSubmitted // ignore: cast_nullable_to_non_nullable
as bool,chatData: null == chatData ? _self.chatData : chatData // ignore: cast_nullable_to_non_nullable
as ChatEntity,chatFailureOrSuccessOption: null == chatFailureOrSuccessOption ? _self.chatFailureOrSuccessOption : chatFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatEntityCopyWith<$Res> get chatData {
  
  return $ChatEntityCopyWith<$Res>(_self.chatData, (value) {
    return _then(_self.copyWith(chatData: value));
  });
}
}


/// @nodoc


class _ChatState extends ChatState {
  const _ChatState({required this.isChatFetching, required this.isChatSubmitted, required this.chatData, required this.chatFailureOrSuccessOption}): super._();
  

@override final  bool isChatFetching;
@override final  bool isChatSubmitted;
@override final  ChatEntity chatData;
@override final  Option<Either<ApiFailure, dynamic>> chatFailureOrSuccessOption;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatStateCopyWith<_ChatState> get copyWith => __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatState&&(identical(other.isChatFetching, isChatFetching) || other.isChatFetching == isChatFetching)&&(identical(other.isChatSubmitted, isChatSubmitted) || other.isChatSubmitted == isChatSubmitted)&&(identical(other.chatData, chatData) || other.chatData == chatData)&&(identical(other.chatFailureOrSuccessOption, chatFailureOrSuccessOption) || other.chatFailureOrSuccessOption == chatFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isChatFetching,isChatSubmitted,chatData,chatFailureOrSuccessOption);

@override
String toString() {
  return 'ChatState(isChatFetching: $isChatFetching, isChatSubmitted: $isChatSubmitted, chatData: $chatData, chatFailureOrSuccessOption: $chatFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(_ChatState value, $Res Function(_ChatState) _then) = __$ChatStateCopyWithImpl;
@override @useResult
$Res call({
 bool isChatFetching, bool isChatSubmitted, ChatEntity chatData, Option<Either<ApiFailure, dynamic>> chatFailureOrSuccessOption
});


@override $ChatEntityCopyWith<$Res> get chatData;

}
/// @nodoc
class __$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isChatFetching = null,Object? isChatSubmitted = null,Object? chatData = null,Object? chatFailureOrSuccessOption = null,}) {
  return _then(_ChatState(
isChatFetching: null == isChatFetching ? _self.isChatFetching : isChatFetching // ignore: cast_nullable_to_non_nullable
as bool,isChatSubmitted: null == isChatSubmitted ? _self.isChatSubmitted : isChatSubmitted // ignore: cast_nullable_to_non_nullable
as bool,chatData: null == chatData ? _self.chatData : chatData // ignore: cast_nullable_to_non_nullable
as ChatEntity,chatFailureOrSuccessOption: null == chatFailureOrSuccessOption ? _self.chatFailureOrSuccessOption : chatFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatEntityCopyWith<$Res> get chatData {
  
  return $ChatEntityCopyWith<$Res>(_self.chatData, (value) {
    return _then(_self.copyWith(chatData: value));
  });
}
}

// dart format on
