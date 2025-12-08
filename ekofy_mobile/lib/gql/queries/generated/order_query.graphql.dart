import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OrderPackage {
  factory Variables$Query$OrderPackage({
    Input$PackageOrderFilterInput? where,
    int? take,
    int? skip,
  }) => Variables$Query$OrderPackage._({
    if (where != null) r'where': where,
    if (take != null) r'take': take,
    if (skip != null) r'skip': skip,
  });

  Variables$Query$OrderPackage._(this._$data);

  factory Variables$Query$OrderPackage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$PackageOrderFilterInput.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    return Variables$Query$OrderPackage._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PackageOrderFilterInput? get where =>
      (_$data['where'] as Input$PackageOrderFilterInput?);

  int? get take => (_$data['take'] as int?);

  int? get skip => (_$data['skip'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    if (_$data.containsKey('skip')) {
      final l$skip = skip;
      result$data['skip'] = l$skip;
    }
    return result$data;
  }

  CopyWith$Variables$Query$OrderPackage<Variables$Query$OrderPackage>
  get copyWith => CopyWith$Variables$Query$OrderPackage(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrderPackage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (_$data.containsKey('take') != other._$data.containsKey('take')) {
      return false;
    }
    if (l$take != lOther$take) {
      return false;
    }
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (_$data.containsKey('skip') != other._$data.containsKey('skip')) {
      return false;
    }
    if (l$skip != lOther$skip) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('skip') ? l$skip : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$OrderPackage<TRes> {
  factory CopyWith$Variables$Query$OrderPackage(
    Variables$Query$OrderPackage instance,
    TRes Function(Variables$Query$OrderPackage) then,
  ) = _CopyWithImpl$Variables$Query$OrderPackage;

  factory CopyWith$Variables$Query$OrderPackage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderPackage;

  TRes call({Input$PackageOrderFilterInput? where, int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$OrderPackage<TRes>
    implements CopyWith$Variables$Query$OrderPackage<TRes> {
  _CopyWithImpl$Variables$Query$OrderPackage(this._instance, this._then);

  final Variables$Query$OrderPackage _instance;

  final TRes Function(Variables$Query$OrderPackage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? take = _undefined,
    Object? skip = _undefined,
  }) => _then(
    Variables$Query$OrderPackage._({
      ..._instance._$data,
      if (where != _undefined)
        'where': (where as Input$PackageOrderFilterInput?),
      if (take != _undefined) 'take': (take as int?),
      if (skip != _undefined) 'skip': (skip as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrderPackage<TRes>
    implements CopyWith$Variables$Query$OrderPackage<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderPackage(this._res);

  TRes _res;

  call({Input$PackageOrderFilterInput? where, int? take, int? skip}) => _res;
}

class Query$OrderPackage {
  Query$OrderPackage({
    this.packageOrders,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$OrderPackage.fromJson(Map<String, dynamic> json) {
    final l$packageOrders = json['packageOrders'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage(
      packageOrders: l$packageOrders == null
          ? null
          : Query$OrderPackage$packageOrders.fromJson(
              (l$packageOrders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderPackage$packageOrders? packageOrders;

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
    if (other is! Query$OrderPackage || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$OrderPackage on Query$OrderPackage {
  CopyWith$Query$OrderPackage<Query$OrderPackage> get copyWith =>
      CopyWith$Query$OrderPackage(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage<TRes> {
  factory CopyWith$Query$OrderPackage(
    Query$OrderPackage instance,
    TRes Function(Query$OrderPackage) then,
  ) = _CopyWithImpl$Query$OrderPackage;

  factory CopyWith$Query$OrderPackage.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderPackage;

  TRes call({
    Query$OrderPackage$packageOrders? packageOrders,
    String? $__typename,
  });
  CopyWith$Query$OrderPackage$packageOrders<TRes> get packageOrders;
}

class _CopyWithImpl$Query$OrderPackage<TRes>
    implements CopyWith$Query$OrderPackage<TRes> {
  _CopyWithImpl$Query$OrderPackage(this._instance, this._then);

  final Query$OrderPackage _instance;

  final TRes Function(Query$OrderPackage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageOrders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage(
      packageOrders: packageOrders == _undefined
          ? _instance.packageOrders
          : (packageOrders as Query$OrderPackage$packageOrders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderPackage$packageOrders<TRes> get packageOrders {
    final local$packageOrders = _instance.packageOrders;
    return local$packageOrders == null
        ? CopyWith$Query$OrderPackage$packageOrders.stub(_then(_instance))
        : CopyWith$Query$OrderPackage$packageOrders(
            local$packageOrders,
            (e) => call(packageOrders: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrderPackage<TRes>
    implements CopyWith$Query$OrderPackage<TRes> {
  _CopyWithStubImpl$Query$OrderPackage(this._res);

  TRes _res;

  call({
    Query$OrderPackage$packageOrders? packageOrders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderPackage$packageOrders<TRes> get packageOrders =>
      CopyWith$Query$OrderPackage$packageOrders.stub(_res);
}

const documentNodeQueryOrderPackage = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrderPackage'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'PackageOrderFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'skip')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
                value: VariableNode(name: NameNode(value: 'where')),
              ),
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'take')),
              ),
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'skip')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'createdAt'),
                      value: EnumValueNode(name: NameNode(value: 'DESC')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'hasPreviousPage'),
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
Query$OrderPackage _parserFn$Query$OrderPackage(Map<String, dynamic> data) =>
    Query$OrderPackage.fromJson(data);
typedef OnQueryComplete$Query$OrderPackage =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OrderPackage?);

class Options$Query$OrderPackage
    extends graphql.QueryOptions<Query$OrderPackage> {
  Options$Query$OrderPackage({
    String? operationName,
    Variables$Query$OrderPackage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderPackage? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderPackage? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
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
                 data == null ? null : _parserFn$Query$OrderPackage(data),
               ),
         onError: onError,
         document: documentNodeQueryOrderPackage,
         parserFn: _parserFn$Query$OrderPackage,
       );

  final OnQueryComplete$Query$OrderPackage? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrderPackage
    extends graphql.WatchQueryOptions<Query$OrderPackage> {
  WatchOptions$Query$OrderPackage({
    String? operationName,
    Variables$Query$OrderPackage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderPackage? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryOrderPackage,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrderPackage,
       );
}

class FetchMoreOptions$Query$OrderPackage extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderPackage({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$OrderPackage? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryOrderPackage,
       );
}

extension ClientExtension$Query$OrderPackage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderPackage>> query$OrderPackage([
    Options$Query$OrderPackage? options,
  ]) async => await this.query(options ?? Options$Query$OrderPackage());

  graphql.ObservableQuery<Query$OrderPackage> watchQuery$OrderPackage([
    WatchOptions$Query$OrderPackage? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$OrderPackage());

  void writeQuery$OrderPackage({
    required Query$OrderPackage data,
    Variables$Query$OrderPackage? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOrderPackage),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrderPackage? readQuery$OrderPackage({
    Variables$Query$OrderPackage? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrderPackage),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderPackage.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderPackage> useQuery$OrderPackage([
  Options$Query$OrderPackage? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$OrderPackage());
graphql.ObservableQuery<Query$OrderPackage> useWatchQuery$OrderPackage([
  WatchOptions$Query$OrderPackage? options,
]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$OrderPackage());

class Query$OrderPackage$Widget
    extends graphql_flutter.Query<Query$OrderPackage> {
  Query$OrderPackage$Widget({
    widgets.Key? key,
    Options$Query$OrderPackage? options,
    required graphql_flutter.QueryBuilder<Query$OrderPackage> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$OrderPackage(),
         builder: builder,
       );
}

class Query$OrderPackage$packageOrders {
  Query$OrderPackage$packageOrders({
    required this.pageInfo,
    required this.totalCount,
    this.items,
    this.$__typename = 'PackageOrdersCollectionSegment',
  });

  factory Query$OrderPackage$packageOrders.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders(
      pageInfo: Query$OrderPackage$packageOrders$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$OrderPackage$packageOrders$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderPackage$packageOrders$pageInfo pageInfo;

  final int totalCount;

  final List<Query$OrderPackage$packageOrders$items>? items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
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
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
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
    if (other is! Query$OrderPackage$packageOrders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$OrderPackage$packageOrders
    on Query$OrderPackage$packageOrders {
  CopyWith$Query$OrderPackage$packageOrders<Query$OrderPackage$packageOrders>
  get copyWith => CopyWith$Query$OrderPackage$packageOrders(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage$packageOrders<TRes> {
  factory CopyWith$Query$OrderPackage$packageOrders(
    Query$OrderPackage$packageOrders instance,
    TRes Function(Query$OrderPackage$packageOrders) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders;

  factory CopyWith$Query$OrderPackage$packageOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderPackage$packageOrders;

  TRes call({
    Query$OrderPackage$packageOrders$pageInfo? pageInfo,
    int? totalCount,
    List<Query$OrderPackage$packageOrders$items>? items,
    String? $__typename,
  });
  CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> get pageInfo;
  TRes items(
    Iterable<Query$OrderPackage$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items<
          Query$OrderPackage$packageOrders$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrderPackage$packageOrders<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders(this._instance, this._then);

  final Query$OrderPackage$packageOrders _instance;

  final TRes Function(Query$OrderPackage$packageOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage$packageOrders(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OrderPackage$packageOrders$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$OrderPackage$packageOrders$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderPackage$packageOrders$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes items(
    Iterable<Query$OrderPackage$packageOrders$items>? Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items<
          Query$OrderPackage$packageOrders$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$OrderPackage$packageOrders$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$OrderPackage$packageOrders<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders(this._res);

  TRes _res;

  call({
    Query$OrderPackage$packageOrders$pageInfo? pageInfo,
    int? totalCount,
    List<Query$OrderPackage$packageOrders$items>? items,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$OrderPackage$packageOrders$pageInfo.stub(_res);

  items(_fn) => _res;
}

class Query$OrderPackage$packageOrders$pageInfo {
  Query$OrderPackage$packageOrders$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'CollectionSegmentInfo',
  });

  factory Query$OrderPackage$packageOrders$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$hasPreviousPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderPackage$packageOrders$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$OrderPackage$packageOrders$pageInfo
    on Query$OrderPackage$packageOrders$pageInfo {
  CopyWith$Query$OrderPackage$packageOrders$pageInfo<
    Query$OrderPackage$packageOrders$pageInfo
  >
  get copyWith =>
      CopyWith$Query$OrderPackage$packageOrders$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> {
  factory CopyWith$Query$OrderPackage$packageOrders$pageInfo(
    Query$OrderPackage$packageOrders$pageInfo instance,
    TRes Function(Query$OrderPackage$packageOrders$pageInfo) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$pageInfo;

  factory CopyWith$Query$OrderPackage$packageOrders$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderPackage$packageOrders$pageInfo;

  TRes call({bool? hasNextPage, bool? hasPreviousPage, String? $__typename});
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$pageInfo<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$pageInfo _instance;

  final TRes Function(Query$OrderPackage$packageOrders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage$packageOrders$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$pageInfo<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, bool? hasPreviousPage, String? $__typename}) => _res;
}

class Query$OrderPackage$packageOrders$items {
  Query$OrderPackage$packageOrders$items({
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
    required this.package,
    required this.client,
    this.$__typename = 'PackageOrder',
  });

  factory Query$OrderPackage$packageOrders$items.fromJson(
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
    final l$package = json['package'];
    final l$client = json['client'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$items(
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
            (e) => Query$OrderPackage$packageOrders$items$deliveries.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      package: (l$package as List<dynamic>)
          .map(
            (e) => Query$OrderPackage$packageOrders$items$package.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      client: (l$client as List<dynamic>)
          .map(
            (e) => Query$OrderPackage$packageOrders$items$client.fromJson(
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

  final List<Query$OrderPackage$packageOrders$items$deliveries> deliveries;

  final List<Query$OrderPackage$packageOrders$items$package> package;

  final List<Query$OrderPackage$packageOrders$items$client> client;

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
    final l$package = package;
    _resultData['package'] = l$package.map((e) => e.toJson()).toList();
    final l$client = client;
    _resultData['client'] = l$client.map((e) => e.toJson()).toList();
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
    final l$package = package;
    final l$client = client;
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
      Object.hashAll(l$package.map((v) => v)),
      Object.hashAll(l$client.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderPackage$packageOrders$items ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OrderPackage$packageOrders$items
    on Query$OrderPackage$packageOrders$items {
  CopyWith$Query$OrderPackage$packageOrders$items<
    Query$OrderPackage$packageOrders$items
  >
  get copyWith =>
      CopyWith$Query$OrderPackage$packageOrders$items(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage$packageOrders$items<TRes> {
  factory CopyWith$Query$OrderPackage$packageOrders$items(
    Query$OrderPackage$packageOrders$items instance,
    TRes Function(Query$OrderPackage$packageOrders$items) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$items;

  factory CopyWith$Query$OrderPackage$packageOrders$items.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderPackage$packageOrders$items;

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
    List<Query$OrderPackage$packageOrders$items$deliveries>? deliveries,
    List<Query$OrderPackage$packageOrders$items$package>? package,
    List<Query$OrderPackage$packageOrders$items$client>? client,
    String? $__typename,
  });
  TRes deliveries(
    Iterable<Query$OrderPackage$packageOrders$items$deliveries> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$deliveries<
          Query$OrderPackage$packageOrders$items$deliveries
        >
      >,
    )
    _fn,
  );
  TRes package(
    Iterable<Query$OrderPackage$packageOrders$items$package> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$package<
          Query$OrderPackage$packageOrders$items$package
        >
      >,
    )
    _fn,
  );
  TRes client(
    Iterable<Query$OrderPackage$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$client<
          Query$OrderPackage$packageOrders$items$client
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$items<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders$items(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$items _instance;

  final TRes Function(Query$OrderPackage$packageOrders$items) _then;

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
    Object? package = _undefined,
    Object? client = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage$packageOrders$items(
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
                as List<Query$OrderPackage$packageOrders$items$deliveries>),
      package: package == _undefined || package == null
          ? _instance.package
          : (package as List<Query$OrderPackage$packageOrders$items$package>),
      client: client == _undefined || client == null
          ? _instance.client
          : (client as List<Query$OrderPackage$packageOrders$items$client>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes deliveries(
    Iterable<Query$OrderPackage$packageOrders$items$deliveries> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$deliveries<
          Query$OrderPackage$packageOrders$items$deliveries
        >
      >,
    )
    _fn,
  ) => call(
    deliveries: _fn(
      _instance.deliveries.map(
        (e) => CopyWith$Query$OrderPackage$packageOrders$items$deliveries(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes package(
    Iterable<Query$OrderPackage$packageOrders$items$package> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$package<
          Query$OrderPackage$packageOrders$items$package
        >
      >,
    )
    _fn,
  ) => call(
    package: _fn(
      _instance.package.map(
        (e) => CopyWith$Query$OrderPackage$packageOrders$items$package(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes client(
    Iterable<Query$OrderPackage$packageOrders$items$client> Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$client<
          Query$OrderPackage$packageOrders$items$client
        >
      >,
    )
    _fn,
  ) => call(
    client: _fn(
      _instance.client.map(
        (e) =>
            CopyWith$Query$OrderPackage$packageOrders$items$client(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$items<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$items(this._res);

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
    List<Query$OrderPackage$packageOrders$items$deliveries>? deliveries,
    List<Query$OrderPackage$packageOrders$items$package>? package,
    List<Query$OrderPackage$packageOrders$items$client>? client,
    String? $__typename,
  }) => _res;

  deliveries(_fn) => _res;

  package(_fn) => _res;

  client(_fn) => _res;
}

class Query$OrderPackage$packageOrders$items$deliveries {
  Query$OrderPackage$packageOrders$items$deliveries({
    this.notes,
    required this.revisionNumber,
    this.deliveredAt,
    required this.deliveryFileUrl,
    this.clientFeedback,
    this.$__typename = 'PackageOrderDelivery',
  });

  factory Query$OrderPackage$packageOrders$items$deliveries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$notes = json['notes'];
    final l$revisionNumber = json['revisionNumber'];
    final l$deliveredAt = json['deliveredAt'];
    final l$deliveryFileUrl = json['deliveryFileUrl'];
    final l$clientFeedback = json['clientFeedback'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$items$deliveries(
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
    if (other is! Query$OrderPackage$packageOrders$items$deliveries ||
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

extension UtilityExtension$Query$OrderPackage$packageOrders$items$deliveries
    on Query$OrderPackage$packageOrders$items$deliveries {
  CopyWith$Query$OrderPackage$packageOrders$items$deliveries<
    Query$OrderPackage$packageOrders$items$deliveries
  >
  get copyWith => CopyWith$Query$OrderPackage$packageOrders$items$deliveries(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OrderPackage$packageOrders$items$deliveries<
  TRes
> {
  factory CopyWith$Query$OrderPackage$packageOrders$items$deliveries(
    Query$OrderPackage$packageOrders$items$deliveries instance,
    TRes Function(Query$OrderPackage$packageOrders$items$deliveries) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$items$deliveries;

  factory CopyWith$Query$OrderPackage$packageOrders$items$deliveries.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$deliveries;

  TRes call({
    String? notes,
    int? revisionNumber,
    DateTime? deliveredAt,
    String? deliveryFileUrl,
    String? clientFeedback,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$items$deliveries<TRes>
    implements
        CopyWith$Query$OrderPackage$packageOrders$items$deliveries<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders$items$deliveries(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$items$deliveries _instance;

  final TRes Function(Query$OrderPackage$packageOrders$items$deliveries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notes = _undefined,
    Object? revisionNumber = _undefined,
    Object? deliveredAt = _undefined,
    Object? deliveryFileUrl = _undefined,
    Object? clientFeedback = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage$packageOrders$items$deliveries(
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

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$deliveries<TRes>
    implements
        CopyWith$Query$OrderPackage$packageOrders$items$deliveries<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$deliveries(
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

class Query$OrderPackage$packageOrders$items$package {
  Query$OrderPackage$packageOrders$items$package({
    required this.id,
    required this.amount,
    required this.packageName,
    required this.estimateDeliveryDays,
    required this.maxRevision,
    required this.serviceDetails,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$OrderPackage$packageOrders$items$package.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$packageName = json['packageName'];
    final l$estimateDeliveryDays = json['estimateDeliveryDays'];
    final l$maxRevision = json['maxRevision'];
    final l$serviceDetails = json['serviceDetails'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$items$package(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      packageName: (l$packageName as String),
      estimateDeliveryDays: (l$estimateDeliveryDays as int),
      maxRevision: (l$maxRevision as int),
      serviceDetails: (l$serviceDetails as List<dynamic>)
          .map(
            (e) =>
                Query$OrderPackage$packageOrders$items$package$serviceDetails.fromJson(
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

  final List<Query$OrderPackage$packageOrders$items$package$serviceDetails>
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
    if (other is! Query$OrderPackage$packageOrders$items$package ||
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

extension UtilityExtension$Query$OrderPackage$packageOrders$items$package
    on Query$OrderPackage$packageOrders$items$package {
  CopyWith$Query$OrderPackage$packageOrders$items$package<
    Query$OrderPackage$packageOrders$items$package
  >
  get copyWith =>
      CopyWith$Query$OrderPackage$packageOrders$items$package(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage$packageOrders$items$package<TRes> {
  factory CopyWith$Query$OrderPackage$packageOrders$items$package(
    Query$OrderPackage$packageOrders$items$package instance,
    TRes Function(Query$OrderPackage$packageOrders$items$package) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$items$package;

  factory CopyWith$Query$OrderPackage$packageOrders$items$package.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package;

  TRes call({
    String? id,
    double? amount,
    String? packageName,
    int? estimateDeliveryDays,
    int? maxRevision,
    List<Query$OrderPackage$packageOrders$items$package$serviceDetails>?
    serviceDetails,
    String? $__typename,
  });
  TRes serviceDetails(
    Iterable<Query$OrderPackage$packageOrders$items$package$serviceDetails>
    Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
          Query$OrderPackage$packageOrders$items$package$serviceDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$items$package<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items$package<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders$items$package(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$items$package _instance;

  final TRes Function(Query$OrderPackage$packageOrders$items$package) _then;

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
    Query$OrderPackage$packageOrders$items$package(
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
                  Query$OrderPackage$packageOrders$items$package$serviceDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes serviceDetails(
    Iterable<Query$OrderPackage$packageOrders$items$package$serviceDetails>
    Function(
      Iterable<
        CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
          Query$OrderPackage$packageOrders$items$package$serviceDetails
        >
      >,
    )
    _fn,
  ) => call(
    serviceDetails: _fn(
      _instance.serviceDetails.map(
        (e) =>
            CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items$package<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package(this._res);

  TRes _res;

  call({
    String? id,
    double? amount,
    String? packageName,
    int? estimateDeliveryDays,
    int? maxRevision,
    List<Query$OrderPackage$packageOrders$items$package$serviceDetails>?
    serviceDetails,
    String? $__typename,
  }) => _res;

  serviceDetails(_fn) => _res;
}

class Query$OrderPackage$packageOrders$items$package$serviceDetails {
  Query$OrderPackage$packageOrders$items$package$serviceDetails({
    required this.value,
    this.$__typename = 'Metadata',
  });

  factory Query$OrderPackage$packageOrders$items$package$serviceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$items$package$serviceDetails(
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
            is! Query$OrderPackage$packageOrders$items$package$serviceDetails ||
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

extension UtilityExtension$Query$OrderPackage$packageOrders$items$package$serviceDetails
    on Query$OrderPackage$packageOrders$items$package$serviceDetails {
  CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
    Query$OrderPackage$packageOrders$items$package$serviceDetails
  >
  get copyWith =>
      CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
  TRes
> {
  factory CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails(
    Query$OrderPackage$packageOrders$items$package$serviceDetails instance,
    TRes Function(Query$OrderPackage$packageOrders$items$package$serviceDetails)
    then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails;

  factory CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails;

  TRes call({String? value, String? $__typename});
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
          TRes
        > {
  _CopyWithImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$items$package$serviceDetails _instance;

  final TRes Function(
    Query$OrderPackage$packageOrders$items$package$serviceDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$OrderPackage$packageOrders$items$package$serviceDetails(
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$OrderPackage$packageOrders$items$package$serviceDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$package$serviceDetails(
    this._res,
  );

  TRes _res;

  call({String? value, String? $__typename}) => _res;
}

class Query$OrderPackage$packageOrders$items$client {
  Query$OrderPackage$packageOrders$items$client({
    required this.displayName,
    this.avatarImage,
    this.$__typename = 'Listener',
  });

  factory Query$OrderPackage$packageOrders$items$client.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$displayName = json['displayName'];
    final l$avatarImage = json['avatarImage'];
    final l$$__typename = json['__typename'];
    return Query$OrderPackage$packageOrders$items$client(
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
    if (other is! Query$OrderPackage$packageOrders$items$client ||
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

extension UtilityExtension$Query$OrderPackage$packageOrders$items$client
    on Query$OrderPackage$packageOrders$items$client {
  CopyWith$Query$OrderPackage$packageOrders$items$client<
    Query$OrderPackage$packageOrders$items$client
  >
  get copyWith =>
      CopyWith$Query$OrderPackage$packageOrders$items$client(this, (i) => i);
}

abstract class CopyWith$Query$OrderPackage$packageOrders$items$client<TRes> {
  factory CopyWith$Query$OrderPackage$packageOrders$items$client(
    Query$OrderPackage$packageOrders$items$client instance,
    TRes Function(Query$OrderPackage$packageOrders$items$client) then,
  ) = _CopyWithImpl$Query$OrderPackage$packageOrders$items$client;

  factory CopyWith$Query$OrderPackage$packageOrders$items$client.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$client;

  TRes call({String? displayName, String? avatarImage, String? $__typename});
}

class _CopyWithImpl$Query$OrderPackage$packageOrders$items$client<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items$client<TRes> {
  _CopyWithImpl$Query$OrderPackage$packageOrders$items$client(
    this._instance,
    this._then,
  );

  final Query$OrderPackage$packageOrders$items$client _instance;

  final TRes Function(Query$OrderPackage$packageOrders$items$client) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? displayName = _undefined,
    Object? avatarImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrderPackage$packageOrders$items$client(
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

class _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$client<TRes>
    implements CopyWith$Query$OrderPackage$packageOrders$items$client<TRes> {
  _CopyWithStubImpl$Query$OrderPackage$packageOrders$items$client(this._res);

  TRes _res;

  call({String? displayName, String? avatarImage, String? $__typename}) => _res;
}
