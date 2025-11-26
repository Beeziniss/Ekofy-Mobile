// import 'package:ekofy_mobile/features/request_hub/presentation/providers/request_hub_state.dart';
// import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/legacy.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

// class RequestHubNotifier extends StateNotifier<RequestHubState> {
//   final GraphQLClient client;
//   final Ref ref;

//   RequestHubNotifier(this.client, this.ref) : super(RequestHubState()){
//     fetchPublicRequests();
//   }

//   Future<void> fetchPublicRequests() async{
//     //state = state .copyWith(isLoading: true);
//     final options = Options$Query$PublicRequestQuery();
//     final result = await client.query(options);
//     if(result.hasException){
//       log('Request hub fetch error: ${result.exception}');
//       state = state.copyWith(isLoading : false);
//       return;
//     }
//   }

// }
