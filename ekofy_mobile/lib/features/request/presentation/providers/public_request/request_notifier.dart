import 'dart:developer';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/request/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request/data/models/public_request.dart';
import 'package:ekofy_mobile/features/request/domain/repositories/request_repository.dart';
import 'package:ekofy_mobile/features/request/presentation/providers/public_request/request_state.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestNotifier extends StateNotifier<RequestState> {
  final Ref ref;
  final RequestRepository repository;

  RequestNotifier(this.ref, this.repository) : super(RequestState()) {
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
    var payload = await Helper.decodeJwtUnverified(ref);
    state = state.copyWith(isLoading: true);
    try {
      final userId = payload?['userId'] ?? payload?['sub'];
      if (userId == null) {
        log('User ID not found in token');
        state = state.copyWith(isLoading: false);
        return;
      }
      final result = await repository.fetchOwnRequests(userId);
      final items = result.map((e) => OwnRequestItem.fromQueryItem(e)).toList();
      log(items.length.toString());
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

  Future<QueryResult<Mutation$UpdatePublicRequest>> updatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    required double min,
    required double max,
    Enum$RequestStatus? status,
  }) async {
    final result = await repository.updatePublicRequest(
      id: id,
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
      status: status,
    );

    if (!result.hasException) {
      fetchPublicRequests();
    } else {
      log('Update public request error: ${result.exception.toString()}');
    }

    return result;
  }

  Future<bool> sendRequest({
    String? publicRequestId,
    required String artistId,
    String? requirements,
    required String packageId,
    required bool isDirectRequest,
  }) async {
    try {
      return await repository.sendRequest(
        publicRequestId: publicRequestId,
        artistId: artistId,
        requirements: requirements,
        packageId: packageId,
        isDirectRequest: isDirectRequest,
      );
    } catch (e) {
      log('Send request error: $e');
      return false;
    }
  }
}
