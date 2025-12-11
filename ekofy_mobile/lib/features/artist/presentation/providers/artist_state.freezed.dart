// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArtistState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState()';
}


}

/// @nodoc
class $ArtistStateCopyWith<$Res>  {
$ArtistStateCopyWith(ArtistState _, $Res Function(ArtistState) __);
}


/// Adds pattern-matching-related methods to [ArtistState].
extension ArtistStatePatterns on ArtistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ArtistInitial value)?  initial,TResult Function( ArtistLoading value)?  loading,TResult Function( ArtistSuccess value)?  success,TResult Function( ArtistFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ArtistInitial() when initial != null:
return initial(_that);case ArtistLoading() when loading != null:
return loading(_that);case ArtistSuccess() when success != null:
return success(_that);case ArtistFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ArtistInitial value)  initial,required TResult Function( ArtistLoading value)  loading,required TResult Function( ArtistSuccess value)  success,required TResult Function( ArtistFailure value)  failure,}){
final _that = this;
switch (_that) {
case ArtistInitial():
return initial(_that);case ArtistLoading():
return loading(_that);case ArtistSuccess():
return success(_that);case ArtistFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ArtistInitial value)?  initial,TResult? Function( ArtistLoading value)?  loading,TResult? Function( ArtistSuccess value)?  success,TResult? Function( ArtistFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ArtistInitial() when initial != null:
return initial(_that);case ArtistLoading() when loading != null:
return loading(_that);case ArtistSuccess() when success != null:
return success(_that);case ArtistFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Query$ArtistPackages$artistPackages$items> packages,  Query$ArtistDetail$artists$items? artist)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ArtistInitial() when initial != null:
return initial();case ArtistLoading() when loading != null:
return loading();case ArtistSuccess() when success != null:
return success(_that.packages,_that.artist);case ArtistFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Query$ArtistPackages$artistPackages$items> packages,  Query$ArtistDetail$artists$items? artist)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case ArtistInitial():
return initial();case ArtistLoading():
return loading();case ArtistSuccess():
return success(_that.packages,_that.artist);case ArtistFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Query$ArtistPackages$artistPackages$items> packages,  Query$ArtistDetail$artists$items? artist)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case ArtistInitial() when initial != null:
return initial();case ArtistLoading() when loading != null:
return loading();case ArtistSuccess() when success != null:
return success(_that.packages,_that.artist);case ArtistFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ArtistInitial implements ArtistState {
  const ArtistInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState.initial()';
}


}




/// @nodoc


class ArtistLoading implements ArtistState {
  const ArtistLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistState.loading()';
}


}




/// @nodoc


class ArtistSuccess implements ArtistState {
  const ArtistSuccess({required final  List<Query$ArtistPackages$artistPackages$items> packages, this.artist}): _packages = packages;
  

 final  List<Query$ArtistPackages$artistPackages$items> _packages;
 List<Query$ArtistPackages$artistPackages$items> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}

 final  Query$ArtistDetail$artists$items? artist;

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistSuccessCopyWith<ArtistSuccess> get copyWith => _$ArtistSuccessCopyWithImpl<ArtistSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistSuccess&&const DeepCollectionEquality().equals(other._packages, _packages)&&(identical(other.artist, artist) || other.artist == artist));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_packages),artist);

@override
String toString() {
  return 'ArtistState.success(packages: $packages, artist: $artist)';
}


}

/// @nodoc
abstract mixin class $ArtistSuccessCopyWith<$Res> implements $ArtistStateCopyWith<$Res> {
  factory $ArtistSuccessCopyWith(ArtistSuccess value, $Res Function(ArtistSuccess) _then) = _$ArtistSuccessCopyWithImpl;
@useResult
$Res call({
 List<Query$ArtistPackages$artistPackages$items> packages, Query$ArtistDetail$artists$items? artist
});




}
/// @nodoc
class _$ArtistSuccessCopyWithImpl<$Res>
    implements $ArtistSuccessCopyWith<$Res> {
  _$ArtistSuccessCopyWithImpl(this._self, this._then);

  final ArtistSuccess _self;
  final $Res Function(ArtistSuccess) _then;

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? packages = null,Object? artist = freezed,}) {
  return _then(ArtistSuccess(
packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<Query$ArtistPackages$artistPackages$items>,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as Query$ArtistDetail$artists$items?,
  ));
}


}

/// @nodoc


class ArtistFailure implements ArtistState {
  const ArtistFailure(this.message);
  

 final  String message;

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistFailureCopyWith<ArtistFailure> get copyWith => _$ArtistFailureCopyWithImpl<ArtistFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ArtistState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ArtistFailureCopyWith<$Res> implements $ArtistStateCopyWith<$Res> {
  factory $ArtistFailureCopyWith(ArtistFailure value, $Res Function(ArtistFailure) _then) = _$ArtistFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ArtistFailureCopyWithImpl<$Res>
    implements $ArtistFailureCopyWith<$Res> {
  _$ArtistFailureCopyWithImpl(this._self, this._then);

  final ArtistFailure _self;
  final $Res Function(ArtistFailure) _then;

/// Create a copy of ArtistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ArtistFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
