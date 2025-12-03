import 'dart:developer';
import 'package:ekofy_mobile/features/request_hub/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/public_request.dart';
import 'package:ekofy_mobile/features/request_hub/domain/repositories/request_repository.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/providers/public_request/request_state.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestNotifier extends StateNotifier<RequestState> {
  final RequestRepository repository;

  RequestNotifier(this.repository) : super(RequestState()) {
    fetchPublicRequests();
    fetchOwnRequests();
  }

  Future<void> fetchPublicRequests() async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await repository.fetchAllPublicRequestData();
      final items = result
          .map((e) => PublicRequestItem.fromQueryItem(e))
          .toList();
      state = state.copyWith(publicRequestItems: items, isLoading: false);
    } catch (e) {
      log('Request hub fetch error: $e');
      state = state.copyWith(isLoading: false);
      return;
    }
  }

  Future<void> fetchOwnRequests() async {
    state = state.copyWith(isLoading: true);
    try {
      final result = await repository.fetchOwnRequests();
      final items = result.map((e) => OwnRequestItem.fromQueryItem(e)).toList();
      state = state.copyWith(ownRequestItems: items, isLoading: false);
    } catch (e) {
      log('Own requests fetch error: $e');
      state = state.copyWith(isLoading: false);
      return;
    }
  }

  Future<QueryResult<Mutation$CreatePublicRequest>> createPublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) async {
    final result = await repository.createPublicRequest(
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
