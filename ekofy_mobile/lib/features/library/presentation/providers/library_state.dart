import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_state.freezed.dart';

@freezed
sealed class LibraryState with _$LibraryState {
  const factory LibraryState.initial() = LibraryInitial;
  const factory LibraryState.loading() = LibraryLoading;
  const factory LibraryState.success(
    List<Query$ArtistInLibraryQuery$artists$items> artists,
  ) = LibrarySuccess;
  const factory LibraryState.failure(String message) = LibraryFailure;
}
