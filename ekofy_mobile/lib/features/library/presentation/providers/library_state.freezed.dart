// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LibraryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState()';
}


}

/// @nodoc
class $LibraryStateCopyWith<$Res>  {
$LibraryStateCopyWith(LibraryState _, $Res Function(LibraryState) __);
}


/// Adds pattern-matching-related methods to [LibraryState].
extension LibraryStatePatterns on LibraryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LibraryInitial value)?  initial,TResult Function( LibraryLoading value)?  loading,TResult Function( LibrarySuccess value)?  success,TResult Function( LibraryFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LibraryInitial() when initial != null:
return initial(_that);case LibraryLoading() when loading != null:
return loading(_that);case LibrarySuccess() when success != null:
return success(_that);case LibraryFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LibraryInitial value)  initial,required TResult Function( LibraryLoading value)  loading,required TResult Function( LibrarySuccess value)  success,required TResult Function( LibraryFailure value)  failure,}){
final _that = this;
switch (_that) {
case LibraryInitial():
return initial(_that);case LibraryLoading():
return loading(_that);case LibrarySuccess():
return success(_that);case LibraryFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LibraryInitial value)?  initial,TResult? Function( LibraryLoading value)?  loading,TResult? Function( LibrarySuccess value)?  success,TResult? Function( LibraryFailure value)?  failure,}){
final _that = this;
switch (_that) {
case LibraryInitial() when initial != null:
return initial(_that);case LibraryLoading() when loading != null:
return loading(_that);case LibrarySuccess() when success != null:
return success(_that);case LibraryFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Query$ArtistInLibraryQuery$artists$items> artists)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LibraryInitial() when initial != null:
return initial();case LibraryLoading() when loading != null:
return loading();case LibrarySuccess() when success != null:
return success(_that.artists);case LibraryFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Query$ArtistInLibraryQuery$artists$items> artists)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case LibraryInitial():
return initial();case LibraryLoading():
return loading();case LibrarySuccess():
return success(_that.artists);case LibraryFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Query$ArtistInLibraryQuery$artists$items> artists)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case LibraryInitial() when initial != null:
return initial();case LibraryLoading() when loading != null:
return loading();case LibrarySuccess() when success != null:
return success(_that.artists);case LibraryFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LibraryInitial implements LibraryState {
  const LibraryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.initial()';
}


}




/// @nodoc


class LibraryLoading implements LibraryState {
  const LibraryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LibraryState.loading()';
}


}




/// @nodoc


class LibrarySuccess implements LibraryState {
  const LibrarySuccess(final  List<Query$ArtistInLibraryQuery$artists$items> artists): _artists = artists;
  

 final  List<Query$ArtistInLibraryQuery$artists$items> _artists;
 List<Query$ArtistInLibraryQuery$artists$items> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}


/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibrarySuccessCopyWith<LibrarySuccess> get copyWith => _$LibrarySuccessCopyWithImpl<LibrarySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibrarySuccess&&const DeepCollectionEquality().equals(other._artists, _artists));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_artists));

@override
String toString() {
  return 'LibraryState.success(artists: $artists)';
}


}

/// @nodoc
abstract mixin class $LibrarySuccessCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory $LibrarySuccessCopyWith(LibrarySuccess value, $Res Function(LibrarySuccess) _then) = _$LibrarySuccessCopyWithImpl;
@useResult
$Res call({
 List<Query$ArtistInLibraryQuery$artists$items> artists
});




}
/// @nodoc
class _$LibrarySuccessCopyWithImpl<$Res>
    implements $LibrarySuccessCopyWith<$Res> {
  _$LibrarySuccessCopyWithImpl(this._self, this._then);

  final LibrarySuccess _self;
  final $Res Function(LibrarySuccess) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artists = null,}) {
  return _then(LibrarySuccess(
null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<Query$ArtistInLibraryQuery$artists$items>,
  ));
}


}

/// @nodoc


class LibraryFailure implements LibraryState {
  const LibraryFailure(this.message);
  

 final  String message;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LibraryFailureCopyWith<LibraryFailure> get copyWith => _$LibraryFailureCopyWithImpl<LibraryFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LibraryFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LibraryState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $LibraryFailureCopyWith<$Res> implements $LibraryStateCopyWith<$Res> {
  factory $LibraryFailureCopyWith(LibraryFailure value, $Res Function(LibraryFailure) _then) = _$LibraryFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LibraryFailureCopyWithImpl<$Res>
    implements $LibraryFailureCopyWith<$Res> {
  _$LibraryFailureCopyWithImpl(this._self, this._then);

  final LibraryFailure _self;
  final $Res Function(LibraryFailure) _then;

/// Create a copy of LibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LibraryFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
