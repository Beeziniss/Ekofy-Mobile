import 'dart:developer';

import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/request.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/providers/request_hub_state.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestHubNotifier extends StateNotifier<RequestHubState> {
  final GraphQLClient client;

  RequestHubNotifier(this.client) : super(RequestHubState()) {
    fetchPublicRequests();
  }

  Future<void> fetchPublicRequests() async {
    state = state.copyWith(isLoading: true);
    final options = Options$Query$PublicRequestQuery(
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final result = await client.query(options);
    if (result.hasException) {
      log('Request hub fetch error: ${result.exception}');
      state = state.copyWith(isLoading: false);
      return;
    }

    final data = result.parsedData?.requests?.items;
    if (data != null) {
      final items = data.map((e) => RequestItem.fromQueryItem(e)).toList();
      state = state.copyWith(items: items, isLoading: false);
    } else {
      state = state.copyWith(isLoading: false);
    }
  }
}

final requestHubProvider =
    StateNotifierProvider<RequestHubNotifier, RequestHubState>((ref) {
      final client = ref.watch(graphqlClientProvider);
      return RequestHubNotifier(client);
    });
