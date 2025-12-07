import 'package:ekofy_mobile/gql/queries/generated/notification_query.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// Provider to hold the query options for notifications
final notificationQueryOptionsProvider = Provider.family<QueryOptions, String>((
  ref,
  userId,
) {
  return QueryOptions(
    document: documentNodeQuerynotificationsForUserQuery,
    variables: Variables$Query$notificationsForUserQuery(
      userId: userId,
    ).toJson(),
    fetchPolicy: FetchPolicy.networkOnly,
  );
});
