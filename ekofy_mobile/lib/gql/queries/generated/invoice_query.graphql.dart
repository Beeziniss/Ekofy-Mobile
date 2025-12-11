import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$InvoicesByUserId {
  factory Variables$Query$InvoicesByUserId({required String userId}) =>
      Variables$Query$InvoicesByUserId._({r'userId': userId});

  Variables$Query$InvoicesByUserId._(this._$data);

  factory Variables$Query$InvoicesByUserId.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$InvoicesByUserId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$InvoicesByUserId<Variables$Query$InvoicesByUserId>
  get copyWith => CopyWith$Variables$Query$InvoicesByUserId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$InvoicesByUserId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Query$InvoicesByUserId<TRes> {
  factory CopyWith$Variables$Query$InvoicesByUserId(
    Variables$Query$InvoicesByUserId instance,
    TRes Function(Variables$Query$InvoicesByUserId) then,
  ) = _CopyWithImpl$Variables$Query$InvoicesByUserId;

  factory CopyWith$Variables$Query$InvoicesByUserId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$InvoicesByUserId;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$InvoicesByUserId<TRes>
    implements CopyWith$Variables$Query$InvoicesByUserId<TRes> {
  _CopyWithImpl$Variables$Query$InvoicesByUserId(this._instance, this._then);

  final Variables$Query$InvoicesByUserId _instance;

  final TRes Function(Variables$Query$InvoicesByUserId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) => _then(
    Variables$Query$InvoicesByUserId._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$InvoicesByUserId<TRes>
    implements CopyWith$Variables$Query$InvoicesByUserId<TRes> {
  _CopyWithStubImpl$Variables$Query$InvoicesByUserId(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$InvoicesByUserId {
  Query$InvoicesByUserId({
    this.invoicesByUserId,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$InvoicesByUserId.fromJson(Map<String, dynamic> json) {
    final l$invoicesByUserId = json['invoicesByUserId'];
    final l$$__typename = json['__typename'];
    return Query$InvoicesByUserId(
      invoicesByUserId: l$invoicesByUserId == null
          ? null
          : Query$InvoicesByUserId$invoicesByUserId.fromJson(
              (l$invoicesByUserId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InvoicesByUserId$invoicesByUserId? invoicesByUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invoicesByUserId = invoicesByUserId;
    _resultData['invoicesByUserId'] = l$invoicesByUserId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invoicesByUserId = invoicesByUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$invoicesByUserId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InvoicesByUserId || runtimeType != other.runtimeType) {
      return false;
    }
    final l$invoicesByUserId = invoicesByUserId;
    final lOther$invoicesByUserId = other.invoicesByUserId;
    if (l$invoicesByUserId != lOther$invoicesByUserId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InvoicesByUserId on Query$InvoicesByUserId {
  CopyWith$Query$InvoicesByUserId<Query$InvoicesByUserId> get copyWith =>
      CopyWith$Query$InvoicesByUserId(this, (i) => i);
}

abstract class CopyWith$Query$InvoicesByUserId<TRes> {
  factory CopyWith$Query$InvoicesByUserId(
    Query$InvoicesByUserId instance,
    TRes Function(Query$InvoicesByUserId) then,
  ) = _CopyWithImpl$Query$InvoicesByUserId;

  factory CopyWith$Query$InvoicesByUserId.stub(TRes res) =
      _CopyWithStubImpl$Query$InvoicesByUserId;

  TRes call({
    Query$InvoicesByUserId$invoicesByUserId? invoicesByUserId,
    String? $__typename,
  });
  CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> get invoicesByUserId;
}

class _CopyWithImpl$Query$InvoicesByUserId<TRes>
    implements CopyWith$Query$InvoicesByUserId<TRes> {
  _CopyWithImpl$Query$InvoicesByUserId(this._instance, this._then);

  final Query$InvoicesByUserId _instance;

  final TRes Function(Query$InvoicesByUserId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invoicesByUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InvoicesByUserId(
      invoicesByUserId: invoicesByUserId == _undefined
          ? _instance.invoicesByUserId
          : (invoicesByUserId as Query$InvoicesByUserId$invoicesByUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> get invoicesByUserId {
    final local$invoicesByUserId = _instance.invoicesByUserId;
    return local$invoicesByUserId == null
        ? CopyWith$Query$InvoicesByUserId$invoicesByUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InvoicesByUserId$invoicesByUserId(
            local$invoicesByUserId,
            (e) => call(invoicesByUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InvoicesByUserId<TRes>
    implements CopyWith$Query$InvoicesByUserId<TRes> {
  _CopyWithStubImpl$Query$InvoicesByUserId(this._res);

  TRes _res;

  call({
    Query$InvoicesByUserId$invoicesByUserId? invoicesByUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> get invoicesByUserId =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId.stub(_res);
}

const documentNodeQueryInvoicesByUserId = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'InvoicesByUserId'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'invoicesByUserId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'email'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'amount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'currency'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'from'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'to'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'paidAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transaction'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'paymentStatus'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'stripePaymentMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: 'oneOffSnapshot'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'packageName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$InvoicesByUserId _parserFn$Query$InvoicesByUserId(
  Map<String, dynamic> data,
) => Query$InvoicesByUserId.fromJson(data);
typedef OnQueryComplete$Query$InvoicesByUserId =
    FutureOr<void> Function(Map<String, dynamic>?, Query$InvoicesByUserId?);

class Options$Query$InvoicesByUserId
    extends graphql.QueryOptions<Query$InvoicesByUserId> {
  Options$Query$InvoicesByUserId({
    String? operationName,
    required Variables$Query$InvoicesByUserId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InvoicesByUserId? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$InvoicesByUserId? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$InvoicesByUserId(data),
               ),
         onError: onError,
         document: documentNodeQueryInvoicesByUserId,
         parserFn: _parserFn$Query$InvoicesByUserId,
       );

  final OnQueryComplete$Query$InvoicesByUserId? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$InvoicesByUserId
    extends graphql.WatchQueryOptions<Query$InvoicesByUserId> {
  WatchOptions$Query$InvoicesByUserId({
    String? operationName,
    required Variables$Query$InvoicesByUserId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InvoicesByUserId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryInvoicesByUserId,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$InvoicesByUserId,
       );
}

class FetchMoreOptions$Query$InvoicesByUserId extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$InvoicesByUserId({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$InvoicesByUserId variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryInvoicesByUserId,
       );
}

extension ClientExtension$Query$InvoicesByUserId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$InvoicesByUserId>> query$InvoicesByUserId(
    Options$Query$InvoicesByUserId options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$InvoicesByUserId> watchQuery$InvoicesByUserId(
    WatchOptions$Query$InvoicesByUserId options,
  ) => this.watchQuery(options);

  void writeQuery$InvoicesByUserId({
    required Query$InvoicesByUserId data,
    required Variables$Query$InvoicesByUserId variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryInvoicesByUserId),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$InvoicesByUserId? readQuery$InvoicesByUserId({
    required Variables$Query$InvoicesByUserId variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryInvoicesByUserId,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$InvoicesByUserId.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$InvoicesByUserId>
useQuery$InvoicesByUserId(Options$Query$InvoicesByUserId options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$InvoicesByUserId> useWatchQuery$InvoicesByUserId(
  WatchOptions$Query$InvoicesByUserId options,
) => graphql_flutter.useWatchQuery(options);

class Query$InvoicesByUserId$Widget
    extends graphql_flutter.Query<Query$InvoicesByUserId> {
  Query$InvoicesByUserId$Widget({
    widgets.Key? key,
    required Options$Query$InvoicesByUserId options,
    required graphql_flutter.QueryBuilder<Query$InvoicesByUserId> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$InvoicesByUserId$invoicesByUserId {
  Query$InvoicesByUserId$invoicesByUserId({
    required this.totalCount,
    this.items,
    this.$__typename = 'InvoicesByUserIdCollectionSegment',
  });

  factory Query$InvoicesByUserId$invoicesByUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$InvoicesByUserId$invoicesByUserId(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$InvoicesByUserId$invoicesByUserId$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$InvoicesByUserId$invoicesByUserId$items>? items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InvoicesByUserId$invoicesByUserId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InvoicesByUserId$invoicesByUserId
    on Query$InvoicesByUserId$invoicesByUserId {
  CopyWith$Query$InvoicesByUserId$invoicesByUserId<
    Query$InvoicesByUserId$invoicesByUserId
  >
  get copyWith =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId(this, (i) => i);
}

abstract class CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> {
  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId(
    Query$InvoicesByUserId$invoicesByUserId instance,
    TRes Function(Query$InvoicesByUserId$invoicesByUserId) then,
  ) = _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId;

  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId.stub(TRes res) =
      _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId;

  TRes call({
    int? totalCount,
    List<Query$InvoicesByUserId$invoicesByUserId$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$InvoicesByUserId$invoicesByUserId$items>? Function(
      Iterable<
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<
          Query$InvoicesByUserId$invoicesByUserId$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId<TRes>
    implements CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> {
  _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId(
    this._instance,
    this._then,
  );

  final Query$InvoicesByUserId$invoicesByUserId _instance;

  final TRes Function(Query$InvoicesByUserId$invoicesByUserId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InvoicesByUserId$invoicesByUserId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$InvoicesByUserId$invoicesByUserId$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$InvoicesByUserId$invoicesByUserId$items>? Function(
      Iterable<
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<
          Query$InvoicesByUserId$invoicesByUserId$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$InvoicesByUserId$invoicesByUserId$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId<TRes>
    implements CopyWith$Query$InvoicesByUserId$invoicesByUserId<TRes> {
  _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$InvoicesByUserId$invoicesByUserId$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$InvoicesByUserId$invoicesByUserId$items {
  Query$InvoicesByUserId$invoicesByUserId$items({
    required this.id,
    required this.fullName,
    required this.email,
    required this.amount,
    required this.currency,
    required this.from,
    required this.to,
    required this.paidAt,
    required this.transaction,
    this.oneOffSnapshot,
    this.$__typename = 'Invoice',
  });

  factory Query$InvoicesByUserId$invoicesByUserId$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$email = json['email'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$from = json['from'];
    final l$to = json['to'];
    final l$paidAt = json['paidAt'];
    final l$transaction = json['transaction'];
    final l$oneOffSnapshot = json['oneOffSnapshot'];
    final l$$__typename = json['__typename'];
    return Query$InvoicesByUserId$invoicesByUserId$items(
      id: (l$id as String),
      fullName: (l$fullName as String),
      email: (l$email as String),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      from: (l$from as String),
      to: (l$to as String),
      paidAt: DateTime.parse((l$paidAt as String)),
      transaction: (l$transaction as List<dynamic>)
          .map(
            (e) =>
                Query$InvoicesByUserId$invoicesByUserId$items$transaction.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      oneOffSnapshot: l$oneOffSnapshot == null
          ? null
          : Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot.fromJson(
              (l$oneOffSnapshot as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String fullName;

  final String email;

  final double amount;

  final String currency;

  final String from;

  final String to;

  final DateTime paidAt;

  final List<Query$InvoicesByUserId$invoicesByUserId$items$transaction>
  transaction;

  final Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot?
  oneOffSnapshot;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$from = from;
    _resultData['from'] = l$from;
    final l$to = to;
    _resultData['to'] = l$to;
    final l$paidAt = paidAt;
    _resultData['paidAt'] = l$paidAt.toIso8601String();
    final l$transaction = transaction;
    _resultData['transaction'] = l$transaction.map((e) => e.toJson()).toList();
    final l$oneOffSnapshot = oneOffSnapshot;
    _resultData['oneOffSnapshot'] = l$oneOffSnapshot?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$email = email;
    final l$amount = amount;
    final l$currency = currency;
    final l$from = from;
    final l$to = to;
    final l$paidAt = paidAt;
    final l$transaction = transaction;
    final l$oneOffSnapshot = oneOffSnapshot;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$email,
      l$amount,
      l$currency,
      l$from,
      l$to,
      l$paidAt,
      Object.hashAll(l$transaction.map((v) => v)),
      l$oneOffSnapshot,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InvoicesByUserId$invoicesByUserId$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) {
      return false;
    }
    final l$paidAt = paidAt;
    final lOther$paidAt = other.paidAt;
    if (l$paidAt != lOther$paidAt) {
      return false;
    }
    final l$transaction = transaction;
    final lOther$transaction = other.transaction;
    if (l$transaction.length != lOther$transaction.length) {
      return false;
    }
    for (int i = 0; i < l$transaction.length; i++) {
      final l$transaction$entry = l$transaction[i];
      final lOther$transaction$entry = lOther$transaction[i];
      if (l$transaction$entry != lOther$transaction$entry) {
        return false;
      }
    }
    final l$oneOffSnapshot = oneOffSnapshot;
    final lOther$oneOffSnapshot = other.oneOffSnapshot;
    if (l$oneOffSnapshot != lOther$oneOffSnapshot) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InvoicesByUserId$invoicesByUserId$items
    on Query$InvoicesByUserId$invoicesByUserId$items {
  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<
    Query$InvoicesByUserId$invoicesByUserId$items
  >
  get copyWith =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId$items(this, (i) => i);
}

abstract class CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<TRes> {
  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items(
    Query$InvoicesByUserId$invoicesByUserId$items instance,
    TRes Function(Query$InvoicesByUserId$invoicesByUserId$items) then,
  ) = _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items;

  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items;

  TRes call({
    String? id,
    String? fullName,
    String? email,
    double? amount,
    String? currency,
    String? from,
    String? to,
    DateTime? paidAt,
    List<Query$InvoicesByUserId$invoicesByUserId$items$transaction>?
    transaction,
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot?
    oneOffSnapshot,
    String? $__typename,
  });
  TRes transaction(
    Iterable<Query$InvoicesByUserId$invoicesByUserId$items$transaction>
    Function(
      Iterable<
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
          Query$InvoicesByUserId$invoicesByUserId$items$transaction
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<TRes>
  get oneOffSnapshot;
}

class _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items<TRes>
    implements CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<TRes> {
  _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items(
    this._instance,
    this._then,
  );

  final Query$InvoicesByUserId$invoicesByUserId$items _instance;

  final TRes Function(Query$InvoicesByUserId$invoicesByUserId$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? paidAt = _undefined,
    Object? transaction = _undefined,
    Object? oneOffSnapshot = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InvoicesByUserId$invoicesByUserId$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as String),
      from: from == _undefined || from == null
          ? _instance.from
          : (from as String),
      to: to == _undefined || to == null ? _instance.to : (to as String),
      paidAt: paidAt == _undefined || paidAt == null
          ? _instance.paidAt
          : (paidAt as DateTime),
      transaction: transaction == _undefined || transaction == null
          ? _instance.transaction
          : (transaction
                as List<
                  Query$InvoicesByUserId$invoicesByUserId$items$transaction
                >),
      oneOffSnapshot: oneOffSnapshot == _undefined
          ? _instance.oneOffSnapshot
          : (oneOffSnapshot
                as Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes transaction(
    Iterable<Query$InvoicesByUserId$invoicesByUserId$items$transaction>
    Function(
      Iterable<
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
          Query$InvoicesByUserId$invoicesByUserId$items$transaction
        >
      >,
    )
    _fn,
  ) => call(
    transaction: _fn(
      _instance.transaction.map(
        (e) =>
            CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<TRes>
  get oneOffSnapshot {
    final local$oneOffSnapshot = _instance.oneOffSnapshot;
    return local$oneOffSnapshot == null
        ? CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot.stub(
            _then(_instance),
          )
        : CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
            local$oneOffSnapshot,
            (e) => call(oneOffSnapshot: e),
          );
  }
}

class _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items<TRes>
    implements CopyWith$Query$InvoicesByUserId$invoicesByUserId$items<TRes> {
  _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items(this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? email,
    double? amount,
    String? currency,
    String? from,
    String? to,
    DateTime? paidAt,
    List<Query$InvoicesByUserId$invoicesByUserId$items$transaction>?
    transaction,
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot?
    oneOffSnapshot,
    String? $__typename,
  }) => _res;

  transaction(_fn) => _res;

  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<TRes>
  get oneOffSnapshot =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot.stub(
        _res,
      );
}

class Query$InvoicesByUserId$invoicesByUserId$items$transaction {
  Query$InvoicesByUserId$invoicesByUserId$items$transaction({
    required this.paymentStatus,
    required this.stripePaymentMethod,
    this.$__typename = 'PaymentTransaction',
  });

  factory Query$InvoicesByUserId$invoicesByUserId$items$transaction.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentStatus = json['paymentStatus'];
    final l$stripePaymentMethod = json['stripePaymentMethod'];
    final l$$__typename = json['__typename'];
    return Query$InvoicesByUserId$invoicesByUserId$items$transaction(
      paymentStatus: fromJson$Enum$PaymentTransactionStatus(
        (l$paymentStatus as String),
      ),
      stripePaymentMethod: (l$stripePaymentMethod as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentTransactionStatus paymentStatus;

  final List<String> stripePaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentStatus = paymentStatus;
    _resultData['paymentStatus'] = toJson$Enum$PaymentTransactionStatus(
      l$paymentStatus,
    );
    final l$stripePaymentMethod = stripePaymentMethod;
    _resultData['stripePaymentMethod'] = l$stripePaymentMethod
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentStatus = paymentStatus;
    final l$stripePaymentMethod = stripePaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentStatus,
      Object.hashAll(l$stripePaymentMethod.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InvoicesByUserId$invoicesByUserId$items$transaction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentStatus = paymentStatus;
    final lOther$paymentStatus = other.paymentStatus;
    if (l$paymentStatus != lOther$paymentStatus) {
      return false;
    }
    final l$stripePaymentMethod = stripePaymentMethod;
    final lOther$stripePaymentMethod = other.stripePaymentMethod;
    if (l$stripePaymentMethod.length != lOther$stripePaymentMethod.length) {
      return false;
    }
    for (int i = 0; i < l$stripePaymentMethod.length; i++) {
      final l$stripePaymentMethod$entry = l$stripePaymentMethod[i];
      final lOther$stripePaymentMethod$entry = lOther$stripePaymentMethod[i];
      if (l$stripePaymentMethod$entry != lOther$stripePaymentMethod$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InvoicesByUserId$invoicesByUserId$items$transaction
    on Query$InvoicesByUserId$invoicesByUserId$items$transaction {
  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
    Query$InvoicesByUserId$invoicesByUserId$items$transaction
  >
  get copyWith =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
  TRes
> {
  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction(
    Query$InvoicesByUserId$invoicesByUserId$items$transaction instance,
    TRes Function(Query$InvoicesByUserId$invoicesByUserId$items$transaction)
    then,
  ) = _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction;

  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction;

  TRes call({
    Enum$PaymentTransactionStatus? paymentStatus,
    List<String>? stripePaymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
  TRes
>
    implements
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
          TRes
        > {
  _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction(
    this._instance,
    this._then,
  );

  final Query$InvoicesByUserId$invoicesByUserId$items$transaction _instance;

  final TRes Function(Query$InvoicesByUserId$invoicesByUserId$items$transaction)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentStatus = _undefined,
    Object? stripePaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InvoicesByUserId$invoicesByUserId$items$transaction(
      paymentStatus: paymentStatus == _undefined || paymentStatus == null
          ? _instance.paymentStatus
          : (paymentStatus as Enum$PaymentTransactionStatus),
      stripePaymentMethod:
          stripePaymentMethod == _undefined || stripePaymentMethod == null
          ? _instance.stripePaymentMethod
          : (stripePaymentMethod as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
  TRes
>
    implements
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$transaction<
          TRes
        > {
  _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$transaction(
    this._res,
  );

  TRes _res;

  call({
    Enum$PaymentTransactionStatus? paymentStatus,
    List<String>? stripePaymentMethod,
    String? $__typename,
  }) => _res;
}

class Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot {
  Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot({
    required this.packageName,
    this.$__typename = 'OneOffSnapshot',
  });

  factory Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$packageName = json['packageName'];
    final l$$__typename = json['__typename'];
    return Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
      packageName: (l$packageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String packageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$packageName = packageName;
    _resultData['packageName'] = l$packageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$packageName = packageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$packageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$packageName = packageName;
    final lOther$packageName = other.packageName;
    if (l$packageName != lOther$packageName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot
    on Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot {
  CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot
  >
  get copyWith =>
      CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
  TRes
> {
  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot instance,
    TRes Function(Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot)
    then,
  ) = _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot;

  factory CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot;

  TRes call({String? packageName, String? $__typename});
}

class _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
  TRes
>
    implements
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
          TRes
        > {
  _CopyWithImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
    this._instance,
    this._then,
  );

  final Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot _instance;

  final TRes Function(
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
      packageName: packageName == _undefined || packageName == null
          ? _instance.packageName
          : (packageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
  TRes
>
    implements
        CopyWith$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot<
          TRes
        > {
  _CopyWithStubImpl$Query$InvoicesByUserId$invoicesByUserId$items$oneOffSnapshot(
    this._res,
  );

  TRes _res;

  call({String? packageName, String? $__typename}) => _res;
}
