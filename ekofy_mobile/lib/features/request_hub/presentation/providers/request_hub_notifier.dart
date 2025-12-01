import 'dart:developer';
import 'package:ekofy_mobile/features/request_hub/data/models/request.dart';
import 'package:ekofy_mobile/features/request_hub/domain/repositories/public_request_repository.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/providers/request_hub_state.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestHubNotifier extends StateNotifier<RequestHubState> {
  // final GraphQLClient client;
  final RequestRepository repository;

  RequestHubNotifier(this.repository) : super(RequestHubState()) {
    fetchPublicRequests();
  }

  Future<void> fetchPublicRequests() async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await repository.fetchAllPublicRequestData();
      final items = result.map((e) => RequestItem.fromQueryItem(e)).toList();
      state = state.copyWith(items: items, isLoading: false);
    } catch (e) {
      log('Request hub fetch error: $e');
      state = state.copyWith(isLoading: false);
      return;
    }
  }

  Future<QueryResult<Mutation$CreatePublicRequest>> createRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) async {
    final result = await repository.createRequest(
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
    );

    if (!result.hasException) {
      fetchPublicRequests();
    }

    return result;
  }
}
