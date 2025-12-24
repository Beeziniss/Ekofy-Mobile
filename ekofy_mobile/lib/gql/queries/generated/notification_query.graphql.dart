import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$notificationsForUserQuery {
  factory Variables$Query$notificationsForUserQuery({required String userId}) =>
      Variables$Query$notificationsForUserQuery._({r'userId': userId});

  Variables$Query$notificationsForUserQuery._(this._$data);

  factory Variables$Query$notificationsForUserQuery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$notificationsForUserQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$notificationsForUserQuery<
    Variables$Query$notificationsForUserQuery
  >
  get copyWith =>
      CopyWith$Variables$Query$notificationsForUserQuery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$notificationsForUserQuery ||
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

abstract class CopyWith$Variables$Query$notificationsForUserQuery<TRes> {
  factory CopyWith$Variables$Query$notificationsForUserQuery(
    Variables$Query$notificationsForUserQuery instance,
    TRes Function(Variables$Query$notificationsForUserQuery) then,
  ) = _CopyWithImpl$Variables$Query$notificationsForUserQuery;

  factory CopyWith$Variables$Query$notificationsForUserQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$notificationsForUserQuery;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$notificationsForUserQuery<TRes>
    implements CopyWith$Variables$Query$notificationsForUserQuery<TRes> {
  _CopyWithImpl$Variables$Query$notificationsForUserQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$notificationsForUserQuery _instance;

  final TRes Function(Variables$Query$notificationsForUserQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) => _then(
    Variables$Query$notificationsForUserQuery._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$notificationsForUserQuery<TRes>
    implements CopyWith$Variables$Query$notificationsForUserQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$notificationsForUserQuery(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$notificationsForUserQuery {
  Query$notificationsForUserQuery({
    this.notificationsForUser,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$notificationsForUserQuery.fromJson(Map<String, dynamic> json) {
    final l$notificationsForUser = json['notificationsForUser'];
    final l$$__typename = json['__typename'];
    return Query$notificationsForUserQuery(
      notificationsForUser: l$notificationsForUser == null
          ? null
          : Query$notificationsForUserQuery$notificationsForUser.fromJson(
              (l$notificationsForUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$notificationsForUserQuery$notificationsForUser?
  notificationsForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationsForUser = notificationsForUser;
    _resultData['notificationsForUser'] = l$notificationsForUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationsForUser = notificationsForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$notificationsForUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$notificationsForUserQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationsForUser = notificationsForUser;
    final lOther$notificationsForUser = other.notificationsForUser;
    if (l$notificationsForUser != lOther$notificationsForUser) {
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

extension UtilityExtension$Query$notificationsForUserQuery
    on Query$notificationsForUserQuery {
  CopyWith$Query$notificationsForUserQuery<Query$notificationsForUserQuery>
  get copyWith => CopyWith$Query$notificationsForUserQuery(this, (i) => i);
}

abstract class CopyWith$Query$notificationsForUserQuery<TRes> {
  factory CopyWith$Query$notificationsForUserQuery(
    Query$notificationsForUserQuery instance,
    TRes Function(Query$notificationsForUserQuery) then,
  ) = _CopyWithImpl$Query$notificationsForUserQuery;

  factory CopyWith$Query$notificationsForUserQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$notificationsForUserQuery;

  TRes call({
    Query$notificationsForUserQuery$notificationsForUser? notificationsForUser,
    String? $__typename,
  });
  CopyWith$Query$notificationsForUserQuery$notificationsForUser<TRes>
  get notificationsForUser;
}

class _CopyWithImpl$Query$notificationsForUserQuery<TRes>
    implements CopyWith$Query$notificationsForUserQuery<TRes> {
  _CopyWithImpl$Query$notificationsForUserQuery(this._instance, this._then);

  final Query$notificationsForUserQuery _instance;

  final TRes Function(Query$notificationsForUserQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notificationsForUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$notificationsForUserQuery(
      notificationsForUser: notificationsForUser == _undefined
          ? _instance.notificationsForUser
          : (notificationsForUser
                as Query$notificationsForUserQuery$notificationsForUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$notificationsForUserQuery$notificationsForUser<TRes>
  get notificationsForUser {
    final local$notificationsForUser = _instance.notificationsForUser;
    return local$notificationsForUser == null
        ? CopyWith$Query$notificationsForUserQuery$notificationsForUser.stub(
            _then(_instance),
          )
        : CopyWith$Query$notificationsForUserQuery$notificationsForUser(
            local$notificationsForUser,
            (e) => call(notificationsForUser: e),
          );
  }
}

class _CopyWithStubImpl$Query$notificationsForUserQuery<TRes>
    implements CopyWith$Query$notificationsForUserQuery<TRes> {
  _CopyWithStubImpl$Query$notificationsForUserQuery(this._res);

  TRes _res;

  call({
    Query$notificationsForUserQuery$notificationsForUser? notificationsForUser,
    String? $__typename,
  }) => _res;

  CopyWith$Query$notificationsForUserQuery$notificationsForUser<TRes>
  get notificationsForUser =>
      CopyWith$Query$notificationsForUserQuery$notificationsForUser.stub(_res);
}

const documentNodeQuerynotificationsForUserQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'notificationsForUserQuery'),
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
            name: NameNode(value: 'notificationsForUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
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
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'nodes'),
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
                        name: NameNode(value: 'actorId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'targetId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'relatedId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'relatedType'),
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
                        name: NameNode(value: 'mobileUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'readAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'action'),
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
Query$notificationsForUserQuery _parserFn$Query$notificationsForUserQuery(
  Map<String, dynamic> data,
) => Query$notificationsForUserQuery.fromJson(data);
typedef OnQueryComplete$Query$notificationsForUserQuery =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$notificationsForUserQuery?,
    );

class Options$Query$notificationsForUserQuery
    extends graphql.QueryOptions<Query$notificationsForUserQuery> {
  Options$Query$notificationsForUserQuery({
    String? operationName,
    required Variables$Query$notificationsForUserQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$notificationsForUserQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$notificationsForUserQuery? onComplete,
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
                 data == null
                     ? null
                     : _parserFn$Query$notificationsForUserQuery(data),
               ),
         onError: onError,
         document: documentNodeQuerynotificationsForUserQuery,
         parserFn: _parserFn$Query$notificationsForUserQuery,
       );

  final OnQueryComplete$Query$notificationsForUserQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$notificationsForUserQuery
    extends graphql.WatchQueryOptions<Query$notificationsForUserQuery> {
  WatchOptions$Query$notificationsForUserQuery({
    String? operationName,
    required Variables$Query$notificationsForUserQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$notificationsForUserQuery? typedOptimisticResult,
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
         document: documentNodeQuerynotificationsForUserQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$notificationsForUserQuery,
       );
}

class FetchMoreOptions$Query$notificationsForUserQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$notificationsForUserQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$notificationsForUserQuery variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerynotificationsForUserQuery,
       );
}

extension ClientExtension$Query$notificationsForUserQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$notificationsForUserQuery>>
  query$notificationsForUserQuery(
    Options$Query$notificationsForUserQuery options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$notificationsForUserQuery>
  watchQuery$notificationsForUserQuery(
    WatchOptions$Query$notificationsForUserQuery options,
  ) => this.watchQuery(options);

  void writeQuery$notificationsForUserQuery({
    required Query$notificationsForUserQuery data,
    required Variables$Query$notificationsForUserQuery variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerynotificationsForUserQuery,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$notificationsForUserQuery? readQuery$notificationsForUserQuery({
    required Variables$Query$notificationsForUserQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerynotificationsForUserQuery,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$notificationsForUserQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$notificationsForUserQuery>
useQuery$notificationsForUserQuery(
  Options$Query$notificationsForUserQuery options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$notificationsForUserQuery>
useWatchQuery$notificationsForUserQuery(
  WatchOptions$Query$notificationsForUserQuery options,
) => graphql_flutter.useWatchQuery(options);

class Query$notificationsForUserQuery$Widget
    extends graphql_flutter.Query<Query$notificationsForUserQuery> {
  Query$notificationsForUserQuery$Widget({
    widgets.Key? key,
    required Options$Query$notificationsForUserQuery options,
    required graphql_flutter.QueryBuilder<Query$notificationsForUserQuery>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$notificationsForUserQuery$notificationsForUser {
  Query$notificationsForUserQuery$notificationsForUser({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'NotificationsForUserConnection',
  });

  factory Query$notificationsForUserQuery$notificationsForUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$notificationsForUserQuery$notificationsForUser(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$notificationsForUserQuery$notificationsForUser$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$notificationsForUserQuery$notificationsForUser$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$notificationsForUserQuery$notificationsForUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$notificationsForUserQuery$notificationsForUser
    on Query$notificationsForUserQuery$notificationsForUser {
  CopyWith$Query$notificationsForUserQuery$notificationsForUser<
    Query$notificationsForUserQuery$notificationsForUser
  >
  get copyWith => CopyWith$Query$notificationsForUserQuery$notificationsForUser(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$notificationsForUserQuery$notificationsForUser<
  TRes
> {
  factory CopyWith$Query$notificationsForUserQuery$notificationsForUser(
    Query$notificationsForUserQuery$notificationsForUser instance,
    TRes Function(Query$notificationsForUserQuery$notificationsForUser) then,
  ) = _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser;

  factory CopyWith$Query$notificationsForUserQuery$notificationsForUser.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser;

  TRes call({
    int? totalCount,
    List<Query$notificationsForUserQuery$notificationsForUser$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$notificationsForUserQuery$notificationsForUser$nodes>?
    Function(
      Iterable<
        CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
          Query$notificationsForUserQuery$notificationsForUser$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser<TRes>
    implements
        CopyWith$Query$notificationsForUserQuery$notificationsForUser<TRes> {
  _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser(
    this._instance,
    this._then,
  );

  final Query$notificationsForUserQuery$notificationsForUser _instance;

  final TRes Function(Query$notificationsForUserQuery$notificationsForUser)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$notificationsForUserQuery$notificationsForUser(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$notificationsForUserQuery$notificationsForUser$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$notificationsForUserQuery$notificationsForUser$nodes>?
    Function(
      Iterable<
        CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
          Query$notificationsForUserQuery$notificationsForUser$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser<
  TRes
>
    implements
        CopyWith$Query$notificationsForUserQuery$notificationsForUser<TRes> {
  _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    List<Query$notificationsForUserQuery$notificationsForUser$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$notificationsForUserQuery$notificationsForUser$nodes {
  Query$notificationsForUserQuery$notificationsForUser$nodes({
    required this.id,
    required this.actorId,
    required this.targetId,
    this.relatedId,
    this.relatedType,
    required this.content,
    this.mobileUrl,
    required this.isRead,
    this.readAt,
    required this.action,
    required this.createdAt,
    this.$__typename = 'Notification',
  });

  factory Query$notificationsForUserQuery$notificationsForUser$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$actorId = json['actorId'];
    final l$targetId = json['targetId'];
    final l$relatedId = json['relatedId'];
    final l$relatedType = json['relatedType'];
    final l$content = json['content'];
    final l$mobileUrl = json['mobileUrl'];
    final l$isRead = json['isRead'];
    final l$readAt = json['readAt'];
    final l$action = json['action'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$notificationsForUserQuery$notificationsForUser$nodes(
      id: (l$id as String),
      actorId: (l$actorId as String),
      targetId: (l$targetId as String),
      relatedId: (l$relatedId as String?),
      relatedType: l$relatedType == null
          ? null
          : fromJson$Enum$NotificationRelatedType((l$relatedType as String)),
      content: (l$content as String),
      mobileUrl: (l$mobileUrl as String?),
      isRead: (l$isRead as bool),
      readAt: l$readAt == null ? null : DateTime.parse((l$readAt as String)),
      action: fromJson$Enum$NotificationActionType((l$action as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String actorId;

  final String targetId;

  final String? relatedId;

  final Enum$NotificationRelatedType? relatedType;

  final String content;

  final String? mobileUrl;

  final bool isRead;

  final DateTime? readAt;

  final Enum$NotificationActionType action;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$actorId = actorId;
    _resultData['actorId'] = l$actorId;
    final l$targetId = targetId;
    _resultData['targetId'] = l$targetId;
    final l$relatedId = relatedId;
    _resultData['relatedId'] = l$relatedId;
    final l$relatedType = relatedType;
    _resultData['relatedType'] = l$relatedType == null
        ? null
        : toJson$Enum$NotificationRelatedType(l$relatedType);
    final l$content = content;
    _resultData['content'] = l$content;
    final l$mobileUrl = mobileUrl;
    _resultData['mobileUrl'] = l$mobileUrl;
    final l$isRead = isRead;
    _resultData['isRead'] = l$isRead;
    final l$readAt = readAt;
    _resultData['readAt'] = l$readAt?.toIso8601String();
    final l$action = action;
    _resultData['action'] = toJson$Enum$NotificationActionType(l$action);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$actorId = actorId;
    final l$targetId = targetId;
    final l$relatedId = relatedId;
    final l$relatedType = relatedType;
    final l$content = content;
    final l$mobileUrl = mobileUrl;
    final l$isRead = isRead;
    final l$readAt = readAt;
    final l$action = action;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$actorId,
      l$targetId,
      l$relatedId,
      l$relatedType,
      l$content,
      l$mobileUrl,
      l$isRead,
      l$readAt,
      l$action,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$notificationsForUserQuery$notificationsForUser$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$actorId = actorId;
    final lOther$actorId = other.actorId;
    if (l$actorId != lOther$actorId) {
      return false;
    }
    final l$targetId = targetId;
    final lOther$targetId = other.targetId;
    if (l$targetId != lOther$targetId) {
      return false;
    }
    final l$relatedId = relatedId;
    final lOther$relatedId = other.relatedId;
    if (l$relatedId != lOther$relatedId) {
      return false;
    }
    final l$relatedType = relatedType;
    final lOther$relatedType = other.relatedType;
    if (l$relatedType != lOther$relatedType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$mobileUrl = mobileUrl;
    final lOther$mobileUrl = other.mobileUrl;
    if (l$mobileUrl != lOther$mobileUrl) {
      return false;
    }
    final l$isRead = isRead;
    final lOther$isRead = other.isRead;
    if (l$isRead != lOther$isRead) {
      return false;
    }
    final l$readAt = readAt;
    final lOther$readAt = other.readAt;
    if (l$readAt != lOther$readAt) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$notificationsForUserQuery$notificationsForUser$nodes
    on Query$notificationsForUserQuery$notificationsForUser$nodes {
  CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
    Query$notificationsForUserQuery$notificationsForUser$nodes
  >
  get copyWith =>
      CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
  TRes
> {
  factory CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes(
    Query$notificationsForUserQuery$notificationsForUser$nodes instance,
    TRes Function(Query$notificationsForUserQuery$notificationsForUser$nodes)
    then,
  ) = _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser$nodes;

  factory CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser$nodes;

  TRes call({
    String? id,
    String? actorId,
    String? targetId,
    String? relatedId,
    Enum$NotificationRelatedType? relatedType,
    String? content,
    String? mobileUrl,
    bool? isRead,
    DateTime? readAt,
    Enum$NotificationActionType? action,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser$nodes<
  TRes
>
    implements
        CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
          TRes
        > {
  _CopyWithImpl$Query$notificationsForUserQuery$notificationsForUser$nodes(
    this._instance,
    this._then,
  );

  final Query$notificationsForUserQuery$notificationsForUser$nodes _instance;

  final TRes Function(
    Query$notificationsForUserQuery$notificationsForUser$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? actorId = _undefined,
    Object? targetId = _undefined,
    Object? relatedId = _undefined,
    Object? relatedType = _undefined,
    Object? content = _undefined,
    Object? mobileUrl = _undefined,
    Object? isRead = _undefined,
    Object? readAt = _undefined,
    Object? action = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$notificationsForUserQuery$notificationsForUser$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      actorId: actorId == _undefined || actorId == null
          ? _instance.actorId
          : (actorId as String),
      targetId: targetId == _undefined || targetId == null
          ? _instance.targetId
          : (targetId as String),
      relatedId: relatedId == _undefined
          ? _instance.relatedId
          : (relatedId as String?),
      relatedType: relatedType == _undefined
          ? _instance.relatedType
          : (relatedType as Enum$NotificationRelatedType?),
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      mobileUrl: mobileUrl == _undefined
          ? _instance.mobileUrl
          : (mobileUrl as String?),
      isRead: isRead == _undefined || isRead == null
          ? _instance.isRead
          : (isRead as bool),
      readAt: readAt == _undefined ? _instance.readAt : (readAt as DateTime?),
      action: action == _undefined || action == null
          ? _instance.action
          : (action as Enum$NotificationActionType),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser$nodes<
  TRes
>
    implements
        CopyWith$Query$notificationsForUserQuery$notificationsForUser$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$notificationsForUserQuery$notificationsForUser$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? actorId,
    String? targetId,
    String? relatedId,
    Enum$NotificationRelatedType? relatedType,
    String? content,
    String? mobileUrl,
    bool? isRead,
    DateTime? readAt,
    Enum$NotificationActionType? action,
    DateTime? createdAt,
    String? $__typename,
  }) => _res;
}

class Variables$Query$checkReadNotification {
  factory Variables$Query$checkReadNotification({required String userId}) =>
      Variables$Query$checkReadNotification._({r'userId': userId});

  Variables$Query$checkReadNotification._(this._$data);

  factory Variables$Query$checkReadNotification.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$checkReadNotification._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$checkReadNotification<
    Variables$Query$checkReadNotification
  >
  get copyWith =>
      CopyWith$Variables$Query$checkReadNotification(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$checkReadNotification ||
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

abstract class CopyWith$Variables$Query$checkReadNotification<TRes> {
  factory CopyWith$Variables$Query$checkReadNotification(
    Variables$Query$checkReadNotification instance,
    TRes Function(Variables$Query$checkReadNotification) then,
  ) = _CopyWithImpl$Variables$Query$checkReadNotification;

  factory CopyWith$Variables$Query$checkReadNotification.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$checkReadNotification;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$checkReadNotification<TRes>
    implements CopyWith$Variables$Query$checkReadNotification<TRes> {
  _CopyWithImpl$Variables$Query$checkReadNotification(
    this._instance,
    this._then,
  );

  final Variables$Query$checkReadNotification _instance;

  final TRes Function(Variables$Query$checkReadNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) => _then(
    Variables$Query$checkReadNotification._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$checkReadNotification<TRes>
    implements CopyWith$Variables$Query$checkReadNotification<TRes> {
  _CopyWithStubImpl$Variables$Query$checkReadNotification(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$checkReadNotification {
  Query$checkReadNotification({
    this.notificationsForUser,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$checkReadNotification.fromJson(Map<String, dynamic> json) {
    final l$notificationsForUser = json['notificationsForUser'];
    final l$$__typename = json['__typename'];
    return Query$checkReadNotification(
      notificationsForUser: l$notificationsForUser == null
          ? null
          : Query$checkReadNotification$notificationsForUser.fromJson(
              (l$notificationsForUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$checkReadNotification$notificationsForUser? notificationsForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationsForUser = notificationsForUser;
    _resultData['notificationsForUser'] = l$notificationsForUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationsForUser = notificationsForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$notificationsForUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$checkReadNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationsForUser = notificationsForUser;
    final lOther$notificationsForUser = other.notificationsForUser;
    if (l$notificationsForUser != lOther$notificationsForUser) {
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

extension UtilityExtension$Query$checkReadNotification
    on Query$checkReadNotification {
  CopyWith$Query$checkReadNotification<Query$checkReadNotification>
  get copyWith => CopyWith$Query$checkReadNotification(this, (i) => i);
}

abstract class CopyWith$Query$checkReadNotification<TRes> {
  factory CopyWith$Query$checkReadNotification(
    Query$checkReadNotification instance,
    TRes Function(Query$checkReadNotification) then,
  ) = _CopyWithImpl$Query$checkReadNotification;

  factory CopyWith$Query$checkReadNotification.stub(TRes res) =
      _CopyWithStubImpl$Query$checkReadNotification;

  TRes call({
    Query$checkReadNotification$notificationsForUser? notificationsForUser,
    String? $__typename,
  });
  CopyWith$Query$checkReadNotification$notificationsForUser<TRes>
  get notificationsForUser;
}

class _CopyWithImpl$Query$checkReadNotification<TRes>
    implements CopyWith$Query$checkReadNotification<TRes> {
  _CopyWithImpl$Query$checkReadNotification(this._instance, this._then);

  final Query$checkReadNotification _instance;

  final TRes Function(Query$checkReadNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notificationsForUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$checkReadNotification(
      notificationsForUser: notificationsForUser == _undefined
          ? _instance.notificationsForUser
          : (notificationsForUser
                as Query$checkReadNotification$notificationsForUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$checkReadNotification$notificationsForUser<TRes>
  get notificationsForUser {
    final local$notificationsForUser = _instance.notificationsForUser;
    return local$notificationsForUser == null
        ? CopyWith$Query$checkReadNotification$notificationsForUser.stub(
            _then(_instance),
          )
        : CopyWith$Query$checkReadNotification$notificationsForUser(
            local$notificationsForUser,
            (e) => call(notificationsForUser: e),
          );
  }
}

class _CopyWithStubImpl$Query$checkReadNotification<TRes>
    implements CopyWith$Query$checkReadNotification<TRes> {
  _CopyWithStubImpl$Query$checkReadNotification(this._res);

  TRes _res;

  call({
    Query$checkReadNotification$notificationsForUser? notificationsForUser,
    String? $__typename,
  }) => _res;

  CopyWith$Query$checkReadNotification$notificationsForUser<TRes>
  get notificationsForUser =>
      CopyWith$Query$checkReadNotification$notificationsForUser.stub(_res);
}

const documentNodeQuerycheckReadNotification = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'checkReadNotification'),
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
            name: NameNode(value: 'notificationsForUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isRead'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: false),
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
Query$checkReadNotification _parserFn$Query$checkReadNotification(
  Map<String, dynamic> data,
) => Query$checkReadNotification.fromJson(data);
typedef OnQueryComplete$Query$checkReadNotification =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$checkReadNotification?,
    );

class Options$Query$checkReadNotification
    extends graphql.QueryOptions<Query$checkReadNotification> {
  Options$Query$checkReadNotification({
    String? operationName,
    required Variables$Query$checkReadNotification variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$checkReadNotification? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$checkReadNotification? onComplete,
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
                 data == null
                     ? null
                     : _parserFn$Query$checkReadNotification(data),
               ),
         onError: onError,
         document: documentNodeQuerycheckReadNotification,
         parserFn: _parserFn$Query$checkReadNotification,
       );

  final OnQueryComplete$Query$checkReadNotification? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$checkReadNotification
    extends graphql.WatchQueryOptions<Query$checkReadNotification> {
  WatchOptions$Query$checkReadNotification({
    String? operationName,
    required Variables$Query$checkReadNotification variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$checkReadNotification? typedOptimisticResult,
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
         document: documentNodeQuerycheckReadNotification,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$checkReadNotification,
       );
}

class FetchMoreOptions$Query$checkReadNotification
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$checkReadNotification({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$checkReadNotification variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerycheckReadNotification,
       );
}

extension ClientExtension$Query$checkReadNotification on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$checkReadNotification>>
  query$checkReadNotification(
    Options$Query$checkReadNotification options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$checkReadNotification>
  watchQuery$checkReadNotification(
    WatchOptions$Query$checkReadNotification options,
  ) => this.watchQuery(options);

  void writeQuery$checkReadNotification({
    required Query$checkReadNotification data,
    required Variables$Query$checkReadNotification variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerycheckReadNotification,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$checkReadNotification? readQuery$checkReadNotification({
    required Variables$Query$checkReadNotification variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerycheckReadNotification,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$checkReadNotification.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$checkReadNotification>
useQuery$checkReadNotification(Options$Query$checkReadNotification options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$checkReadNotification>
useWatchQuery$checkReadNotification(
  WatchOptions$Query$checkReadNotification options,
) => graphql_flutter.useWatchQuery(options);

class Query$checkReadNotification$Widget
    extends graphql_flutter.Query<Query$checkReadNotification> {
  Query$checkReadNotification$Widget({
    widgets.Key? key,
    required Options$Query$checkReadNotification options,
    required graphql_flutter.QueryBuilder<Query$checkReadNotification> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$checkReadNotification$notificationsForUser {
  Query$checkReadNotification$notificationsForUser({
    required this.totalCount,
    this.$__typename = 'NotificationsForUserConnection',
  });

  factory Query$checkReadNotification$notificationsForUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$checkReadNotification$notificationsForUser(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$totalCount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$checkReadNotification$notificationsForUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$checkReadNotification$notificationsForUser
    on Query$checkReadNotification$notificationsForUser {
  CopyWith$Query$checkReadNotification$notificationsForUser<
    Query$checkReadNotification$notificationsForUser
  >
  get copyWith =>
      CopyWith$Query$checkReadNotification$notificationsForUser(this, (i) => i);
}

abstract class CopyWith$Query$checkReadNotification$notificationsForUser<TRes> {
  factory CopyWith$Query$checkReadNotification$notificationsForUser(
    Query$checkReadNotification$notificationsForUser instance,
    TRes Function(Query$checkReadNotification$notificationsForUser) then,
  ) = _CopyWithImpl$Query$checkReadNotification$notificationsForUser;

  factory CopyWith$Query$checkReadNotification$notificationsForUser.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$checkReadNotification$notificationsForUser;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$checkReadNotification$notificationsForUser<TRes>
    implements CopyWith$Query$checkReadNotification$notificationsForUser<TRes> {
  _CopyWithImpl$Query$checkReadNotification$notificationsForUser(
    this._instance,
    this._then,
  );

  final Query$checkReadNotification$notificationsForUser _instance;

  final TRes Function(Query$checkReadNotification$notificationsForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$checkReadNotification$notificationsForUser(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$checkReadNotification$notificationsForUser<TRes>
    implements CopyWith$Query$checkReadNotification$notificationsForUser<TRes> {
  _CopyWithStubImpl$Query$checkReadNotification$notificationsForUser(this._res);

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}
