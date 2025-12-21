import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$PackageOrdersList {
  factory Variables$Query$PackageOrdersList({required String clientId}) =>
      Variables$Query$PackageOrdersList._({r'clientId': clientId});

  Variables$Query$PackageOrdersList._(this._$data);

  factory Variables$Query$PackageOrdersList.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$clientId = data['clientId'];
    result$data['clientId'] = (l$clientId as String);
    return Variables$Query$PackageOrdersList._(result$data);
  }

  Map<String, dynamic> _$data;

  String get clientId => (_$data['clientId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$clientId = clientId;
    result$data['clientId'] = l$clientId;
    return result$data;
  }

  CopyWith$Variables$Query$PackageOrdersList<Variables$Query$PackageOrdersList>
  get copyWith => CopyWith$Variables$Query$PackageOrdersList(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PackageOrdersList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientId = clientId;
    return Object.hashAll([l$clientId]);
  }
}

abstract class CopyWith$Variables$Query$PackageOrdersList<TRes> {
  factory CopyWith$Variables$Query$PackageOrdersList(
    Variables$Query$PackageOrdersList instance,
    TRes Function(Variables$Query$PackageOrdersList) then,
  ) = _CopyWithImpl$Variables$Query$PackageOrdersList;

  factory CopyWith$Variables$Query$PackageOrdersList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PackageOrdersList;

  TRes call({String? clientId});
}

class _CopyWithImpl$Variables$Query$PackageOrdersList<TRes>
    implements CopyWith$Variables$Query$PackageOrdersList<TRes> {
  _CopyWithImpl$Variables$Query$PackageOrdersList(this._instance, this._then);

  final Variables$Query$PackageOrdersList _instance;

  final TRes Function(Variables$Query$PackageOrdersList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? clientId = _undefined}) => _then(
    Variables$Query$PackageOrdersList._({
      ..._instance._$data,
      if (clientId != _undefined && clientId != null)
        'clientId': (clientId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PackageOrdersList<TRes>
    implements CopyWith$Variables$Query$PackageOrdersList<TRes> {
  _CopyWithStubImpl$Variables$Query$PackageOrdersList(this._res);

  TRes _res;

  call({String? clientId}) => _res;
}

class Query$PackageOrdersList {
  Query$PackageOrdersList({
    this.packageOrders,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$PackageOrdersList.fromJson(Map<String, dynamic> json) {
    final l$packageOrders = json['packageOrders'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrdersList(
      packageOrders: l$packageOrders == null
          ? null
          : Query$PackageOrdersList$packageOrders.fromJson(
              (l$packageOrders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PackageOrdersList$packageOrders? packageOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$packageOrders = packageOrders;
    _resultData['packageOrders'] = l$packageOrders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$packageOrders = packageOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$packageOrders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrdersList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$packageOrders = packageOrders;
    final lOther$packageOrders = other.packageOrders;
    if (l$packageOrders != lOther$packageOrders) {
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

extension UtilityExtension$Query$PackageOrdersList on Query$PackageOrdersList {
  CopyWith$Query$PackageOrdersList<Query$PackageOrdersList> get copyWith =>
      CopyWith$Query$PackageOrdersList(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrdersList<TRes> {
  factory CopyWith$Query$PackageOrdersList(
    Query$PackageOrdersList instance,
    TRes Function(Query$PackageOrdersList) then,
  ) = _CopyWithImpl$Query$PackageOrdersList;

  factory CopyWith$Query$PackageOrdersList.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrdersList;

  TRes call({
    Query$PackageOrdersList$packageOrders? packageOrders,
    String? $__typename,
  });
  CopyWith$Query$PackageOrdersList$packageOrders<TRes> get packageOrders;
}

class _CopyWithImpl$Query$PackageOrdersList<TRes>
    implements CopyWith$Query$PackageOrdersList<TRes> {
  _CopyWithImpl$Query$PackageOrdersList(this._instance, this._then);

  final Query$PackageOrdersList _instance;

  final TRes Function(Query$PackageOrdersList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageOrders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrdersList(
      packageOrders: packageOrders == _undefined
          ? _instance.packageOrders
          : (packageOrders as Query$PackageOrdersList$packageOrders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PackageOrdersList$packageOrders<TRes> get packageOrders {
    final local$packageOrders = _instance.packageOrders;
    return local$packageOrders == null
        ? CopyWith$Query$PackageOrdersList$packageOrders.stub(_then(_instance))
        : CopyWith$Query$PackageOrdersList$packageOrders(
            local$packageOrders,
            (e) => call(packageOrders: e),
          );
  }
}

class _CopyWithStubImpl$Query$PackageOrdersList<TRes>
    implements CopyWith$Query$PackageOrdersList<TRes> {
  _CopyWithStubImpl$Query$PackageOrdersList(this._res);

  TRes _res;

  call({
    Query$PackageOrdersList$packageOrders? packageOrders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PackageOrdersList$packageOrders<TRes> get packageOrders =>
      CopyWith$Query$PackageOrdersList$packageOrders.stub(_res);
}

const documentNodeQueryPackageOrdersList = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PackageOrdersList'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'clientId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'packageOrders'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'clientId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: VariableNode(
                              name: NameNode(value: 'clientId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'clientId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'providerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'artistPackageId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'freezedTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'client'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'displayName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'avatarImage'),
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
                        name: NameNode(value: 'provider'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'avatarImage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'stageName'),
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
Query$PackageOrdersList _parserFn$Query$PackageOrdersList(
  Map<String, dynamic> data,
) => Query$PackageOrdersList.fromJson(data);
typedef OnQueryComplete$Query$PackageOrdersList =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PackageOrdersList?);

class Options$Query$PackageOrdersList
    extends graphql.QueryOptions<Query$PackageOrdersList> {
  Options$Query$PackageOrdersList({
    String? operationName,
    required Variables$Query$PackageOrdersList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PackageOrdersList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PackageOrdersList? onComplete,
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
                 data == null ? null : _parserFn$Query$PackageOrdersList(data),
               ),
         onError: onError,
         document: documentNodeQueryPackageOrdersList,
         parserFn: _parserFn$Query$PackageOrdersList,
       );

  final OnQueryComplete$Query$PackageOrdersList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PackageOrdersList
    extends graphql.WatchQueryOptions<Query$PackageOrdersList> {
  WatchOptions$Query$PackageOrdersList({
    String? operationName,
    required Variables$Query$PackageOrdersList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PackageOrdersList? typedOptimisticResult,
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
         document: documentNodeQueryPackageOrdersList,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PackageOrdersList,
       );
}

class FetchMoreOptions$Query$PackageOrdersList
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PackageOrdersList({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PackageOrdersList variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPackageOrdersList,
       );
}

extension ClientExtension$Query$PackageOrdersList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PackageOrdersList>> query$PackageOrdersList(
    Options$Query$PackageOrdersList options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PackageOrdersList> watchQuery$PackageOrdersList(
    WatchOptions$Query$PackageOrdersList options,
  ) => this.watchQuery(options);

  void writeQuery$PackageOrdersList({
    required Query$PackageOrdersList data,
    required Variables$Query$PackageOrdersList variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPackageOrdersList,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PackageOrdersList? readQuery$PackageOrdersList({
    required Variables$Query$PackageOrdersList variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPackageOrdersList,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PackageOrdersList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PackageOrdersList>
useQuery$PackageOrdersList(Options$Query$PackageOrdersList options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PackageOrdersList>
useWatchQuery$PackageOrdersList(WatchOptions$Query$PackageOrdersList options) =>
    graphql_flutter.useWatchQuery(options);

class Query$PackageOrdersList$Widget
    extends graphql_flutter.Query<Query$PackageOrdersList> {
  Query$PackageOrdersList$Widget({
    widgets.Key? key,
    required Options$Query$PackageOrdersList options,
    required graphql_flutter.QueryBuilder<Query$PackageOrdersList> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PackageOrdersList$packageOrders {
  Query$PackageOrdersList$packageOrders({
    required this.totalCount,
    this.items,
    this.$__typename = 'PackageOrdersCollectionSegment',
  });

  factory Query$PackageOrdersList$packageOrders.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrdersList$packageOrders(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$PackageOrdersList$packageOrders$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$PackageOrdersList$packageOrders$items>? items;

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
    if (other is! Query$PackageOrdersList$packageOrders ||
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

extension UtilityExtension$Query$PackageOrdersList$packageOrders
    on Query$PackageOrdersList$packageOrders {
  CopyWith$Query$PackageOrdersList$packageOrders<
    Query$PackageOrdersList$packageOrders
  >
  get copyWith =>
      CopyWith$Query$PackageOrdersList$packageOrders(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrdersList$packageOrders<TRes> {
  factory CopyWith$Query$PackageOrdersList$packageOrders(
    Query$PackageOrdersList$packageOrders instance,
    TRes Function(Query$PackageOrdersList$packageOrders) then,
  ) = _CopyWithImpl$Query$PackageOrdersList$packageOrders;

  factory CopyWith$Query$PackageOrdersList$packageOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrdersList$packageOrders;

  TRes call({
    int? totalCount,
    List<Query$PackageOrdersList$packageOrders$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$PackageOrdersList$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items<
          Query$PackageOrdersList$packageOrders$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PackageOrdersList$packageOrders<TRes>
    implements CopyWith$Query$PackageOrdersList$packageOrders<TRes> {
  _CopyWithImpl$Query$PackageOrdersList$packageOrders(
    this._instance,
    this._then,
  );

  final Query$PackageOrdersList$packageOrders _instance;

  final TRes Function(Query$PackageOrdersList$packageOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrdersList$packageOrders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$PackageOrdersList$packageOrders$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$PackageOrdersList$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items<
          Query$PackageOrdersList$packageOrders$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$PackageOrdersList$packageOrders$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$PackageOrdersList$packageOrders<TRes>
    implements CopyWith$Query$PackageOrdersList$packageOrders<TRes> {
  _CopyWithStubImpl$Query$PackageOrdersList$packageOrders(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$PackageOrdersList$packageOrders$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$PackageOrdersList$packageOrders$items {
  Query$PackageOrdersList$packageOrders$items({
    required this.id,
    required this.status,
    required this.clientId,
    required this.providerId,
    required this.artistPackageId,
    required this.duration,
    this.startedAt,
    required this.freezedTime,
    required this.client,
    required this.provider,
    this.$__typename = 'PackageOrder',
  });

  factory Query$PackageOrdersList$packageOrders$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$clientId = json['clientId'];
    final l$providerId = json['providerId'];
    final l$artistPackageId = json['artistPackageId'];
    final l$duration = json['duration'];
    final l$startedAt = json['startedAt'];
    final l$freezedTime = json['freezedTime'];
    final l$client = json['client'];
    final l$provider = json['provider'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrdersList$packageOrders$items(
      id: (l$id as String),
      status: fromJson$Enum$PackageOrderStatus((l$status as String)),
      clientId: (l$clientId as String),
      providerId: (l$providerId as String),
      artistPackageId: (l$artistPackageId as String),
      duration: (l$duration as int),
      startedAt: l$startedAt == null
          ? null
          : DateTime.parse((l$startedAt as String)),
      freezedTime: (l$freezedTime as String),
      client: (l$client as List<dynamic>)
          .map(
            (e) => Query$PackageOrdersList$packageOrders$items$client.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      provider: (l$provider as List<dynamic>)
          .map(
            (e) =>
                Query$PackageOrdersList$packageOrders$items$provider.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$PackageOrderStatus status;

  final String clientId;

  final String providerId;

  final String artistPackageId;

  final int duration;

  final DateTime? startedAt;

  final String freezedTime;

  final List<Query$PackageOrdersList$packageOrders$items$client> client;

  final List<Query$PackageOrdersList$packageOrders$items$provider> provider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PackageOrderStatus(l$status);
    final l$clientId = clientId;
    _resultData['clientId'] = l$clientId;
    final l$providerId = providerId;
    _resultData['providerId'] = l$providerId;
    final l$artistPackageId = artistPackageId;
    _resultData['artistPackageId'] = l$artistPackageId;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toIso8601String();
    final l$freezedTime = freezedTime;
    _resultData['freezedTime'] = l$freezedTime;
    final l$client = client;
    _resultData['client'] = l$client.map((e) => e.toJson()).toList();
    final l$provider = provider;
    _resultData['provider'] = l$provider.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$clientId = clientId;
    final l$providerId = providerId;
    final l$artistPackageId = artistPackageId;
    final l$duration = duration;
    final l$startedAt = startedAt;
    final l$freezedTime = freezedTime;
    final l$client = client;
    final l$provider = provider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$clientId,
      l$providerId,
      l$artistPackageId,
      l$duration,
      l$startedAt,
      l$freezedTime,
      Object.hashAll(l$client.map((v) => v)),
      Object.hashAll(l$provider.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrdersList$packageOrders$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
      return false;
    }
    final l$providerId = providerId;
    final lOther$providerId = other.providerId;
    if (l$providerId != lOther$providerId) {
      return false;
    }
    final l$artistPackageId = artistPackageId;
    final lOther$artistPackageId = other.artistPackageId;
    if (l$artistPackageId != lOther$artistPackageId) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$freezedTime = freezedTime;
    final lOther$freezedTime = other.freezedTime;
    if (l$freezedTime != lOther$freezedTime) {
      return false;
    }
    final l$client = client;
    final lOther$client = other.client;
    if (l$client.length != lOther$client.length) {
      return false;
    }
    for (int i = 0; i < l$client.length; i++) {
      final l$client$entry = l$client[i];
      final lOther$client$entry = lOther$client[i];
      if (l$client$entry != lOther$client$entry) {
        return false;
      }
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider.length != lOther$provider.length) {
      return false;
    }
    for (int i = 0; i < l$provider.length; i++) {
      final l$provider$entry = l$provider[i];
      final lOther$provider$entry = lOther$provider[i];
      if (l$provider$entry != lOther$provider$entry) {
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

extension UtilityExtension$Query$PackageOrdersList$packageOrders$items
    on Query$PackageOrdersList$packageOrders$items {
  CopyWith$Query$PackageOrdersList$packageOrders$items<
    Query$PackageOrdersList$packageOrders$items
  >
  get copyWith =>
      CopyWith$Query$PackageOrdersList$packageOrders$items(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrdersList$packageOrders$items<TRes> {
  factory CopyWith$Query$PackageOrdersList$packageOrders$items(
    Query$PackageOrdersList$packageOrders$items instance,
    TRes Function(Query$PackageOrdersList$packageOrders$items) then,
  ) = _CopyWithImpl$Query$PackageOrdersList$packageOrders$items;

  factory CopyWith$Query$PackageOrdersList$packageOrders$items.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items;

  TRes call({
    String? id,
    Enum$PackageOrderStatus? status,
    String? clientId,
    String? providerId,
    String? artistPackageId,
    int? duration,
    DateTime? startedAt,
    String? freezedTime,
    List<Query$PackageOrdersList$packageOrders$items$client>? client,
    List<Query$PackageOrdersList$packageOrders$items$provider>? provider,
    String? $__typename,
  });
  TRes client(
    Iterable<Query$PackageOrdersList$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items$client<
          Query$PackageOrdersList$packageOrders$items$client
        >
      >,
    )
    _fn,
  );
  TRes provider(
    Iterable<Query$PackageOrdersList$packageOrders$items$provider> Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items$provider<
          Query$PackageOrdersList$packageOrders$items$provider
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PackageOrdersList$packageOrders$items<TRes>
    implements CopyWith$Query$PackageOrdersList$packageOrders$items<TRes> {
  _CopyWithImpl$Query$PackageOrdersList$packageOrders$items(
    this._instance,
    this._then,
  );

  final Query$PackageOrdersList$packageOrders$items _instance;

  final TRes Function(Query$PackageOrdersList$packageOrders$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? clientId = _undefined,
    Object? providerId = _undefined,
    Object? artistPackageId = _undefined,
    Object? duration = _undefined,
    Object? startedAt = _undefined,
    Object? freezedTime = _undefined,
    Object? client = _undefined,
    Object? provider = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrdersList$packageOrders$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PackageOrderStatus),
      clientId: clientId == _undefined || clientId == null
          ? _instance.clientId
          : (clientId as String),
      providerId: providerId == _undefined || providerId == null
          ? _instance.providerId
          : (providerId as String),
      artistPackageId: artistPackageId == _undefined || artistPackageId == null
          ? _instance.artistPackageId
          : (artistPackageId as String),
      duration: duration == _undefined || duration == null
          ? _instance.duration
          : (duration as int),
      startedAt: startedAt == _undefined
          ? _instance.startedAt
          : (startedAt as DateTime?),
      freezedTime: freezedTime == _undefined || freezedTime == null
          ? _instance.freezedTime
          : (freezedTime as String),
      client: client == _undefined || client == null
          ? _instance.client
          : (client
                as List<Query$PackageOrdersList$packageOrders$items$client>),
      provider: provider == _undefined || provider == null
          ? _instance.provider
          : (provider
                as List<Query$PackageOrdersList$packageOrders$items$provider>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes client(
    Iterable<Query$PackageOrdersList$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items$client<
          Query$PackageOrdersList$packageOrders$items$client
        >
      >,
    )
    _fn,
  ) => call(
    client: _fn(
      _instance.client.map(
        (e) => CopyWith$Query$PackageOrdersList$packageOrders$items$client(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes provider(
    Iterable<Query$PackageOrdersList$packageOrders$items$provider> Function(
      Iterable<
        CopyWith$Query$PackageOrdersList$packageOrders$items$provider<
          Query$PackageOrdersList$packageOrders$items$provider
        >
      >,
    )
    _fn,
  ) => call(
    provider: _fn(
      _instance.provider.map(
        (e) => CopyWith$Query$PackageOrdersList$packageOrders$items$provider(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items<TRes>
    implements CopyWith$Query$PackageOrdersList$packageOrders$items<TRes> {
  _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items(this._res);

  TRes _res;

  call({
    String? id,
    Enum$PackageOrderStatus? status,
    String? clientId,
    String? providerId,
    String? artistPackageId,
    int? duration,
    DateTime? startedAt,
    String? freezedTime,
    List<Query$PackageOrdersList$packageOrders$items$client>? client,
    List<Query$PackageOrdersList$packageOrders$items$provider>? provider,
    String? $__typename,
  }) => _res;

  client(_fn) => _res;

  provider(_fn) => _res;
}

class Query$PackageOrdersList$packageOrders$items$client {
  Query$PackageOrdersList$packageOrders$items$client({
    required this.displayName,
    this.avatarImage,
    this.$__typename = 'Listener',
  });

  factory Query$PackageOrdersList$packageOrders$items$client.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$displayName = json['displayName'];
    final l$avatarImage = json['avatarImage'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrdersList$packageOrders$items$client(
      displayName: (l$displayName as String),
      avatarImage: (l$avatarImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String displayName;

  final String? avatarImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$displayName = displayName;
    final l$avatarImage = avatarImage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$displayName, l$avatarImage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrdersList$packageOrders$items$client ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
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

extension UtilityExtension$Query$PackageOrdersList$packageOrders$items$client
    on Query$PackageOrdersList$packageOrders$items$client {
  CopyWith$Query$PackageOrdersList$packageOrders$items$client<
    Query$PackageOrdersList$packageOrders$items$client
  >
  get copyWith => CopyWith$Query$PackageOrdersList$packageOrders$items$client(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PackageOrdersList$packageOrders$items$client<
  TRes
> {
  factory CopyWith$Query$PackageOrdersList$packageOrders$items$client(
    Query$PackageOrdersList$packageOrders$items$client instance,
    TRes Function(Query$PackageOrdersList$packageOrders$items$client) then,
  ) = _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$client;

  factory CopyWith$Query$PackageOrdersList$packageOrders$items$client.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$client;

  TRes call({String? displayName, String? avatarImage, String? $__typename});
}

class _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$client<TRes>
    implements
        CopyWith$Query$PackageOrdersList$packageOrders$items$client<TRes> {
  _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$client(
    this._instance,
    this._then,
  );

  final Query$PackageOrdersList$packageOrders$items$client _instance;

  final TRes Function(Query$PackageOrdersList$packageOrders$items$client) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? avatarImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrdersList$packageOrders$items$client(
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$client<TRes>
    implements
        CopyWith$Query$PackageOrdersList$packageOrders$items$client<TRes> {
  _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$client(
    this._res,
  );

  TRes _res;

  call({String? displayName, String? avatarImage, String? $__typename}) => _res;
}

class Query$PackageOrdersList$packageOrders$items$provider {
  Query$PackageOrdersList$packageOrders$items$provider({
    this.avatarImage,
    required this.stageName,
    this.$__typename = 'Artist',
  });

  factory Query$PackageOrdersList$packageOrders$items$provider.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$avatarImage = json['avatarImage'];
    final l$stageName = json['stageName'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrdersList$packageOrders$items$provider(
      avatarImage: (l$avatarImage as String?),
      stageName: (l$stageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? avatarImage;

  final String stageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatarImage = avatarImage;
    final l$stageName = stageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$avatarImage, l$stageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrdersList$packageOrders$items$provider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
      return false;
    }
    final l$stageName = stageName;
    final lOther$stageName = other.stageName;
    if (l$stageName != lOther$stageName) {
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

extension UtilityExtension$Query$PackageOrdersList$packageOrders$items$provider
    on Query$PackageOrdersList$packageOrders$items$provider {
  CopyWith$Query$PackageOrdersList$packageOrders$items$provider<
    Query$PackageOrdersList$packageOrders$items$provider
  >
  get copyWith => CopyWith$Query$PackageOrdersList$packageOrders$items$provider(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PackageOrdersList$packageOrders$items$provider<
  TRes
> {
  factory CopyWith$Query$PackageOrdersList$packageOrders$items$provider(
    Query$PackageOrdersList$packageOrders$items$provider instance,
    TRes Function(Query$PackageOrdersList$packageOrders$items$provider) then,
  ) = _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$provider;

  factory CopyWith$Query$PackageOrdersList$packageOrders$items$provider.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$provider;

  TRes call({String? avatarImage, String? stageName, String? $__typename});
}

class _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$provider<TRes>
    implements
        CopyWith$Query$PackageOrdersList$packageOrders$items$provider<TRes> {
  _CopyWithImpl$Query$PackageOrdersList$packageOrders$items$provider(
    this._instance,
    this._then,
  );

  final Query$PackageOrdersList$packageOrders$items$provider _instance;

  final TRes Function(Query$PackageOrdersList$packageOrders$items$provider)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatarImage = _undefined,
    Object? stageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrdersList$packageOrders$items$provider(
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$provider<
  TRes
>
    implements
        CopyWith$Query$PackageOrdersList$packageOrders$items$provider<TRes> {
  _CopyWithStubImpl$Query$PackageOrdersList$packageOrders$items$provider(
    this._res,
  );

  TRes _res;

  call({String? avatarImage, String? stageName, String? $__typename}) => _res;
}

class Variables$Query$PackageOrderDetail {
  factory Variables$Query$PackageOrderDetail({required String orderId}) =>
      Variables$Query$PackageOrderDetail._({r'orderId': orderId});

  Variables$Query$PackageOrderDetail._(this._$data);

  factory Variables$Query$PackageOrderDetail.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Query$PackageOrderDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Query$PackageOrderDetail<
    Variables$Query$PackageOrderDetail
  >
  get copyWith => CopyWith$Variables$Query$PackageOrderDetail(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PackageOrderDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    return Object.hashAll([l$orderId]);
  }
}

abstract class CopyWith$Variables$Query$PackageOrderDetail<TRes> {
  factory CopyWith$Variables$Query$PackageOrderDetail(
    Variables$Query$PackageOrderDetail instance,
    TRes Function(Variables$Query$PackageOrderDetail) then,
  ) = _CopyWithImpl$Variables$Query$PackageOrderDetail;

  factory CopyWith$Variables$Query$PackageOrderDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PackageOrderDetail;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Query$PackageOrderDetail<TRes>
    implements CopyWith$Variables$Query$PackageOrderDetail<TRes> {
  _CopyWithImpl$Variables$Query$PackageOrderDetail(this._instance, this._then);

  final Variables$Query$PackageOrderDetail _instance;

  final TRes Function(Variables$Query$PackageOrderDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) => _then(
    Variables$Query$PackageOrderDetail._({
      ..._instance._$data,
      if (orderId != _undefined && orderId != null)
        'orderId': (orderId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PackageOrderDetail<TRes>
    implements CopyWith$Variables$Query$PackageOrderDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$PackageOrderDetail(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Query$PackageOrderDetail {
  Query$PackageOrderDetail({
    this.packageOrders,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$PackageOrderDetail.fromJson(Map<String, dynamic> json) {
    final l$packageOrders = json['packageOrders'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail(
      packageOrders: l$packageOrders == null
          ? null
          : Query$PackageOrderDetail$packageOrders.fromJson(
              (l$packageOrders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PackageOrderDetail$packageOrders? packageOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$packageOrders = packageOrders;
    _resultData['packageOrders'] = l$packageOrders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$packageOrders = packageOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$packageOrders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$packageOrders = packageOrders;
    final lOther$packageOrders = other.packageOrders;
    if (l$packageOrders != lOther$packageOrders) {
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

extension UtilityExtension$Query$PackageOrderDetail
    on Query$PackageOrderDetail {
  CopyWith$Query$PackageOrderDetail<Query$PackageOrderDetail> get copyWith =>
      CopyWith$Query$PackageOrderDetail(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrderDetail<TRes> {
  factory CopyWith$Query$PackageOrderDetail(
    Query$PackageOrderDetail instance,
    TRes Function(Query$PackageOrderDetail) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail;

  factory CopyWith$Query$PackageOrderDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrderDetail;

  TRes call({
    Query$PackageOrderDetail$packageOrders? packageOrders,
    String? $__typename,
  });
  CopyWith$Query$PackageOrderDetail$packageOrders<TRes> get packageOrders;
}

class _CopyWithImpl$Query$PackageOrderDetail<TRes>
    implements CopyWith$Query$PackageOrderDetail<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail(this._instance, this._then);

  final Query$PackageOrderDetail _instance;

  final TRes Function(Query$PackageOrderDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageOrders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail(
      packageOrders: packageOrders == _undefined
          ? _instance.packageOrders
          : (packageOrders as Query$PackageOrderDetail$packageOrders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PackageOrderDetail$packageOrders<TRes> get packageOrders {
    final local$packageOrders = _instance.packageOrders;
    return local$packageOrders == null
        ? CopyWith$Query$PackageOrderDetail$packageOrders.stub(_then(_instance))
        : CopyWith$Query$PackageOrderDetail$packageOrders(
            local$packageOrders,
            (e) => call(packageOrders: e),
          );
  }
}

class _CopyWithStubImpl$Query$PackageOrderDetail<TRes>
    implements CopyWith$Query$PackageOrderDetail<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail(this._res);

  TRes _res;

  call({
    Query$PackageOrderDetail$packageOrders? packageOrders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PackageOrderDetail$packageOrders<TRes> get packageOrders =>
      CopyWith$Query$PackageOrderDetail$packageOrders.stub(_res);
}

const documentNodeQueryPackageOrderDetail = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PackageOrderDetail'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'packageOrders'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: VariableNode(
                              name: NameNode(value: 'orderId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'clientId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'providerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'artistPackageId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'revisionCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startedAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'freezedTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'requirements'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deliveries'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'notes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'revisionNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'deliveredAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'deliveryFileUrl'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'clientFeedback'),
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
                        name: NameNode(value: 'review'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'rating'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'content'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'createdAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'updatedAt'),
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
                        name: NameNode(value: 'package'),
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
                              name: NameNode(value: 'amount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'packageName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'estimateDeliveryDays'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'maxRevision'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'serviceDetails'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'value'),
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
                        name: NameNode(value: 'client'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'displayName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'avatarImage'),
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
                        name: NameNode(value: 'provider'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'avatarImage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'stageName'),
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
Query$PackageOrderDetail _parserFn$Query$PackageOrderDetail(
  Map<String, dynamic> data,
) => Query$PackageOrderDetail.fromJson(data);
typedef OnQueryComplete$Query$PackageOrderDetail =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PackageOrderDetail?);

class Options$Query$PackageOrderDetail
    extends graphql.QueryOptions<Query$PackageOrderDetail> {
  Options$Query$PackageOrderDetail({
    String? operationName,
    required Variables$Query$PackageOrderDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PackageOrderDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PackageOrderDetail? onComplete,
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
                 data == null ? null : _parserFn$Query$PackageOrderDetail(data),
               ),
         onError: onError,
         document: documentNodeQueryPackageOrderDetail,
         parserFn: _parserFn$Query$PackageOrderDetail,
       );

  final OnQueryComplete$Query$PackageOrderDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PackageOrderDetail
    extends graphql.WatchQueryOptions<Query$PackageOrderDetail> {
  WatchOptions$Query$PackageOrderDetail({
    String? operationName,
    required Variables$Query$PackageOrderDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PackageOrderDetail? typedOptimisticResult,
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
         document: documentNodeQueryPackageOrderDetail,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PackageOrderDetail,
       );
}

class FetchMoreOptions$Query$PackageOrderDetail
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PackageOrderDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PackageOrderDetail variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPackageOrderDetail,
       );
}

extension ClientExtension$Query$PackageOrderDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PackageOrderDetail>>
  query$PackageOrderDetail(Options$Query$PackageOrderDetail options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$PackageOrderDetail>
  watchQuery$PackageOrderDetail(
    WatchOptions$Query$PackageOrderDetail options,
  ) => this.watchQuery(options);

  void writeQuery$PackageOrderDetail({
    required Query$PackageOrderDetail data,
    required Variables$Query$PackageOrderDetail variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPackageOrderDetail,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PackageOrderDetail? readQuery$PackageOrderDetail({
    required Variables$Query$PackageOrderDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPackageOrderDetail,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PackageOrderDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PackageOrderDetail>
useQuery$PackageOrderDetail(Options$Query$PackageOrderDetail options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PackageOrderDetail>
useWatchQuery$PackageOrderDetail(
  WatchOptions$Query$PackageOrderDetail options,
) => graphql_flutter.useWatchQuery(options);

class Query$PackageOrderDetail$Widget
    extends graphql_flutter.Query<Query$PackageOrderDetail> {
  Query$PackageOrderDetail$Widget({
    widgets.Key? key,
    required Options$Query$PackageOrderDetail options,
    required graphql_flutter.QueryBuilder<Query$PackageOrderDetail> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PackageOrderDetail$packageOrders {
  Query$PackageOrderDetail$packageOrders({
    required this.totalCount,
    this.items,
    this.$__typename = 'PackageOrdersCollectionSegment',
  });

  factory Query$PackageOrderDetail$packageOrders.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$PackageOrderDetail$packageOrders$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$PackageOrderDetail$packageOrders$items>? items;

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
    if (other is! Query$PackageOrderDetail$packageOrders ||
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders
    on Query$PackageOrderDetail$packageOrders {
  CopyWith$Query$PackageOrderDetail$packageOrders<
    Query$PackageOrderDetail$packageOrders
  >
  get copyWith =>
      CopyWith$Query$PackageOrderDetail$packageOrders(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders<TRes> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders(
    Query$PackageOrderDetail$packageOrders instance,
    TRes Function(Query$PackageOrderDetail$packageOrders) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders;

  factory CopyWith$Query$PackageOrderDetail$packageOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders;

  TRes call({
    int? totalCount,
    List<Query$PackageOrderDetail$packageOrders$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$PackageOrderDetail$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items<
          Query$PackageOrderDetail$packageOrders$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders<TRes>
    implements CopyWith$Query$PackageOrderDetail$packageOrders<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$PackageOrderDetail$packageOrders$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$PackageOrderDetail$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items<
          Query$PackageOrderDetail$packageOrders$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$PackageOrderDetail$packageOrders$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders<TRes>
    implements CopyWith$Query$PackageOrderDetail$packageOrders<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$PackageOrderDetail$packageOrders$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$PackageOrderDetail$packageOrders$items {
  Query$PackageOrderDetail$packageOrders$items({
    required this.id,
    required this.status,
    required this.clientId,
    required this.providerId,
    required this.artistPackageId,
    required this.createdAt,
    required this.revisionCount,
    required this.duration,
    this.startedAt,
    required this.freezedTime,
    required this.requirements,
    required this.deliveries,
    this.review,
    required this.package,
    required this.client,
    required this.provider,
    this.$__typename = 'PackageOrder',
  });

  factory Query$PackageOrderDetail$packageOrders$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$clientId = json['clientId'];
    final l$providerId = json['providerId'];
    final l$artistPackageId = json['artistPackageId'];
    final l$createdAt = json['createdAt'];
    final l$revisionCount = json['revisionCount'];
    final l$duration = json['duration'];
    final l$startedAt = json['startedAt'];
    final l$freezedTime = json['freezedTime'];
    final l$requirements = json['requirements'];
    final l$deliveries = json['deliveries'];
    final l$review = json['review'];
    final l$package = json['package'];
    final l$client = json['client'];
    final l$provider = json['provider'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items(
      id: (l$id as String),
      status: fromJson$Enum$PackageOrderStatus((l$status as String)),
      clientId: (l$clientId as String),
      providerId: (l$providerId as String),
      artistPackageId: (l$artistPackageId as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      revisionCount: (l$revisionCount as int),
      duration: (l$duration as int),
      startedAt: l$startedAt == null
          ? null
          : DateTime.parse((l$startedAt as String)),
      freezedTime: (l$freezedTime as String),
      requirements: (l$requirements as String),
      deliveries: (l$deliveries as List<dynamic>)
          .map(
            (e) =>
                Query$PackageOrderDetail$packageOrders$items$deliveries.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      review: l$review == null
          ? null
          : Query$PackageOrderDetail$packageOrders$items$review.fromJson(
              (l$review as Map<String, dynamic>),
            ),
      package: (l$package as List<dynamic>)
          .map(
            (e) =>
                Query$PackageOrderDetail$packageOrders$items$package.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      client: (l$client as List<dynamic>)
          .map(
            (e) => Query$PackageOrderDetail$packageOrders$items$client.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      provider: (l$provider as List<dynamic>)
          .map(
            (e) =>
                Query$PackageOrderDetail$packageOrders$items$provider.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$PackageOrderStatus status;

  final String clientId;

  final String providerId;

  final String artistPackageId;

  final DateTime createdAt;

  final int revisionCount;

  final int duration;

  final DateTime? startedAt;

  final String freezedTime;

  final String requirements;

  final List<Query$PackageOrderDetail$packageOrders$items$deliveries>
  deliveries;

  final Query$PackageOrderDetail$packageOrders$items$review? review;

  final List<Query$PackageOrderDetail$packageOrders$items$package> package;

  final List<Query$PackageOrderDetail$packageOrders$items$client> client;

  final List<Query$PackageOrderDetail$packageOrders$items$provider> provider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PackageOrderStatus(l$status);
    final l$clientId = clientId;
    _resultData['clientId'] = l$clientId;
    final l$providerId = providerId;
    _resultData['providerId'] = l$providerId;
    final l$artistPackageId = artistPackageId;
    _resultData['artistPackageId'] = l$artistPackageId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$revisionCount = revisionCount;
    _resultData['revisionCount'] = l$revisionCount;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toIso8601String();
    final l$freezedTime = freezedTime;
    _resultData['freezedTime'] = l$freezedTime;
    final l$requirements = requirements;
    _resultData['requirements'] = l$requirements;
    final l$deliveries = deliveries;
    _resultData['deliveries'] = l$deliveries.map((e) => e.toJson()).toList();
    final l$review = review;
    _resultData['review'] = l$review?.toJson();
    final l$package = package;
    _resultData['package'] = l$package.map((e) => e.toJson()).toList();
    final l$client = client;
    _resultData['client'] = l$client.map((e) => e.toJson()).toList();
    final l$provider = provider;
    _resultData['provider'] = l$provider.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$clientId = clientId;
    final l$providerId = providerId;
    final l$artistPackageId = artistPackageId;
    final l$createdAt = createdAt;
    final l$revisionCount = revisionCount;
    final l$duration = duration;
    final l$startedAt = startedAt;
    final l$freezedTime = freezedTime;
    final l$requirements = requirements;
    final l$deliveries = deliveries;
    final l$review = review;
    final l$package = package;
    final l$client = client;
    final l$provider = provider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$clientId,
      l$providerId,
      l$artistPackageId,
      l$createdAt,
      l$revisionCount,
      l$duration,
      l$startedAt,
      l$freezedTime,
      l$requirements,
      Object.hashAll(l$deliveries.map((v) => v)),
      l$review,
      Object.hashAll(l$package.map((v) => v)),
      Object.hashAll(l$client.map((v) => v)),
      Object.hashAll(l$provider.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
      return false;
    }
    final l$providerId = providerId;
    final lOther$providerId = other.providerId;
    if (l$providerId != lOther$providerId) {
      return false;
    }
    final l$artistPackageId = artistPackageId;
    final lOther$artistPackageId = other.artistPackageId;
    if (l$artistPackageId != lOther$artistPackageId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$revisionCount = revisionCount;
    final lOther$revisionCount = other.revisionCount;
    if (l$revisionCount != lOther$revisionCount) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$freezedTime = freezedTime;
    final lOther$freezedTime = other.freezedTime;
    if (l$freezedTime != lOther$freezedTime) {
      return false;
    }
    final l$requirements = requirements;
    final lOther$requirements = other.requirements;
    if (l$requirements != lOther$requirements) {
      return false;
    }
    final l$deliveries = deliveries;
    final lOther$deliveries = other.deliveries;
    if (l$deliveries.length != lOther$deliveries.length) {
      return false;
    }
    for (int i = 0; i < l$deliveries.length; i++) {
      final l$deliveries$entry = l$deliveries[i];
      final lOther$deliveries$entry = lOther$deliveries[i];
      if (l$deliveries$entry != lOther$deliveries$entry) {
        return false;
      }
    }
    final l$review = review;
    final lOther$review = other.review;
    if (l$review != lOther$review) {
      return false;
    }
    final l$package = package;
    final lOther$package = other.package;
    if (l$package.length != lOther$package.length) {
      return false;
    }
    for (int i = 0; i < l$package.length; i++) {
      final l$package$entry = l$package[i];
      final lOther$package$entry = lOther$package[i];
      if (l$package$entry != lOther$package$entry) {
        return false;
      }
    }
    final l$client = client;
    final lOther$client = other.client;
    if (l$client.length != lOther$client.length) {
      return false;
    }
    for (int i = 0; i < l$client.length; i++) {
      final l$client$entry = l$client[i];
      final lOther$client$entry = lOther$client[i];
      if (l$client$entry != lOther$client$entry) {
        return false;
      }
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider.length != lOther$provider.length) {
      return false;
    }
    for (int i = 0; i < l$provider.length; i++) {
      final l$provider$entry = l$provider[i];
      final lOther$provider$entry = lOther$provider[i];
      if (l$provider$entry != lOther$provider$entry) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items
    on Query$PackageOrderDetail$packageOrders$items {
  CopyWith$Query$PackageOrderDetail$packageOrders$items<
    Query$PackageOrderDetail$packageOrders$items
  >
  get copyWith =>
      CopyWith$Query$PackageOrderDetail$packageOrders$items(this, (i) => i);
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items<TRes> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items(
    Query$PackageOrderDetail$packageOrders$items instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items.stub(TRes res) =
      _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items;

  TRes call({
    String? id,
    Enum$PackageOrderStatus? status,
    String? clientId,
    String? providerId,
    String? artistPackageId,
    DateTime? createdAt,
    int? revisionCount,
    int? duration,
    DateTime? startedAt,
    String? freezedTime,
    String? requirements,
    List<Query$PackageOrderDetail$packageOrders$items$deliveries>? deliveries,
    Query$PackageOrderDetail$packageOrders$items$review? review,
    List<Query$PackageOrderDetail$packageOrders$items$package>? package,
    List<Query$PackageOrderDetail$packageOrders$items$client>? client,
    List<Query$PackageOrderDetail$packageOrders$items$provider>? provider,
    String? $__typename,
  });
  TRes deliveries(
    Iterable<Query$PackageOrderDetail$packageOrders$items$deliveries> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<
          Query$PackageOrderDetail$packageOrders$items$deliveries
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$PackageOrderDetail$packageOrders$items$review<TRes> get review;
  TRes package(
    Iterable<Query$PackageOrderDetail$packageOrders$items$package> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package<
          Query$PackageOrderDetail$packageOrders$items$package
        >
      >,
    )
    _fn,
  );
  TRes client(
    Iterable<Query$PackageOrderDetail$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$client<
          Query$PackageOrderDetail$packageOrders$items$client
        >
      >,
    )
    _fn,
  );
  TRes provider(
    Iterable<Query$PackageOrderDetail$packageOrders$items$provider> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<
          Query$PackageOrderDetail$packageOrders$items$provider
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items<TRes>
    implements CopyWith$Query$PackageOrderDetail$packageOrders$items<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? clientId = _undefined,
    Object? providerId = _undefined,
    Object? artistPackageId = _undefined,
    Object? createdAt = _undefined,
    Object? revisionCount = _undefined,
    Object? duration = _undefined,
    Object? startedAt = _undefined,
    Object? freezedTime = _undefined,
    Object? requirements = _undefined,
    Object? deliveries = _undefined,
    Object? review = _undefined,
    Object? package = _undefined,
    Object? client = _undefined,
    Object? provider = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PackageOrderStatus),
      clientId: clientId == _undefined || clientId == null
          ? _instance.clientId
          : (clientId as String),
      providerId: providerId == _undefined || providerId == null
          ? _instance.providerId
          : (providerId as String),
      artistPackageId: artistPackageId == _undefined || artistPackageId == null
          ? _instance.artistPackageId
          : (artistPackageId as String),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      revisionCount: revisionCount == _undefined || revisionCount == null
          ? _instance.revisionCount
          : (revisionCount as int),
      duration: duration == _undefined || duration == null
          ? _instance.duration
          : (duration as int),
      startedAt: startedAt == _undefined
          ? _instance.startedAt
          : (startedAt as DateTime?),
      freezedTime: freezedTime == _undefined || freezedTime == null
          ? _instance.freezedTime
          : (freezedTime as String),
      requirements: requirements == _undefined || requirements == null
          ? _instance.requirements
          : (requirements as String),
      deliveries: deliveries == _undefined || deliveries == null
          ? _instance.deliveries
          : (deliveries
                as List<
                  Query$PackageOrderDetail$packageOrders$items$deliveries
                >),
      review: review == _undefined
          ? _instance.review
          : (review as Query$PackageOrderDetail$packageOrders$items$review?),
      package: package == _undefined || package == null
          ? _instance.package
          : (package
                as List<Query$PackageOrderDetail$packageOrders$items$package>),
      client: client == _undefined || client == null
          ? _instance.client
          : (client
                as List<Query$PackageOrderDetail$packageOrders$items$client>),
      provider: provider == _undefined || provider == null
          ? _instance.provider
          : (provider
                as List<Query$PackageOrderDetail$packageOrders$items$provider>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes deliveries(
    Iterable<Query$PackageOrderDetail$packageOrders$items$deliveries> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<
          Query$PackageOrderDetail$packageOrders$items$deliveries
        >
      >,
    )
    _fn,
  ) => call(
    deliveries: _fn(
      _instance.deliveries.map(
        (e) => CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$PackageOrderDetail$packageOrders$items$review<TRes>
  get review {
    final local$review = _instance.review;
    return local$review == null
        ? CopyWith$Query$PackageOrderDetail$packageOrders$items$review.stub(
            _then(_instance),
          )
        : CopyWith$Query$PackageOrderDetail$packageOrders$items$review(
            local$review,
            (e) => call(review: e),
          );
  }

  TRes package(
    Iterable<Query$PackageOrderDetail$packageOrders$items$package> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package<
          Query$PackageOrderDetail$packageOrders$items$package
        >
      >,
    )
    _fn,
  ) => call(
    package: _fn(
      _instance.package.map(
        (e) => CopyWith$Query$PackageOrderDetail$packageOrders$items$package(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes client(
    Iterable<Query$PackageOrderDetail$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$client<
          Query$PackageOrderDetail$packageOrders$items$client
        >
      >,
    )
    _fn,
  ) => call(
    client: _fn(
      _instance.client.map(
        (e) => CopyWith$Query$PackageOrderDetail$packageOrders$items$client(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes provider(
    Iterable<Query$PackageOrderDetail$packageOrders$items$provider> Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<
          Query$PackageOrderDetail$packageOrders$items$provider
        >
      >,
    )
    _fn,
  ) => call(
    provider: _fn(
      _instance.provider.map(
        (e) => CopyWith$Query$PackageOrderDetail$packageOrders$items$provider(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items<TRes>
    implements CopyWith$Query$PackageOrderDetail$packageOrders$items<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items(this._res);

  TRes _res;

  call({
    String? id,
    Enum$PackageOrderStatus? status,
    String? clientId,
    String? providerId,
    String? artistPackageId,
    DateTime? createdAt,
    int? revisionCount,
    int? duration,
    DateTime? startedAt,
    String? freezedTime,
    String? requirements,
    List<Query$PackageOrderDetail$packageOrders$items$deliveries>? deliveries,
    Query$PackageOrderDetail$packageOrders$items$review? review,
    List<Query$PackageOrderDetail$packageOrders$items$package>? package,
    List<Query$PackageOrderDetail$packageOrders$items$client>? client,
    List<Query$PackageOrderDetail$packageOrders$items$provider>? provider,
    String? $__typename,
  }) => _res;

  deliveries(_fn) => _res;

  CopyWith$Query$PackageOrderDetail$packageOrders$items$review<TRes>
  get review =>
      CopyWith$Query$PackageOrderDetail$packageOrders$items$review.stub(_res);

  package(_fn) => _res;

  client(_fn) => _res;

  provider(_fn) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$deliveries {
  Query$PackageOrderDetail$packageOrders$items$deliveries({
    this.notes,
    required this.revisionNumber,
    this.deliveredAt,
    required this.deliveryFileUrl,
    this.clientFeedback,
    this.$__typename = 'PackageOrderDelivery',
  });

  factory Query$PackageOrderDetail$packageOrders$items$deliveries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$notes = json['notes'];
    final l$revisionNumber = json['revisionNumber'];
    final l$deliveredAt = json['deliveredAt'];
    final l$deliveryFileUrl = json['deliveryFileUrl'];
    final l$clientFeedback = json['clientFeedback'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$deliveries(
      notes: (l$notes as String?),
      revisionNumber: (l$revisionNumber as int),
      deliveredAt: l$deliveredAt == null
          ? null
          : DateTime.parse((l$deliveredAt as String)),
      deliveryFileUrl: (l$deliveryFileUrl as String),
      clientFeedback: (l$clientFeedback as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? notes;

  final int revisionNumber;

  final DateTime? deliveredAt;

  final String deliveryFileUrl;

  final String? clientFeedback;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$revisionNumber = revisionNumber;
    _resultData['revisionNumber'] = l$revisionNumber;
    final l$deliveredAt = deliveredAt;
    _resultData['deliveredAt'] = l$deliveredAt?.toIso8601String();
    final l$deliveryFileUrl = deliveryFileUrl;
    _resultData['deliveryFileUrl'] = l$deliveryFileUrl;
    final l$clientFeedback = clientFeedback;
    _resultData['clientFeedback'] = l$clientFeedback;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notes = notes;
    final l$revisionNumber = revisionNumber;
    final l$deliveredAt = deliveredAt;
    final l$deliveryFileUrl = deliveryFileUrl;
    final l$clientFeedback = clientFeedback;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notes,
      l$revisionNumber,
      l$deliveredAt,
      l$deliveryFileUrl,
      l$clientFeedback,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items$deliveries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$revisionNumber = revisionNumber;
    final lOther$revisionNumber = other.revisionNumber;
    if (l$revisionNumber != lOther$revisionNumber) {
      return false;
    }
    final l$deliveredAt = deliveredAt;
    final lOther$deliveredAt = other.deliveredAt;
    if (l$deliveredAt != lOther$deliveredAt) {
      return false;
    }
    final l$deliveryFileUrl = deliveryFileUrl;
    final lOther$deliveryFileUrl = other.deliveryFileUrl;
    if (l$deliveryFileUrl != lOther$deliveryFileUrl) {
      return false;
    }
    final l$clientFeedback = clientFeedback;
    final lOther$clientFeedback = other.clientFeedback;
    if (l$clientFeedback != lOther$clientFeedback) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$deliveries
    on Query$PackageOrderDetail$packageOrders$items$deliveries {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<
    Query$PackageOrderDetail$packageOrders$items$deliveries
  >
  get copyWith =>
      CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries(
    Query$PackageOrderDetail$packageOrders$items$deliveries instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items$deliveries) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$deliveries;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$deliveries;

  TRes call({
    String? notes,
    int? revisionNumber,
    DateTime? deliveredAt,
    String? deliveryFileUrl,
    String? clientFeedback,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$deliveries<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$deliveries(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$deliveries _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items$deliveries)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notes = _undefined,
    Object? revisionNumber = _undefined,
    Object? deliveredAt = _undefined,
    Object? deliveryFileUrl = _undefined,
    Object? clientFeedback = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items$deliveries(
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      revisionNumber: revisionNumber == _undefined || revisionNumber == null
          ? _instance.revisionNumber
          : (revisionNumber as int),
      deliveredAt: deliveredAt == _undefined
          ? _instance.deliveredAt
          : (deliveredAt as DateTime?),
      deliveryFileUrl: deliveryFileUrl == _undefined || deliveryFileUrl == null
          ? _instance.deliveryFileUrl
          : (deliveryFileUrl as String),
      clientFeedback: clientFeedback == _undefined
          ? _instance.clientFeedback
          : (clientFeedback as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$deliveries<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$deliveries<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$deliveries(
    this._res,
  );

  TRes _res;

  call({
    String? notes,
    int? revisionNumber,
    DateTime? deliveredAt,
    String? deliveryFileUrl,
    String? clientFeedback,
    String? $__typename,
  }) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$review {
  Query$PackageOrderDetail$packageOrders$items$review({
    required this.rating,
    required this.content,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'Review',
  });

  factory Query$PackageOrderDetail$packageOrders$items$review.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rating = json['rating'];
    final l$content = json['content'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$review(
      rating: (l$rating as int),
      content: (l$content as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int rating;

  final String content;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rating = rating;
    final l$content = content;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rating,
      l$content,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items$review ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$review
    on Query$PackageOrderDetail$packageOrders$items$review {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$review<
    Query$PackageOrderDetail$packageOrders$items$review
  >
  get copyWith => CopyWith$Query$PackageOrderDetail$packageOrders$items$review(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$review<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$review(
    Query$PackageOrderDetail$packageOrders$items$review instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items$review) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$review;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$review.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$review;

  TRes call({
    int? rating,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$review<TRes>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$review<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$review(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$review _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items$review)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rating = _undefined,
    Object? content = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items$review(
      rating: rating == _undefined || rating == null
          ? _instance.rating
          : (rating as int),
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined
          ? _instance.updatedAt
          : (updatedAt as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$review<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$review<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$review(
    this._res,
  );

  TRes _res;

  call({
    int? rating,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$package {
  Query$PackageOrderDetail$packageOrders$items$package({
    required this.id,
    required this.amount,
    required this.packageName,
    required this.estimateDeliveryDays,
    required this.maxRevision,
    required this.serviceDetails,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$PackageOrderDetail$packageOrders$items$package.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$packageName = json['packageName'];
    final l$estimateDeliveryDays = json['estimateDeliveryDays'];
    final l$maxRevision = json['maxRevision'];
    final l$serviceDetails = json['serviceDetails'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$package(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      packageName: (l$packageName as String),
      estimateDeliveryDays: (l$estimateDeliveryDays as int),
      maxRevision: (l$maxRevision as int),
      serviceDetails: (l$serviceDetails as List<dynamic>)
          .map(
            (e) =>
                Query$PackageOrderDetail$packageOrders$items$package$serviceDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double amount;

  final String packageName;

  final int estimateDeliveryDays;

  final int maxRevision;

  final List<
    Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
  >
  serviceDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$packageName = packageName;
    _resultData['packageName'] = l$packageName;
    final l$estimateDeliveryDays = estimateDeliveryDays;
    _resultData['estimateDeliveryDays'] = l$estimateDeliveryDays;
    final l$maxRevision = maxRevision;
    _resultData['maxRevision'] = l$maxRevision;
    final l$serviceDetails = serviceDetails;
    _resultData['serviceDetails'] = l$serviceDetails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$amount = amount;
    final l$packageName = packageName;
    final l$estimateDeliveryDays = estimateDeliveryDays;
    final l$maxRevision = maxRevision;
    final l$serviceDetails = serviceDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$amount,
      l$packageName,
      l$estimateDeliveryDays,
      l$maxRevision,
      Object.hashAll(l$serviceDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items$package ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$packageName = packageName;
    final lOther$packageName = other.packageName;
    if (l$packageName != lOther$packageName) {
      return false;
    }
    final l$estimateDeliveryDays = estimateDeliveryDays;
    final lOther$estimateDeliveryDays = other.estimateDeliveryDays;
    if (l$estimateDeliveryDays != lOther$estimateDeliveryDays) {
      return false;
    }
    final l$maxRevision = maxRevision;
    final lOther$maxRevision = other.maxRevision;
    if (l$maxRevision != lOther$maxRevision) {
      return false;
    }
    final l$serviceDetails = serviceDetails;
    final lOther$serviceDetails = other.serviceDetails;
    if (l$serviceDetails.length != lOther$serviceDetails.length) {
      return false;
    }
    for (int i = 0; i < l$serviceDetails.length; i++) {
      final l$serviceDetails$entry = l$serviceDetails[i];
      final lOther$serviceDetails$entry = lOther$serviceDetails[i];
      if (l$serviceDetails$entry != lOther$serviceDetails$entry) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$package
    on Query$PackageOrderDetail$packageOrders$items$package {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$package<
    Query$PackageOrderDetail$packageOrders$items$package
  >
  get copyWith => CopyWith$Query$PackageOrderDetail$packageOrders$items$package(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$package<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$package(
    Query$PackageOrderDetail$packageOrders$items$package instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items$package) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$package.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package;

  TRes call({
    String? id,
    double? amount,
    String? packageName,
    int? estimateDeliveryDays,
    int? maxRevision,
    List<Query$PackageOrderDetail$packageOrders$items$package$serviceDetails>?
    serviceDetails,
    String? $__typename,
  });
  TRes serviceDetails(
    Iterable<
      Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
    >
    Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
          Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package<TRes>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$package _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items$package)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? amount = _undefined,
    Object? packageName = _undefined,
    Object? estimateDeliveryDays = _undefined,
    Object? maxRevision = _undefined,
    Object? serviceDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items$package(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      packageName: packageName == _undefined || packageName == null
          ? _instance.packageName
          : (packageName as String),
      estimateDeliveryDays:
          estimateDeliveryDays == _undefined || estimateDeliveryDays == null
          ? _instance.estimateDeliveryDays
          : (estimateDeliveryDays as int),
      maxRevision: maxRevision == _undefined || maxRevision == null
          ? _instance.maxRevision
          : (maxRevision as int),
      serviceDetails: serviceDetails == _undefined || serviceDetails == null
          ? _instance.serviceDetails
          : (serviceDetails
                as List<
                  Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes serviceDetails(
    Iterable<
      Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
    >
    Function(
      Iterable<
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
          Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
        >
      >,
    )
    _fn,
  ) => call(
    serviceDetails: _fn(
      _instance.serviceDetails.map(
        (e) =>
            CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    double? amount,
    String? packageName,
    int? estimateDeliveryDays,
    int? maxRevision,
    List<Query$PackageOrderDetail$packageOrders$items$package$serviceDetails>?
    serviceDetails,
    String? $__typename,
  }) => _res;

  serviceDetails(_fn) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$package$serviceDetails {
  Query$PackageOrderDetail$packageOrders$items$package$serviceDetails({
    required this.value,
    this.$__typename = 'Metadata',
  });

  factory Query$PackageOrderDetail$packageOrders$items$package$serviceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PackageOrderDetail$packageOrders$items$package$serviceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
    on Query$PackageOrderDetail$packageOrders$items$package$serviceDetails {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
    Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
  >
  get copyWith =>
      CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
    Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
    instance,
    TRes Function(
      Query$PackageOrderDetail$packageOrders$items$package$serviceDetails,
    )
    then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails;

  TRes call({String? value, String? $__typename});
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
          TRes
        > {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$package$serviceDetails
  _instance;

  final TRes Function(
    Query$PackageOrderDetail$packageOrders$items$package$serviceDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$package$serviceDetails(
    this._res,
  );

  TRes _res;

  call({String? value, String? $__typename}) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$client {
  Query$PackageOrderDetail$packageOrders$items$client({
    required this.displayName,
    this.avatarImage,
    this.$__typename = 'Listener',
  });

  factory Query$PackageOrderDetail$packageOrders$items$client.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$displayName = json['displayName'];
    final l$avatarImage = json['avatarImage'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$client(
      displayName: (l$displayName as String),
      avatarImage: (l$avatarImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String displayName;

  final String? avatarImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$displayName = displayName;
    final l$avatarImage = avatarImage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$displayName, l$avatarImage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items$client ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$client
    on Query$PackageOrderDetail$packageOrders$items$client {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$client<
    Query$PackageOrderDetail$packageOrders$items$client
  >
  get copyWith => CopyWith$Query$PackageOrderDetail$packageOrders$items$client(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$client<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$client(
    Query$PackageOrderDetail$packageOrders$items$client instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items$client) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$client;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$client.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$client;

  TRes call({String? displayName, String? avatarImage, String? $__typename});
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$client<TRes>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$client<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$client(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$client _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items$client)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? avatarImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items$client(
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$client<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$client<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$client(
    this._res,
  );

  TRes _res;

  call({String? displayName, String? avatarImage, String? $__typename}) => _res;
}

class Query$PackageOrderDetail$packageOrders$items$provider {
  Query$PackageOrderDetail$packageOrders$items$provider({
    this.avatarImage,
    required this.stageName,
    required this.email,
    this.$__typename = 'Artist',
  });

  factory Query$PackageOrderDetail$packageOrders$items$provider.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$avatarImage = json['avatarImage'];
    final l$stageName = json['stageName'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$PackageOrderDetail$packageOrders$items$provider(
      avatarImage: (l$avatarImage as String?),
      stageName: (l$stageName as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? avatarImage;

  final String stageName;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatarImage = avatarImage;
    final l$stageName = stageName;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$avatarImage, l$stageName, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PackageOrderDetail$packageOrders$items$provider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
      return false;
    }
    final l$stageName = stageName;
    final lOther$stageName = other.stageName;
    if (l$stageName != lOther$stageName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$PackageOrderDetail$packageOrders$items$provider
    on Query$PackageOrderDetail$packageOrders$items$provider {
  CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<
    Query$PackageOrderDetail$packageOrders$items$provider
  >
  get copyWith =>
      CopyWith$Query$PackageOrderDetail$packageOrders$items$provider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<
  TRes
> {
  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$provider(
    Query$PackageOrderDetail$packageOrders$items$provider instance,
    TRes Function(Query$PackageOrderDetail$packageOrders$items$provider) then,
  ) = _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$provider;

  factory CopyWith$Query$PackageOrderDetail$packageOrders$items$provider.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$provider;

  TRes call({
    String? avatarImage,
    String? stageName,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$provider<TRes>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<TRes> {
  _CopyWithImpl$Query$PackageOrderDetail$packageOrders$items$provider(
    this._instance,
    this._then,
  );

  final Query$PackageOrderDetail$packageOrders$items$provider _instance;

  final TRes Function(Query$PackageOrderDetail$packageOrders$items$provider)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatarImage = _undefined,
    Object? stageName = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PackageOrderDetail$packageOrders$items$provider(
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$provider<
  TRes
>
    implements
        CopyWith$Query$PackageOrderDetail$packageOrders$items$provider<TRes> {
  _CopyWithStubImpl$Query$PackageOrderDetail$packageOrders$items$provider(
    this._res,
  );

  TRes _res;

  call({
    String? avatarImage,
    String? stageName,
    String? email,
    String? $__typename,
  }) => _res;
}
