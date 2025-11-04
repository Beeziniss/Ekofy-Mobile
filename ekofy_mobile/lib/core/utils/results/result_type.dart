import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@freezed
sealed class ResultType<T> with _$ResultType<T> {
  const factory ResultType.success(T data) = Success<T>;
  const factory ResultType.failure(String message, {int? statusCode}) = Failure<T>;
}
