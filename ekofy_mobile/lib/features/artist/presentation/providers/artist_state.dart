import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_state.freezed.dart';

@freezed
sealed class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = ArtistInitial;
  const factory ArtistState.loading() = ArtistLoading;
  const factory ArtistState.success(
    List<Query$ArtistPackages$artistPackages$items> packages,
  ) = ArtistSuccess;
  const factory ArtistState.failure(String message) = ArtistFailure;
}
