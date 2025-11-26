import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final graphqlClientProvider = Provider<GraphQLClient>((ref) {
  // authProvider is a NotifierProvider; we need the notifier to call async methods
  final authNotifier = ref.read(authProvider.notifier);

  final AuthLink authLink = AuthLink(
    getToken: () async {
      // AuthNotifier provides a getToken() async helper
      final token = await authNotifier.getToken();
      if (token == null || token.isEmpty) return null;
      return 'Bearer $token';
    },
  );

  final httpLink = HttpLink(
    '${dotenv.env['BACKEND_URL']}/graphql',
    defaultHeaders: {'content-type': 'application/json'},
  );

  final Link link = authLink.concat(httpLink);

  return GraphQLClient(link: link, cache: GraphQLCache());
});
