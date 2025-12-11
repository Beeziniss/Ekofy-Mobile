import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';

class ArtistApiDataSource {
  final GraphQLClient _client;

  ArtistApiDataSource(this._client);

  Future<List<Query$ArtistPackages$artistPackages$items>> fetchArtistPackages({
    required String artistId,
    int take = 20,
    int skip = 0,
  }) async {
    final result = await _client.query$ArtistPackages(
      Options$Query$ArtistPackages(
        variables: Variables$Query$ArtistPackages(
          artistId: artistId,
          take: take,
          skip: skip,
        ),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final items = result.parsedData?.artistPackages?.items;
    if (items == null) {
      return [];
    }

    // Filter out null items if any, though the schema implies they might be nullable in list but usually we want non-null
    return items
        .whereType<Query$ArtistPackages$artistPackages$items>()
        .toList();
  }
}
