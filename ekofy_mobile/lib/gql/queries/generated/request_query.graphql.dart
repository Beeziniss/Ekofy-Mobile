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
