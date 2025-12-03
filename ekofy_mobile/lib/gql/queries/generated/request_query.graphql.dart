import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$PublicRequestQuery {
  Query$PublicRequestQuery({
    this.requests,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$PublicRequestQuery.fromJson(Map<String, dynamic> json) {
    final l$requests = json['requests'];
    final l$$__typename = json['__typename'];
    return Query$PublicRequestQuery(
      requests: l$requests == null
          ? null
          : Query$PublicRequestQuery$requests.fromJson(
              (l$requests as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PublicRequestQuery$requests? requests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$requests = requests;
    _resultData['requests'] = l$requests?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$requests = requests;
    final l$$__typename = $__typename;
    return Object.hashAll([l$requests, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PublicRequestQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requests = requests;
    final lOther$requests = other.requests;
    if (l$requests != lOther$requests) {
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

extension UtilityExtension$Query$PublicRequestQuery
    on Query$PublicRequestQuery {
  CopyWith$Query$PublicRequestQuery<Query$PublicRequestQuery> get copyWith =>
      CopyWith$Query$PublicRequestQuery(this, (i) => i);
}

abstract class CopyWith$Query$PublicRequestQuery<TRes> {
  factory CopyWith$Query$PublicRequestQuery(
    Query$PublicRequestQuery instance,
    TRes Function(Query$PublicRequestQuery) then,
  ) = _CopyWithImpl$Query$PublicRequestQuery;

  factory CopyWith$Query$PublicRequestQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$PublicRequestQuery;

  TRes call({Query$PublicRequestQuery$requests? requests, String? $__typename});
  CopyWith$Query$PublicRequestQuery$requests<TRes> get requests;
}

class _CopyWithImpl$Query$PublicRequestQuery<TRes>
    implements CopyWith$Query$PublicRequestQuery<TRes> {
  _CopyWithImpl$Query$PublicRequestQuery(this._instance, this._then);

  final Query$PublicRequestQuery _instance;

  final TRes Function(Query$PublicRequestQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requests = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PublicRequestQuery(
      requests: requests == _undefined
          ? _instance.requests
          : (requests as Query$PublicRequestQuery$requests?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PublicRequestQuery$requests<TRes> get requests {
    final local$requests = _instance.requests;
    return local$requests == null
        ? CopyWith$Query$PublicRequestQuery$requests.stub(_then(_instance))
        : CopyWith$Query$PublicRequestQuery$requests(
            local$requests,
            (e) => call(requests: e),
          );
  }
}

class _CopyWithStubImpl$Query$PublicRequestQuery<TRes>
    implements CopyWith$Query$PublicRequestQuery<TRes> {
  _CopyWithStubImpl$Query$PublicRequestQuery(this._res);

  TRes _res;

  call({Query$PublicRequestQuery$requests? requests, String? $__typename}) =>
      _res;

  CopyWith$Query$PublicRequestQuery$requests<TRes> get requests =>
      CopyWith$Query$PublicRequestQuery$requests.stub(_res);
}

const documentNodeQueryPublicRequestQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PublicRequestQuery'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'requests'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'type'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: EnumValueNode(
                              name: NameNode(value: 'PUBLIC_REQUEST'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'status'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: EnumValueNode(name: NameNode(value: 'OPEN')),
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
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'titleUnsigned'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'detailDescription'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'summary'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'requestUserId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'budget'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'min'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'max'),
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
                        name: NameNode(value: 'postCreatedTime'),
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
                        name: NameNode(value: 'status'),
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
                        name: NameNode(value: 'requestor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'userId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
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
Query$PublicRequestQuery _parserFn$Query$PublicRequestQuery(
  Map<String, dynamic> data,
) => Query$PublicRequestQuery.fromJson(data);
typedef OnQueryComplete$Query$PublicRequestQuery =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PublicRequestQuery?);

class Options$Query$PublicRequestQuery
    extends graphql.QueryOptions<Query$PublicRequestQuery> {
  Options$Query$PublicRequestQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicRequestQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PublicRequestQuery? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
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
                 data == null ? null : _parserFn$Query$PublicRequestQuery(data),
               ),
         onError: onError,
         document: documentNodeQueryPublicRequestQuery,
         parserFn: _parserFn$Query$PublicRequestQuery,
       );

  final OnQueryComplete$Query$PublicRequestQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PublicRequestQuery
    extends graphql.WatchQueryOptions<Query$PublicRequestQuery> {
  WatchOptions$Query$PublicRequestQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicRequestQuery? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryPublicRequestQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PublicRequestQuery,
       );
}

class FetchMoreOptions$Query$PublicRequestQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PublicRequestQuery({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQueryPublicRequestQuery,
       );
}

extension ClientExtension$Query$PublicRequestQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PublicRequestQuery>>
  query$PublicRequestQuery([Options$Query$PublicRequestQuery? options]) async =>
      await this.query(options ?? Options$Query$PublicRequestQuery());

  graphql.ObservableQuery<Query$PublicRequestQuery>
  watchQuery$PublicRequestQuery([
    WatchOptions$Query$PublicRequestQuery? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$PublicRequestQuery());

  void writeQuery$PublicRequestQuery({
    required Query$PublicRequestQuery data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryPublicRequestQuery,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PublicRequestQuery? readQuery$PublicRequestQuery({
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPublicRequestQuery,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PublicRequestQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PublicRequestQuery>
useQuery$PublicRequestQuery([Options$Query$PublicRequestQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PublicRequestQuery());
graphql.ObservableQuery<Query$PublicRequestQuery>
useWatchQuery$PublicRequestQuery([
  WatchOptions$Query$PublicRequestQuery? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$PublicRequestQuery(),
);

class Query$PublicRequestQuery$Widget
    extends graphql_flutter.Query<Query$PublicRequestQuery> {
  Query$PublicRequestQuery$Widget({
    widgets.Key? key,
    Options$Query$PublicRequestQuery? options,
    required graphql_flutter.QueryBuilder<Query$PublicRequestQuery> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$PublicRequestQuery(),
         builder: builder,
       );
}

class Query$PublicRequestQuery$requests {
  Query$PublicRequestQuery$requests({
    required this.totalCount,
    this.items,
    this.$__typename = 'RequestsCollectionSegment',
  });

  factory Query$PublicRequestQuery$requests.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$PublicRequestQuery$requests(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$PublicRequestQuery$requests$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$PublicRequestQuery$requests$items>? items;

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
    if (other is! Query$PublicRequestQuery$requests ||
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

extension UtilityExtension$Query$PublicRequestQuery$requests
    on Query$PublicRequestQuery$requests {
  CopyWith$Query$PublicRequestQuery$requests<Query$PublicRequestQuery$requests>
  get copyWith => CopyWith$Query$PublicRequestQuery$requests(this, (i) => i);
}

abstract class CopyWith$Query$PublicRequestQuery$requests<TRes> {
  factory CopyWith$Query$PublicRequestQuery$requests(
    Query$PublicRequestQuery$requests instance,
    TRes Function(Query$PublicRequestQuery$requests) then,
  ) = _CopyWithImpl$Query$PublicRequestQuery$requests;

  factory CopyWith$Query$PublicRequestQuery$requests.stub(TRes res) =
      _CopyWithStubImpl$Query$PublicRequestQuery$requests;

  TRes call({
    int? totalCount,
    List<Query$PublicRequestQuery$requests$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$PublicRequestQuery$requests$items>? Function(
      Iterable<
        CopyWith$Query$PublicRequestQuery$requests$items<
          Query$PublicRequestQuery$requests$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PublicRequestQuery$requests<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests<TRes> {
  _CopyWithImpl$Query$PublicRequestQuery$requests(this._instance, this._then);

  final Query$PublicRequestQuery$requests _instance;

  final TRes Function(Query$PublicRequestQuery$requests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PublicRequestQuery$requests(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$PublicRequestQuery$requests$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$PublicRequestQuery$requests$items>? Function(
      Iterable<
        CopyWith$Query$PublicRequestQuery$requests$items<
          Query$PublicRequestQuery$requests$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$PublicRequestQuery$requests$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$PublicRequestQuery$requests<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests<TRes> {
  _CopyWithStubImpl$Query$PublicRequestQuery$requests(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$PublicRequestQuery$requests$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$PublicRequestQuery$requests$items {
  Query$PublicRequestQuery$requests$items({
    required this.id,
    this.title,
    this.titleUnsigned,
    this.detailDescription,
    this.summary,
    required this.requestUserId,
    this.budget,
    this.postCreatedTime,
    required this.duration,
    required this.status,
    required this.currency,
    required this.requestor,
    this.$__typename = 'Request',
  });

  factory Query$PublicRequestQuery$requests$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$titleUnsigned = json['titleUnsigned'];
    final l$detailDescription = json['detailDescription'];
    final l$summary = json['summary'];
    final l$requestUserId = json['requestUserId'];
    final l$budget = json['budget'];
    final l$postCreatedTime = json['postCreatedTime'];
    final l$duration = json['duration'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$requestor = json['requestor'];
    final l$$__typename = json['__typename'];
    return Query$PublicRequestQuery$requests$items(
      id: (l$id as String),
      title: (l$title as String?),
      titleUnsigned: (l$titleUnsigned as String?),
      detailDescription: (l$detailDescription as String?),
      summary: (l$summary as String?),
      requestUserId: (l$requestUserId as String),
      budget: l$budget == null
          ? null
          : Query$PublicRequestQuery$requests$items$budget.fromJson(
              (l$budget as Map<String, dynamic>),
            ),
      postCreatedTime: l$postCreatedTime == null
          ? null
          : DateTime.parse((l$postCreatedTime as String)),
      duration: (l$duration as int),
      status: fromJson$Enum$RequestStatus((l$status as String)),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      requestor: (l$requestor as List<dynamic>)
          .map(
            (e) => Query$PublicRequestQuery$requests$items$requestor.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String? titleUnsigned;

  final String? detailDescription;

  final String? summary;

  final String requestUserId;

  final Query$PublicRequestQuery$requests$items$budget? budget;

  final DateTime? postCreatedTime;

  final int duration;

  final Enum$RequestStatus status;

  final Enum$CurrencyType currency;

  final List<Query$PublicRequestQuery$requests$items$requestor> requestor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$titleUnsigned = titleUnsigned;
    _resultData['titleUnsigned'] = l$titleUnsigned;
    final l$detailDescription = detailDescription;
    _resultData['detailDescription'] = l$detailDescription;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$requestUserId = requestUserId;
    _resultData['requestUserId'] = l$requestUserId;
    final l$budget = budget;
    _resultData['budget'] = l$budget?.toJson();
    final l$postCreatedTime = postCreatedTime;
    _resultData['postCreatedTime'] = l$postCreatedTime?.toIso8601String();
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$status = status;
    _resultData['status'] = toJson$Enum$RequestStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = toJson$Enum$CurrencyType(l$currency);
    final l$requestor = requestor;
    _resultData['requestor'] = l$requestor.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$titleUnsigned = titleUnsigned;
    final l$detailDescription = detailDescription;
    final l$summary = summary;
    final l$requestUserId = requestUserId;
    final l$budget = budget;
    final l$postCreatedTime = postCreatedTime;
    final l$duration = duration;
    final l$status = status;
    final l$currency = currency;
    final l$requestor = requestor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$titleUnsigned,
      l$detailDescription,
      l$summary,
      l$requestUserId,
      l$budget,
      l$postCreatedTime,
      l$duration,
      l$status,
      l$currency,
      Object.hashAll(l$requestor.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PublicRequestQuery$requests$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$titleUnsigned = titleUnsigned;
    final lOther$titleUnsigned = other.titleUnsigned;
    if (l$titleUnsigned != lOther$titleUnsigned) {
      return false;
    }
    final l$detailDescription = detailDescription;
    final lOther$detailDescription = other.detailDescription;
    if (l$detailDescription != lOther$detailDescription) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$requestUserId = requestUserId;
    final lOther$requestUserId = other.requestUserId;
    if (l$requestUserId != lOther$requestUserId) {
      return false;
    }
    final l$budget = budget;
    final lOther$budget = other.budget;
    if (l$budget != lOther$budget) {
      return false;
    }
    final l$postCreatedTime = postCreatedTime;
    final lOther$postCreatedTime = other.postCreatedTime;
    if (l$postCreatedTime != lOther$postCreatedTime) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$requestor = requestor;
    final lOther$requestor = other.requestor;
    if (l$requestor.length != lOther$requestor.length) {
      return false;
    }
    for (int i = 0; i < l$requestor.length; i++) {
      final l$requestor$entry = l$requestor[i];
      final lOther$requestor$entry = lOther$requestor[i];
      if (l$requestor$entry != lOther$requestor$entry) {
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

extension UtilityExtension$Query$PublicRequestQuery$requests$items
    on Query$PublicRequestQuery$requests$items {
  CopyWith$Query$PublicRequestQuery$requests$items<
    Query$PublicRequestQuery$requests$items
  >
  get copyWith =>
      CopyWith$Query$PublicRequestQuery$requests$items(this, (i) => i);
}

abstract class CopyWith$Query$PublicRequestQuery$requests$items<TRes> {
  factory CopyWith$Query$PublicRequestQuery$requests$items(
    Query$PublicRequestQuery$requests$items instance,
    TRes Function(Query$PublicRequestQuery$requests$items) then,
  ) = _CopyWithImpl$Query$PublicRequestQuery$requests$items;

  factory CopyWith$Query$PublicRequestQuery$requests$items.stub(TRes res) =
      _CopyWithStubImpl$Query$PublicRequestQuery$requests$items;

  TRes call({
    String? id,
    String? title,
    String? titleUnsigned,
    String? detailDescription,
    String? summary,
    String? requestUserId,
    Query$PublicRequestQuery$requests$items$budget? budget,
    DateTime? postCreatedTime,
    int? duration,
    Enum$RequestStatus? status,
    Enum$CurrencyType? currency,
    List<Query$PublicRequestQuery$requests$items$requestor>? requestor,
    String? $__typename,
  });
  CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> get budget;
  TRes requestor(
    Iterable<Query$PublicRequestQuery$requests$items$requestor> Function(
      Iterable<
        CopyWith$Query$PublicRequestQuery$requests$items$requestor<
          Query$PublicRequestQuery$requests$items$requestor
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PublicRequestQuery$requests$items<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests$items<TRes> {
  _CopyWithImpl$Query$PublicRequestQuery$requests$items(
    this._instance,
    this._then,
  );

  final Query$PublicRequestQuery$requests$items _instance;

  final TRes Function(Query$PublicRequestQuery$requests$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? titleUnsigned = _undefined,
    Object? detailDescription = _undefined,
    Object? summary = _undefined,
    Object? requestUserId = _undefined,
    Object? budget = _undefined,
    Object? postCreatedTime = _undefined,
    Object? duration = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? requestor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PublicRequestQuery$requests$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined ? _instance.title : (title as String?),
      titleUnsigned: titleUnsigned == _undefined
          ? _instance.titleUnsigned
          : (titleUnsigned as String?),
      detailDescription: detailDescription == _undefined
          ? _instance.detailDescription
          : (detailDescription as String?),
      summary: summary == _undefined ? _instance.summary : (summary as String?),
      requestUserId: requestUserId == _undefined || requestUserId == null
          ? _instance.requestUserId
          : (requestUserId as String),
      budget: budget == _undefined
          ? _instance.budget
          : (budget as Query$PublicRequestQuery$requests$items$budget?),
      postCreatedTime: postCreatedTime == _undefined
          ? _instance.postCreatedTime
          : (postCreatedTime as DateTime?),
      duration: duration == _undefined || duration == null
          ? _instance.duration
          : (duration as int),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$RequestStatus),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as Enum$CurrencyType),
      requestor: requestor == _undefined || requestor == null
          ? _instance.requestor
          : (requestor
                as List<Query$PublicRequestQuery$requests$items$requestor>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> get budget {
    final local$budget = _instance.budget;
    return local$budget == null
        ? CopyWith$Query$PublicRequestQuery$requests$items$budget.stub(
            _then(_instance),
          )
        : CopyWith$Query$PublicRequestQuery$requests$items$budget(
            local$budget,
            (e) => call(budget: e),
          );
  }

  TRes requestor(
    Iterable<Query$PublicRequestQuery$requests$items$requestor> Function(
      Iterable<
        CopyWith$Query$PublicRequestQuery$requests$items$requestor<
          Query$PublicRequestQuery$requests$items$requestor
        >
      >,
    )
    _fn,
  ) => call(
    requestor: _fn(
      _instance.requestor.map(
        (e) => CopyWith$Query$PublicRequestQuery$requests$items$requestor(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$PublicRequestQuery$requests$items<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests$items<TRes> {
  _CopyWithStubImpl$Query$PublicRequestQuery$requests$items(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? titleUnsigned,
    String? detailDescription,
    String? summary,
    String? requestUserId,
    Query$PublicRequestQuery$requests$items$budget? budget,
    DateTime? postCreatedTime,
    int? duration,
    Enum$RequestStatus? status,
    Enum$CurrencyType? currency,
    List<Query$PublicRequestQuery$requests$items$requestor>? requestor,
    String? $__typename,
  }) => _res;

  CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> get budget =>
      CopyWith$Query$PublicRequestQuery$requests$items$budget.stub(_res);

  requestor(_fn) => _res;
}

class Query$PublicRequestQuery$requests$items$budget {
  Query$PublicRequestQuery$requests$items$budget({
    required this.min,
    required this.max,
    this.$__typename = 'RequestBudget',
  });

  factory Query$PublicRequestQuery$requests$items$budget.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$min = json['min'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$PublicRequestQuery$requests$items$budget(
      min: (l$min as num).toDouble(),
      max: (l$max as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double min;

  final double max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$min = min;
    _resultData['min'] = l$min;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([l$min, l$max, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PublicRequestQuery$requests$items$budget ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension$Query$PublicRequestQuery$requests$items$budget
    on Query$PublicRequestQuery$requests$items$budget {
  CopyWith$Query$PublicRequestQuery$requests$items$budget<
    Query$PublicRequestQuery$requests$items$budget
  >
  get copyWith =>
      CopyWith$Query$PublicRequestQuery$requests$items$budget(this, (i) => i);
}

abstract class CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> {
  factory CopyWith$Query$PublicRequestQuery$requests$items$budget(
    Query$PublicRequestQuery$requests$items$budget instance,
    TRes Function(Query$PublicRequestQuery$requests$items$budget) then,
  ) = _CopyWithImpl$Query$PublicRequestQuery$requests$items$budget;

  factory CopyWith$Query$PublicRequestQuery$requests$items$budget.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$budget;

  TRes call({double? min, double? max, String? $__typename});
}

class _CopyWithImpl$Query$PublicRequestQuery$requests$items$budget<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> {
  _CopyWithImpl$Query$PublicRequestQuery$requests$items$budget(
    this._instance,
    this._then,
  );

  final Query$PublicRequestQuery$requests$items$budget _instance;

  final TRes Function(Query$PublicRequestQuery$requests$items$budget) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PublicRequestQuery$requests$items$budget(
      min: min == _undefined || min == null ? _instance.min : (min as double),
      max: max == _undefined || max == null ? _instance.max : (max as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$budget<TRes>
    implements CopyWith$Query$PublicRequestQuery$requests$items$budget<TRes> {
  _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$budget(this._res);

  TRes _res;

  call({double? min, double? max, String? $__typename}) => _res;
}

class Query$PublicRequestQuery$requests$items$requestor {
  Query$PublicRequestQuery$requests$items$requestor({
    required this.userId,
    required this.displayName,
    this.avatarImage,
    this.$__typename = 'Listener',
  });

  factory Query$PublicRequestQuery$requests$items$requestor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userId = json['userId'];
    final l$displayName = json['displayName'];
    final l$avatarImage = json['avatarImage'];
    final l$$__typename = json['__typename'];
    return Query$PublicRequestQuery$requests$items$requestor(
      userId: (l$userId as String),
      displayName: (l$displayName as String),
      avatarImage: (l$avatarImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String userId;

  final String displayName;

  final String? avatarImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userId = userId;
    _resultData['userId'] = l$userId;
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
    final l$userId = userId;
    final l$displayName = displayName;
    final l$avatarImage = avatarImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userId,
      l$displayName,
      l$avatarImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PublicRequestQuery$requests$items$requestor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Query$PublicRequestQuery$requests$items$requestor
    on Query$PublicRequestQuery$requests$items$requestor {
  CopyWith$Query$PublicRequestQuery$requests$items$requestor<
    Query$PublicRequestQuery$requests$items$requestor
  >
  get copyWith => CopyWith$Query$PublicRequestQuery$requests$items$requestor(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$PublicRequestQuery$requests$items$requestor<
  TRes
> {
  factory CopyWith$Query$PublicRequestQuery$requests$items$requestor(
    Query$PublicRequestQuery$requests$items$requestor instance,
    TRes Function(Query$PublicRequestQuery$requests$items$requestor) then,
  ) = _CopyWithImpl$Query$PublicRequestQuery$requests$items$requestor;

  factory CopyWith$Query$PublicRequestQuery$requests$items$requestor.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$requestor;

  TRes call({
    String? userId,
    String? displayName,
    String? avatarImage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PublicRequestQuery$requests$items$requestor<TRes>
    implements
        CopyWith$Query$PublicRequestQuery$requests$items$requestor<TRes> {
  _CopyWithImpl$Query$PublicRequestQuery$requests$items$requestor(
    this._instance,
    this._then,
  );

  final Query$PublicRequestQuery$requests$items$requestor _instance;

  final TRes Function(Query$PublicRequestQuery$requests$items$requestor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? displayName = _undefined,
    Object? avatarImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PublicRequestQuery$requests$items$requestor(
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
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

class _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$requestor<TRes>
    implements
        CopyWith$Query$PublicRequestQuery$requests$items$requestor<TRes> {
  _CopyWithStubImpl$Query$PublicRequestQuery$requests$items$requestor(
    this._res,
  );

  TRes _res;

  call({
    String? userId,
    String? displayName,
    String? avatarImage,
    String? $__typename,
  }) => _res;
}

class Query$OwnRequestsQuery {
  Query$OwnRequestsQuery({
    this.ownRequests,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$OwnRequestsQuery.fromJson(Map<String, dynamic> json) {
    final l$ownRequests = json['ownRequests'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery(
      ownRequests: l$ownRequests == null
          ? null
          : Query$OwnRequestsQuery$ownRequests.fromJson(
              (l$ownRequests as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OwnRequestsQuery$ownRequests? ownRequests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ownRequests = ownRequests;
    _resultData['ownRequests'] = l$ownRequests?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ownRequests = ownRequests;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ownRequests, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OwnRequestsQuery || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ownRequests = ownRequests;
    final lOther$ownRequests = other.ownRequests;
    if (l$ownRequests != lOther$ownRequests) {
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

extension UtilityExtension$Query$OwnRequestsQuery on Query$OwnRequestsQuery {
  CopyWith$Query$OwnRequestsQuery<Query$OwnRequestsQuery> get copyWith =>
      CopyWith$Query$OwnRequestsQuery(this, (i) => i);
}

abstract class CopyWith$Query$OwnRequestsQuery<TRes> {
  factory CopyWith$Query$OwnRequestsQuery(
    Query$OwnRequestsQuery instance,
    TRes Function(Query$OwnRequestsQuery) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery;

  factory CopyWith$Query$OwnRequestsQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$OwnRequestsQuery;

  TRes call({
    Query$OwnRequestsQuery$ownRequests? ownRequests,
    String? $__typename,
  });
  CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> get ownRequests;
}

class _CopyWithImpl$Query$OwnRequestsQuery<TRes>
    implements CopyWith$Query$OwnRequestsQuery<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery(this._instance, this._then);

  final Query$OwnRequestsQuery _instance;

  final TRes Function(Query$OwnRequestsQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ownRequests = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery(
      ownRequests: ownRequests == _undefined
          ? _instance.ownRequests
          : (ownRequests as Query$OwnRequestsQuery$ownRequests?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> get ownRequests {
    final local$ownRequests = _instance.ownRequests;
    return local$ownRequests == null
        ? CopyWith$Query$OwnRequestsQuery$ownRequests.stub(_then(_instance))
        : CopyWith$Query$OwnRequestsQuery$ownRequests(
            local$ownRequests,
            (e) => call(ownRequests: e),
          );
  }
}

class _CopyWithStubImpl$Query$OwnRequestsQuery<TRes>
    implements CopyWith$Query$OwnRequestsQuery<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery(this._res);

  TRes _res;

  call({
    Query$OwnRequestsQuery$ownRequests? ownRequests,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> get ownRequests =>
      CopyWith$Query$OwnRequestsQuery$ownRequests.stub(_res);
}

const documentNodeQueryOwnRequestsQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OwnRequestsQuery'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'ownRequests'),
            alias: null,
            arguments: [],
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
                        name: NameNode(value: 'requestUserId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'artistId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'packageId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'titleUnsigned'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'summary'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'summaryUnsigned'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'detailDescription'),
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
                        name: NameNode(value: 'postCreatedTime'),
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
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'duration'),
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
                        name: NameNode(value: 'requestCreatedTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'notes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'budget'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'min'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'max'),
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
                        name: NameNode(value: 'artist'),
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
                              name: NameNode(value: 'userId'),
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
                        name: NameNode(value: 'artistPackage'),
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
                              name: NameNode(value: 'packageName'),
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
Query$OwnRequestsQuery _parserFn$Query$OwnRequestsQuery(
  Map<String, dynamic> data,
) => Query$OwnRequestsQuery.fromJson(data);
typedef OnQueryComplete$Query$OwnRequestsQuery =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OwnRequestsQuery?);

class Options$Query$OwnRequestsQuery
    extends graphql.QueryOptions<Query$OwnRequestsQuery> {
  Options$Query$OwnRequestsQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OwnRequestsQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OwnRequestsQuery? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
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
                 data == null ? null : _parserFn$Query$OwnRequestsQuery(data),
               ),
         onError: onError,
         document: documentNodeQueryOwnRequestsQuery,
         parserFn: _parserFn$Query$OwnRequestsQuery,
       );

  final OnQueryComplete$Query$OwnRequestsQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OwnRequestsQuery
    extends graphql.WatchQueryOptions<Query$OwnRequestsQuery> {
  WatchOptions$Query$OwnRequestsQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OwnRequestsQuery? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryOwnRequestsQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OwnRequestsQuery,
       );
}

class FetchMoreOptions$Query$OwnRequestsQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OwnRequestsQuery({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQueryOwnRequestsQuery,
       );
}

extension ClientExtension$Query$OwnRequestsQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OwnRequestsQuery>> query$OwnRequestsQuery([
    Options$Query$OwnRequestsQuery? options,
  ]) async => await this.query(options ?? Options$Query$OwnRequestsQuery());

  graphql.ObservableQuery<Query$OwnRequestsQuery> watchQuery$OwnRequestsQuery([
    WatchOptions$Query$OwnRequestsQuery? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$OwnRequestsQuery());

  void writeQuery$OwnRequestsQuery({
    required Query$OwnRequestsQuery data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryOwnRequestsQuery),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OwnRequestsQuery? readQuery$OwnRequestsQuery({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOwnRequestsQuery,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OwnRequestsQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OwnRequestsQuery>
useQuery$OwnRequestsQuery([Options$Query$OwnRequestsQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$OwnRequestsQuery());
graphql.ObservableQuery<Query$OwnRequestsQuery> useWatchQuery$OwnRequestsQuery([
  WatchOptions$Query$OwnRequestsQuery? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$OwnRequestsQuery(),
);

class Query$OwnRequestsQuery$Widget
    extends graphql_flutter.Query<Query$OwnRequestsQuery> {
  Query$OwnRequestsQuery$Widget({
    widgets.Key? key,
    Options$Query$OwnRequestsQuery? options,
    required graphql_flutter.QueryBuilder<Query$OwnRequestsQuery> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$OwnRequestsQuery(),
         builder: builder,
       );
}

class Query$OwnRequestsQuery$ownRequests {
  Query$OwnRequestsQuery$ownRequests({
    required this.totalCount,
    this.items,
    this.$__typename = 'OwnRequestsCollectionSegment',
  });

  factory Query$OwnRequestsQuery$ownRequests.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery$ownRequests(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$OwnRequestsQuery$ownRequests$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$OwnRequestsQuery$ownRequests$items>? items;

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
    if (other is! Query$OwnRequestsQuery$ownRequests ||
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

extension UtilityExtension$Query$OwnRequestsQuery$ownRequests
    on Query$OwnRequestsQuery$ownRequests {
  CopyWith$Query$OwnRequestsQuery$ownRequests<
    Query$OwnRequestsQuery$ownRequests
  >
  get copyWith => CopyWith$Query$OwnRequestsQuery$ownRequests(this, (i) => i);
}

abstract class CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> {
  factory CopyWith$Query$OwnRequestsQuery$ownRequests(
    Query$OwnRequestsQuery$ownRequests instance,
    TRes Function(Query$OwnRequestsQuery$ownRequests) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery$ownRequests;

  factory CopyWith$Query$OwnRequestsQuery$ownRequests.stub(TRes res) =
      _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests;

  TRes call({
    int? totalCount,
    List<Query$OwnRequestsQuery$ownRequests$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$OwnRequestsQuery$ownRequests$items>? Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items<
          Query$OwnRequestsQuery$ownRequests$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OwnRequestsQuery$ownRequests<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery$ownRequests(this._instance, this._then);

  final Query$OwnRequestsQuery$ownRequests _instance;

  final TRes Function(Query$OwnRequestsQuery$ownRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery$ownRequests(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$OwnRequestsQuery$ownRequests$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$OwnRequestsQuery$ownRequests$items>? Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items<
          Query$OwnRequestsQuery$ownRequests$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$OwnRequestsQuery$ownRequests$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$OwnRequestsQuery$ownRequests$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$OwnRequestsQuery$ownRequests$items {
  Query$OwnRequestsQuery$ownRequests$items({
    required this.id,
    required this.requestUserId,
    this.artistId,
    this.packageId,
    this.title,
    this.titleUnsigned,
    this.summary,
    this.summaryUnsigned,
    this.detailDescription,
    this.requirements,
    this.postCreatedTime,
    this.updatedAt,
    required this.type,
    required this.currency,
    required this.duration,
    required this.status,
    this.requestCreatedTime,
    this.notes,
    this.budget,
    required this.artist,
    required this.artistPackage,
    this.$__typename = 'Request',
  });

  factory Query$OwnRequestsQuery$ownRequests$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$requestUserId = json['requestUserId'];
    final l$artistId = json['artistId'];
    final l$packageId = json['packageId'];
    final l$title = json['title'];
    final l$titleUnsigned = json['titleUnsigned'];
    final l$summary = json['summary'];
    final l$summaryUnsigned = json['summaryUnsigned'];
    final l$detailDescription = json['detailDescription'];
    final l$requirements = json['requirements'];
    final l$postCreatedTime = json['postCreatedTime'];
    final l$updatedAt = json['updatedAt'];
    final l$type = json['type'];
    final l$currency = json['currency'];
    final l$duration = json['duration'];
    final l$status = json['status'];
    final l$requestCreatedTime = json['requestCreatedTime'];
    final l$notes = json['notes'];
    final l$budget = json['budget'];
    final l$artist = json['artist'];
    final l$artistPackage = json['artistPackage'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery$ownRequests$items(
      id: (l$id as String),
      requestUserId: (l$requestUserId as String),
      artistId: (l$artistId as String?),
      packageId: (l$packageId as String?),
      title: (l$title as String?),
      titleUnsigned: (l$titleUnsigned as String?),
      summary: (l$summary as String?),
      summaryUnsigned: (l$summaryUnsigned as String?),
      detailDescription: (l$detailDescription as String?),
      requirements: (l$requirements as String?),
      postCreatedTime: l$postCreatedTime == null
          ? null
          : DateTime.parse((l$postCreatedTime as String)),
      updatedAt: l$updatedAt == null
          ? null
          : DateTime.parse((l$updatedAt as String)),
      type: fromJson$Enum$RequestType((l$type as String)),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      duration: (l$duration as int),
      status: fromJson$Enum$RequestStatus((l$status as String)),
      requestCreatedTime: l$requestCreatedTime == null
          ? null
          : DateTime.parse((l$requestCreatedTime as String)),
      notes: (l$notes as String?),
      budget: l$budget == null
          ? null
          : Query$OwnRequestsQuery$ownRequests$items$budget.fromJson(
              (l$budget as Map<String, dynamic>),
            ),
      artist: (l$artist as List<dynamic>)
          .map(
            (e) => Query$OwnRequestsQuery$ownRequests$items$artist.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      artistPackage: (l$artistPackage as List<dynamic>)
          .map(
            (e) =>
                Query$OwnRequestsQuery$ownRequests$items$artistPackage.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String requestUserId;

  final String? artistId;

  final String? packageId;

  final String? title;

  final String? titleUnsigned;

  final String? summary;

  final String? summaryUnsigned;

  final String? detailDescription;

  final String? requirements;

  final DateTime? postCreatedTime;

  final DateTime? updatedAt;

  final Enum$RequestType type;

  final Enum$CurrencyType currency;

  final int duration;

  final Enum$RequestStatus status;

  final DateTime? requestCreatedTime;

  final String? notes;

  final Query$OwnRequestsQuery$ownRequests$items$budget? budget;

  final List<Query$OwnRequestsQuery$ownRequests$items$artist> artist;

  final List<Query$OwnRequestsQuery$ownRequests$items$artistPackage>
  artistPackage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$requestUserId = requestUserId;
    _resultData['requestUserId'] = l$requestUserId;
    final l$artistId = artistId;
    _resultData['artistId'] = l$artistId;
    final l$packageId = packageId;
    _resultData['packageId'] = l$packageId;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$titleUnsigned = titleUnsigned;
    _resultData['titleUnsigned'] = l$titleUnsigned;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$summaryUnsigned = summaryUnsigned;
    _resultData['summaryUnsigned'] = l$summaryUnsigned;
    final l$detailDescription = detailDescription;
    _resultData['detailDescription'] = l$detailDescription;
    final l$requirements = requirements;
    _resultData['requirements'] = l$requirements;
    final l$postCreatedTime = postCreatedTime;
    _resultData['postCreatedTime'] = l$postCreatedTime?.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$RequestType(l$type);
    final l$currency = currency;
    _resultData['currency'] = toJson$Enum$CurrencyType(l$currency);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$status = status;
    _resultData['status'] = toJson$Enum$RequestStatus(l$status);
    final l$requestCreatedTime = requestCreatedTime;
    _resultData['requestCreatedTime'] = l$requestCreatedTime?.toIso8601String();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$budget = budget;
    _resultData['budget'] = l$budget?.toJson();
    final l$artist = artist;
    _resultData['artist'] = l$artist.map((e) => e.toJson()).toList();
    final l$artistPackage = artistPackage;
    _resultData['artistPackage'] = l$artistPackage
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$requestUserId = requestUserId;
    final l$artistId = artistId;
    final l$packageId = packageId;
    final l$title = title;
    final l$titleUnsigned = titleUnsigned;
    final l$summary = summary;
    final l$summaryUnsigned = summaryUnsigned;
    final l$detailDescription = detailDescription;
    final l$requirements = requirements;
    final l$postCreatedTime = postCreatedTime;
    final l$updatedAt = updatedAt;
    final l$type = type;
    final l$currency = currency;
    final l$duration = duration;
    final l$status = status;
    final l$requestCreatedTime = requestCreatedTime;
    final l$notes = notes;
    final l$budget = budget;
    final l$artist = artist;
    final l$artistPackage = artistPackage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$requestUserId,
      l$artistId,
      l$packageId,
      l$title,
      l$titleUnsigned,
      l$summary,
      l$summaryUnsigned,
      l$detailDescription,
      l$requirements,
      l$postCreatedTime,
      l$updatedAt,
      l$type,
      l$currency,
      l$duration,
      l$status,
      l$requestCreatedTime,
      l$notes,
      l$budget,
      Object.hashAll(l$artist.map((v) => v)),
      Object.hashAll(l$artistPackage.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OwnRequestsQuery$ownRequests$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$requestUserId = requestUserId;
    final lOther$requestUserId = other.requestUserId;
    if (l$requestUserId != lOther$requestUserId) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
      return false;
    }
    final l$packageId = packageId;
    final lOther$packageId = other.packageId;
    if (l$packageId != lOther$packageId) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$titleUnsigned = titleUnsigned;
    final lOther$titleUnsigned = other.titleUnsigned;
    if (l$titleUnsigned != lOther$titleUnsigned) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$summaryUnsigned = summaryUnsigned;
    final lOther$summaryUnsigned = other.summaryUnsigned;
    if (l$summaryUnsigned != lOther$summaryUnsigned) {
      return false;
    }
    final l$detailDescription = detailDescription;
    final lOther$detailDescription = other.detailDescription;
    if (l$detailDescription != lOther$detailDescription) {
      return false;
    }
    final l$requirements = requirements;
    final lOther$requirements = other.requirements;
    if (l$requirements != lOther$requirements) {
      return false;
    }
    final l$postCreatedTime = postCreatedTime;
    final lOther$postCreatedTime = other.postCreatedTime;
    if (l$postCreatedTime != lOther$postCreatedTime) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$requestCreatedTime = requestCreatedTime;
    final lOther$requestCreatedTime = other.requestCreatedTime;
    if (l$requestCreatedTime != lOther$requestCreatedTime) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$budget = budget;
    final lOther$budget = other.budget;
    if (l$budget != lOther$budget) {
      return false;
    }
    final l$artist = artist;
    final lOther$artist = other.artist;
    if (l$artist.length != lOther$artist.length) {
      return false;
    }
    for (int i = 0; i < l$artist.length; i++) {
      final l$artist$entry = l$artist[i];
      final lOther$artist$entry = lOther$artist[i];
      if (l$artist$entry != lOther$artist$entry) {
        return false;
      }
    }
    final l$artistPackage = artistPackage;
    final lOther$artistPackage = other.artistPackage;
    if (l$artistPackage.length != lOther$artistPackage.length) {
      return false;
    }
    for (int i = 0; i < l$artistPackage.length; i++) {
      final l$artistPackage$entry = l$artistPackage[i];
      final lOther$artistPackage$entry = lOther$artistPackage[i];
      if (l$artistPackage$entry != lOther$artistPackage$entry) {
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

extension UtilityExtension$Query$OwnRequestsQuery$ownRequests$items
    on Query$OwnRequestsQuery$ownRequests$items {
  CopyWith$Query$OwnRequestsQuery$ownRequests$items<
    Query$OwnRequestsQuery$ownRequests$items
  >
  get copyWith =>
      CopyWith$Query$OwnRequestsQuery$ownRequests$items(this, (i) => i);
}

abstract class CopyWith$Query$OwnRequestsQuery$ownRequests$items<TRes> {
  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items(
    Query$OwnRequestsQuery$ownRequests$items instance,
    TRes Function(Query$OwnRequestsQuery$ownRequests$items) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items;

  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items.stub(TRes res) =
      _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items;

  TRes call({
    String? id,
    String? requestUserId,
    String? artistId,
    String? packageId,
    String? title,
    String? titleUnsigned,
    String? summary,
    String? summaryUnsigned,
    String? detailDescription,
    String? requirements,
    DateTime? postCreatedTime,
    DateTime? updatedAt,
    Enum$RequestType? type,
    Enum$CurrencyType? currency,
    int? duration,
    Enum$RequestStatus? status,
    DateTime? requestCreatedTime,
    String? notes,
    Query$OwnRequestsQuery$ownRequests$items$budget? budget,
    List<Query$OwnRequestsQuery$ownRequests$items$artist>? artist,
    List<Query$OwnRequestsQuery$ownRequests$items$artistPackage>? artistPackage,
    String? $__typename,
  });
  CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> get budget;
  TRes artist(
    Iterable<Query$OwnRequestsQuery$ownRequests$items$artist> Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<
          Query$OwnRequestsQuery$ownRequests$items$artist
        >
      >,
    )
    _fn,
  );
  TRes artistPackage(
    Iterable<Query$OwnRequestsQuery$ownRequests$items$artistPackage> Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<
          Query$OwnRequestsQuery$ownRequests$items$artistPackage
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items(
    this._instance,
    this._then,
  );

  final Query$OwnRequestsQuery$ownRequests$items _instance;

  final TRes Function(Query$OwnRequestsQuery$ownRequests$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? requestUserId = _undefined,
    Object? artistId = _undefined,
    Object? packageId = _undefined,
    Object? title = _undefined,
    Object? titleUnsigned = _undefined,
    Object? summary = _undefined,
    Object? summaryUnsigned = _undefined,
    Object? detailDescription = _undefined,
    Object? requirements = _undefined,
    Object? postCreatedTime = _undefined,
    Object? updatedAt = _undefined,
    Object? type = _undefined,
    Object? currency = _undefined,
    Object? duration = _undefined,
    Object? status = _undefined,
    Object? requestCreatedTime = _undefined,
    Object? notes = _undefined,
    Object? budget = _undefined,
    Object? artist = _undefined,
    Object? artistPackage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery$ownRequests$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      requestUserId: requestUserId == _undefined || requestUserId == null
          ? _instance.requestUserId
          : (requestUserId as String),
      artistId: artistId == _undefined
          ? _instance.artistId
          : (artistId as String?),
      packageId: packageId == _undefined
          ? _instance.packageId
          : (packageId as String?),
      title: title == _undefined ? _instance.title : (title as String?),
      titleUnsigned: titleUnsigned == _undefined
          ? _instance.titleUnsigned
          : (titleUnsigned as String?),
      summary: summary == _undefined ? _instance.summary : (summary as String?),
      summaryUnsigned: summaryUnsigned == _undefined
          ? _instance.summaryUnsigned
          : (summaryUnsigned as String?),
      detailDescription: detailDescription == _undefined
          ? _instance.detailDescription
          : (detailDescription as String?),
      requirements: requirements == _undefined
          ? _instance.requirements
          : (requirements as String?),
      postCreatedTime: postCreatedTime == _undefined
          ? _instance.postCreatedTime
          : (postCreatedTime as DateTime?),
      updatedAt: updatedAt == _undefined
          ? _instance.updatedAt
          : (updatedAt as DateTime?),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$RequestType),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as Enum$CurrencyType),
      duration: duration == _undefined || duration == null
          ? _instance.duration
          : (duration as int),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$RequestStatus),
      requestCreatedTime: requestCreatedTime == _undefined
          ? _instance.requestCreatedTime
          : (requestCreatedTime as DateTime?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      budget: budget == _undefined
          ? _instance.budget
          : (budget as Query$OwnRequestsQuery$ownRequests$items$budget?),
      artist: artist == _undefined || artist == null
          ? _instance.artist
          : (artist as List<Query$OwnRequestsQuery$ownRequests$items$artist>),
      artistPackage: artistPackage == _undefined || artistPackage == null
          ? _instance.artistPackage
          : (artistPackage
                as List<
                  Query$OwnRequestsQuery$ownRequests$items$artistPackage
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> get budget {
    final local$budget = _instance.budget;
    return local$budget == null
        ? CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget.stub(
            _then(_instance),
          )
        : CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget(
            local$budget,
            (e) => call(budget: e),
          );
  }

  TRes artist(
    Iterable<Query$OwnRequestsQuery$ownRequests$items$artist> Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<
          Query$OwnRequestsQuery$ownRequests$items$artist
        >
      >,
    )
    _fn,
  ) => call(
    artist: _fn(
      _instance.artist.map(
        (e) => CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes artistPackage(
    Iterable<Query$OwnRequestsQuery$ownRequests$items$artistPackage> Function(
      Iterable<
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<
          Query$OwnRequestsQuery$ownRequests$items$artistPackage
        >
      >,
    )
    _fn,
  ) => call(
    artistPackage: _fn(
      _instance.artistPackage.map(
        (e) => CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items(this._res);

  TRes _res;

  call({
    String? id,
    String? requestUserId,
    String? artistId,
    String? packageId,
    String? title,
    String? titleUnsigned,
    String? summary,
    String? summaryUnsigned,
    String? detailDescription,
    String? requirements,
    DateTime? postCreatedTime,
    DateTime? updatedAt,
    Enum$RequestType? type,
    Enum$CurrencyType? currency,
    int? duration,
    Enum$RequestStatus? status,
    DateTime? requestCreatedTime,
    String? notes,
    Query$OwnRequestsQuery$ownRequests$items$budget? budget,
    List<Query$OwnRequestsQuery$ownRequests$items$artist>? artist,
    List<Query$OwnRequestsQuery$ownRequests$items$artistPackage>? artistPackage,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> get budget =>
      CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget.stub(_res);

  artist(_fn) => _res;

  artistPackage(_fn) => _res;
}

class Query$OwnRequestsQuery$ownRequests$items$budget {
  Query$OwnRequestsQuery$ownRequests$items$budget({
    required this.min,
    required this.max,
    this.$__typename = 'RequestBudget',
  });

  factory Query$OwnRequestsQuery$ownRequests$items$budget.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$min = json['min'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery$ownRequests$items$budget(
      min: (l$min as num).toDouble(),
      max: (l$max as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double min;

  final double max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$min = min;
    _resultData['min'] = l$min;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([l$min, l$max, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OwnRequestsQuery$ownRequests$items$budget ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
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

extension UtilityExtension$Query$OwnRequestsQuery$ownRequests$items$budget
    on Query$OwnRequestsQuery$ownRequests$items$budget {
  CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<
    Query$OwnRequestsQuery$ownRequests$items$budget
  >
  get copyWith =>
      CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget(this, (i) => i);
}

abstract class CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> {
  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget(
    Query$OwnRequestsQuery$ownRequests$items$budget instance,
    TRes Function(Query$OwnRequestsQuery$ownRequests$items$budget) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$budget;

  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$budget;

  TRes call({double? min, double? max, String? $__typename});
}

class _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$budget<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$budget(
    this._instance,
    this._then,
  );

  final Query$OwnRequestsQuery$ownRequests$items$budget _instance;

  final TRes Function(Query$OwnRequestsQuery$ownRequests$items$budget) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery$ownRequests$items$budget(
      min: min == _undefined || min == null ? _instance.min : (min as double),
      max: max == _undefined || max == null ? _instance.max : (max as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$budget<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items$budget<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$budget(this._res);

  TRes _res;

  call({double? min, double? max, String? $__typename}) => _res;
}

class Query$OwnRequestsQuery$ownRequests$items$artist {
  Query$OwnRequestsQuery$ownRequests$items$artist({
    required this.id,
    required this.userId,
    required this.stageName,
    this.$__typename = 'Artist',
  });

  factory Query$OwnRequestsQuery$ownRequests$items$artist.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$stageName = json['stageName'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery$ownRequests$items$artist(
      id: (l$id as String),
      userId: (l$userId as String),
      stageName: (l$stageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String stageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$stageName = stageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$userId, l$stageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OwnRequestsQuery$ownRequests$items$artist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Query$OwnRequestsQuery$ownRequests$items$artist
    on Query$OwnRequestsQuery$ownRequests$items$artist {
  CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<
    Query$OwnRequestsQuery$ownRequests$items$artist
  >
  get copyWith =>
      CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist(this, (i) => i);
}

abstract class CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<TRes> {
  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist(
    Query$OwnRequestsQuery$ownRequests$items$artist instance,
    TRes Function(Query$OwnRequestsQuery$ownRequests$items$artist) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artist;

  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artist;

  TRes call({
    String? id,
    String? userId,
    String? stageName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artist<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artist(
    this._instance,
    this._then,
  );

  final Query$OwnRequestsQuery$ownRequests$items$artist _instance;

  final TRes Function(Query$OwnRequestsQuery$ownRequests$items$artist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? stageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery$ownRequests$items$artist(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artist<TRes>
    implements CopyWith$Query$OwnRequestsQuery$ownRequests$items$artist<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artist(this._res);

  TRes _res;

  call({String? id, String? userId, String? stageName, String? $__typename}) =>
      _res;
}

class Query$OwnRequestsQuery$ownRequests$items$artistPackage {
  Query$OwnRequestsQuery$ownRequests$items$artistPackage({
    required this.id,
    required this.packageName,
    required this.amount,
    required this.currency,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$OwnRequestsQuery$ownRequests$items$artistPackage.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$packageName = json['packageName'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$OwnRequestsQuery$ownRequests$items$artistPackage(
      id: (l$id as String),
      packageName: (l$packageName as String),
      amount: (l$amount as num).toDouble(),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String packageName;

  final double amount;

  final Enum$CurrencyType currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$packageName = packageName;
    _resultData['packageName'] = l$packageName;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = toJson$Enum$CurrencyType(l$currency);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$packageName = packageName;
    final l$amount = amount;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$packageName,
      l$amount,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OwnRequestsQuery$ownRequests$items$artistPackage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$packageName = packageName;
    final lOther$packageName = other.packageName;
    if (l$packageName != lOther$packageName) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OwnRequestsQuery$ownRequests$items$artistPackage
    on Query$OwnRequestsQuery$ownRequests$items$artistPackage {
  CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<
    Query$OwnRequestsQuery$ownRequests$items$artistPackage
  >
  get copyWith =>
      CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<
  TRes
> {
  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage(
    Query$OwnRequestsQuery$ownRequests$items$artistPackage instance,
    TRes Function(Query$OwnRequestsQuery$ownRequests$items$artistPackage) then,
  ) = _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage;

  factory CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage;

  TRes call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage<TRes>
    implements
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<TRes> {
  _CopyWithImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage(
    this._instance,
    this._then,
  );

  final Query$OwnRequestsQuery$ownRequests$items$artistPackage _instance;

  final TRes Function(Query$OwnRequestsQuery$ownRequests$items$artistPackage)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? packageName = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OwnRequestsQuery$ownRequests$items$artistPackage(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      packageName: packageName == _undefined || packageName == null
          ? _instance.packageName
          : (packageName as String),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as Enum$CurrencyType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage<
  TRes
>
    implements
        CopyWith$Query$OwnRequestsQuery$ownRequests$items$artistPackage<TRes> {
  _CopyWithStubImpl$Query$OwnRequestsQuery$ownRequests$items$artistPackage(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    String? $__typename,
  }) => _res;
}
