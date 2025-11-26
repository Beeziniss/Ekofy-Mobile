import 'dart:developer';
import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:intl/intl.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'profile_state.dart';
import 'package:ekofy_mobile/gql/queries/generated/profile_query.graphql.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  final GraphQLClient client;
  final Ref ref;

  ProfileNotifier(this.ref, this.client) : super(const ProfileState()) {
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    state = state.copyWith(isLoading: true);
    final payload = await Helper.decodeJwtUnverified(ref);
    final options = Options$Query$listenersProfileQuery(
      variables: Variables$Query$listenersProfileQuery(
        userId: payload!['userId'],
      ),
    );

    final result = await client.query(options);
    if (result.hasException) {
      log('Profile fetch error: ${result.exception}');
      state = state.copyWith(isLoading: false);
      return;
    }

    final data = result.parsedData?.listeners?.items?.first;
    if (data != null) {
      final user = data.user.firstOrNull;
      final formattedBirth = _formatDate(user?.birthDate);

      state = state.copyWith(
        profile: data,
        isLoading: false,
        displayName: data.displayName,
        email: user?.email ?? '',
        phone: user?.phoneNumber ?? '',
        birthDate: formattedBirth,
        gender: user?.gender,
      );
    } else {
      state = state.copyWith(isLoading: false);
    }
  }

  void toggleEditing() {
    state = state.copyWith(isEditing: !state.isEditing);
  }

  void updateField({
    String? name,
    String? email,
    String? phone,
    String? birth,
    Enum$UserGender? gender,
  }) {
    state = state.copyWith(
      displayName: name ?? state.displayName,
      email: email ?? state.email,
      phone: phone ?? state.phone,
      birthDate: birth ?? state.birthDate,
      gender: gender ?? state.gender,
    );
  }

  Future<void> submitUpdate() async {
    final inputDate = state.birthDate;
    DateTime? parsedDate;
    try {
      parsedDate = DateFormat('dd-MM-yyyy').parseStrict(inputDate).toUtc();
    } catch (e) {
      log('Invalid date: $e');
    }
    final formattedDate = parsedDate != null
        ? DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(parsedDate)
        : null;

    final mutation =
        '''
      mutation {
        updateListenerProfile(updateListenerRequest: {
          displayName: "${state.displayName.replaceAll('"', '\\"')}"
          phoneNumber: ${state.phone == '' ? null : state.phone.replaceAll('"', '\\"')}
          birthDate: "$formattedDate"
          gender: ${state.gender?.toString().split('.').last ?? 'null'}
        })
      }
    ''';

    final result = await client.query(QueryOptions(document: gql(mutation)));

    if (result.hasException) {
      log('Update error: ${result.exception}');
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return DateFormat('dd-MM-yyyy').format(date);
  }
}

final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>((
  ref,
) {
  final client = ref.watch(graphqlClientProvider);
  return ProfileNotifier(ref, client);
});
