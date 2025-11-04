// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 String? get message; LoginSuccessResult? get result;//info: for login fail
 String? get detail;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.result, result) || other.result == result)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,result,detail);

@override
String toString() {
  return 'LoginResponse(message: $message, result: $result, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 String? message, LoginSuccessResult? result, String? detail
});


$LoginSuccessResultCopyWith<$Res>? get result;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? result = freezed,Object? detail = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as LoginSuccessResult?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginSuccessResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $LoginSuccessResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  LoginSuccessResult? result,  String? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.message,_that.result,_that.detail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  LoginSuccessResult? result,  String? detail)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.message,_that.result,_that.detail);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  LoginSuccessResult? result,  String? detail)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.message,_that.result,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse(this.message, this.result, this.detail);
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  String? message;
@override final  LoginSuccessResult? result;
//info: for login fail
@override final  String? detail;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.result, result) || other.result == result)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,result,detail);

@override
String toString() {
  return 'LoginResponse(message: $message, result: $result, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 String? message, LoginSuccessResult? result, String? detail
});


@override $LoginSuccessResultCopyWith<$Res>? get result;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? result = freezed,Object? detail = freezed,}) {
  return _then(_LoginResponse(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as LoginSuccessResult?,freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginSuccessResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $LoginSuccessResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// @nodoc
mixin _$LoginSuccessResult {

 String get accessToken; String get refreshToken; String get userId; String get listenerId; String get role; String get avatarImage;
/// Create a copy of LoginSuccessResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessResultCopyWith<LoginSuccessResult> get copyWith => _$LoginSuccessResultCopyWithImpl<LoginSuccessResult>(this as LoginSuccessResult, _$identity);

  /// Serializes this LoginSuccessResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccessResult&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listenerId, listenerId) || other.listenerId == listenerId)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarImage, avatarImage) || other.avatarImage == avatarImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,userId,listenerId,role,avatarImage);

@override
String toString() {
  return 'LoginSuccessResult(accessToken: $accessToken, refreshToken: $refreshToken, userId: $userId, listenerId: $listenerId, role: $role, avatarImage: $avatarImage)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessResultCopyWith<$Res>  {
  factory $LoginSuccessResultCopyWith(LoginSuccessResult value, $Res Function(LoginSuccessResult) _then) = _$LoginSuccessResultCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, String userId, String listenerId, String role, String avatarImage
});




}
/// @nodoc
class _$LoginSuccessResultCopyWithImpl<$Res>
    implements $LoginSuccessResultCopyWith<$Res> {
  _$LoginSuccessResultCopyWithImpl(this._self, this._then);

  final LoginSuccessResult _self;
  final $Res Function(LoginSuccessResult) _then;

/// Create a copy of LoginSuccessResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? userId = null,Object? listenerId = null,Object? role = null,Object? avatarImage = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listenerId: null == listenerId ? _self.listenerId : listenerId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarImage: null == avatarImage ? _self.avatarImage : avatarImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginSuccessResult].
extension LoginSuccessResultPatterns on LoginSuccessResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginSuccessResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginSuccessResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginSuccessResult value)  $default,){
final _that = this;
switch (_that) {
case _LoginSuccessResult():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginSuccessResult value)?  $default,){
final _that = this;
switch (_that) {
case _LoginSuccessResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  String userId,  String listenerId,  String role,  String avatarImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginSuccessResult() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.userId,_that.listenerId,_that.role,_that.avatarImage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  String userId,  String listenerId,  String role,  String avatarImage)  $default,) {final _that = this;
switch (_that) {
case _LoginSuccessResult():
return $default(_that.accessToken,_that.refreshToken,_that.userId,_that.listenerId,_that.role,_that.avatarImage);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  String userId,  String listenerId,  String role,  String avatarImage)?  $default,) {final _that = this;
switch (_that) {
case _LoginSuccessResult() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.userId,_that.listenerId,_that.role,_that.avatarImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginSuccessResult implements LoginSuccessResult {
  const _LoginSuccessResult({required this.accessToken, required this.refreshToken, required this.userId, required this.listenerId, required this.role, required this.avatarImage});
  factory _LoginSuccessResult.fromJson(Map<String, dynamic> json) => _$LoginSuccessResultFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
@override final  String userId;
@override final  String listenerId;
@override final  String role;
@override final  String avatarImage;

/// Create a copy of LoginSuccessResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginSuccessResultCopyWith<_LoginSuccessResult> get copyWith => __$LoginSuccessResultCopyWithImpl<_LoginSuccessResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginSuccessResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccessResult&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listenerId, listenerId) || other.listenerId == listenerId)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarImage, avatarImage) || other.avatarImage == avatarImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,userId,listenerId,role,avatarImage);

@override
String toString() {
  return 'LoginSuccessResult(accessToken: $accessToken, refreshToken: $refreshToken, userId: $userId, listenerId: $listenerId, role: $role, avatarImage: $avatarImage)';
}


}

/// @nodoc
abstract mixin class _$LoginSuccessResultCopyWith<$Res> implements $LoginSuccessResultCopyWith<$Res> {
  factory _$LoginSuccessResultCopyWith(_LoginSuccessResult value, $Res Function(_LoginSuccessResult) _then) = __$LoginSuccessResultCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, String userId, String listenerId, String role, String avatarImage
});




}
/// @nodoc
class __$LoginSuccessResultCopyWithImpl<$Res>
    implements _$LoginSuccessResultCopyWith<$Res> {
  __$LoginSuccessResultCopyWithImpl(this._self, this._then);

  final _LoginSuccessResult _self;
  final $Res Function(_LoginSuccessResult) _then;

/// Create a copy of LoginSuccessResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? userId = null,Object? listenerId = null,Object? role = null,Object? avatarImage = null,}) {
  return _then(_LoginSuccessResult(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listenerId: null == listenerId ? _self.listenerId : listenerId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,avatarImage: null == avatarImage ? _self.avatarImage : avatarImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
