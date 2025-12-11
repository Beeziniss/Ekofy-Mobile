import 'package:ekofy_mobile/gql/mutation/generated/artist_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LibraryApiDataSource {
  final GraphQLClient client;

  LibraryApiDataSource(this.client);

  Future<List<Query$ArtistInLibraryQuery$artists$items>> fetchArtistsInLibrary({
    required int offset,
    required int limit,
  }) async {
    final result = await client.query$ArtistInLibraryQuery(
      Options$Query$ArtistInLibraryQuery(fetchPolicy: FetchPolicy.networkOnly),
    );

    if (result.hasException) {
      throw result.exception!;
    }

    return result.parsedData?.artists?.items ?? [];
  }

  Future<bool> followArtist({required String targetId}) async {
    final result = await client.mutate$FollowArtist(
      Options$Mutation$FollowArtist(
        variables: Variables$Mutation$FollowArtist(targetId: targetId),
      ),
    );

    if (result.hasException) {
      throw result.exception!;
    }

    return result.parsedData?.followUser ?? false;
  }
}
