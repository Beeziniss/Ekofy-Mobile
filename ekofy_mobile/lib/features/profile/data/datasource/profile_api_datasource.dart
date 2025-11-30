import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/profile/data/models/profile_model.dart';
import 'package:ekofy_mobile/gql/queries/generated/profile_query.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ProfileApiDatasource {
  final GraphQLClient client;
  final Ref ref;

  ProfileApiDatasource(this.client, this.ref);

  Future<ProfileModel?> fetchProfile() async {
    final payload = await Helper.decodeJwtUnverified(ref);
    final userId = payload?['userId'];
    if (userId == null) return null;

    final options = Options$Query$listenersProfileQuery(
      variables: Variables$Query$listenersProfileQuery(userId: userId),
    );

    final result = await client.query(options);
    if (result.hasException) throw result.exception!;

    final data = result.parsedData?.listeners?.items?.first;
    if (data == null) return null;

    return ProfileModel.fromGraphql(data, userId: userId);
  }

  Future<void> updateProfile({
    required ProfileModel original,
    required ProfileModel edited,
  }) async {
    final input = <String, dynamic>{};

    if (original.displayName != edited.displayName) {
      input['displayName'] = edited.displayName;
    }
    if (original.phoneNumber != edited.phoneNumber) {
      input['phoneNumber'] = edited.phoneNumber;
    }
    if (original.birthDate != edited.birthDate) {
      input['birthDate'] = edited.birthDate?.toUtc().toIso8601String();
    }
    if (original.gender != edited.gender) {
      input['gender'] = edited.gender?.name;
    }

    if (input.isEmpty) return;

    final mutation = gql("""
      mutation UpdateListenerProfile(\$input: UpdateListenerRequestInput!) {
        updateListenerProfile(updateListenerRequest: \$input)
      }
    """);

    final result = await client.mutate(
      MutationOptions(document: mutation, variables: {'input': input}),
    );

    if (result.hasException) {
      throw result.exception!;
    }
  }
  
}
