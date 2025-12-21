import 'package:ekofy_mobile/gql/queries/generated/invoice_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class TransactionApiDatasource {
  final GraphQLClient client;

  TransactionApiDatasource(this.client);

  Future<List<Query$InvoicesByUserId$invoicesByUserId$items>>
  getInvoicesByUserId(String userId) async {
    final options = Options$Query$InvoicesByUserId(
      variables: Variables$Query$InvoicesByUserId(userId: userId),
      fetchPolicy: FetchPolicy.networkOnly,
    );

    final result = await client.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result.parsedData?.invoicesByUserId?.items ?? [];
  }
}
