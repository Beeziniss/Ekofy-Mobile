import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$listenersProfileQuery {
  factory Variables$Query$listenersProfileQuery({String? userId}) =>
      Variables$Query$listenersProfileQuery._({
        if (userId != null) r'userId': userId,
      });

  Variables$Query$listenersProfileQuery._(this._$data);

  factory Variables$Query$listenersProfileQuery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    return Variables$Query$listenersProfileQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$listenersProfileQuery<
    Variables$Query$listenersProfileQuery
  >
  get copyWith =>
      CopyWith$Variables$Query$listenersProfileQuery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$listenersProfileQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([_$data.containsKey('userId') ? l$userId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$listenersProfileQuery<TRes> {
  factory CopyWith$Variables$Query$listenersProfileQuery(
    Variables$Query$listenersProfileQuery instance,
    TRes Function(Variables$Query$listenersProfileQuery) then,
  ) = _CopyWithImpl$Variables$Query$listenersProfileQuery;

  factory CopyWith$Variables$Query$listenersProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$listenersProfileQuery;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$listenersProfileQuery<TRes>
    implements CopyWith$Variables$Query$listenersProfileQuery<TRes> {
  _CopyWithImpl$Variables$Query$listenersProfileQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$listenersProfileQuery _instance;

  final TRes Function(Variables$Query$listenersProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) => _then(
    Variables$Query$listenersProfileQuery._({
      ..._instance._$data,
      if (userId != _undefined) 'userId': (userId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$listenersProfileQuery<TRes>
    implements CopyWith$Variables$Query$listenersProfileQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$listenersProfileQuery(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$listenersProfileQuery {
  Query$listenersProfileQuery({
    this.listeners,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$listenersProfileQuery.fromJson(Map<String, dynamic> json) {
    final l$listeners = json['listeners'];
    final l$$__typename = json['__typename'];
    return Query$listenersProfileQuery(
      listeners: l$listeners == null
          ? null
          : Query$listenersProfileQuery$listeners.fromJson(
              (l$listeners as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$listenersProfileQuery$listeners? listeners;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listeners = listeners;
    _resultData['listeners'] = l$listeners?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listeners = listeners;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listeners, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$listenersProfileQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$listeners = listeners;
    final lOther$listeners = other.listeners;
    if (l$listeners != lOther$listeners) {
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

extension UtilityExtension$Query$listenersProfileQuery
    on Query$listenersProfileQuery {
  CopyWith$Query$listenersProfileQuery<Query$listenersProfileQuery>
  get copyWith => CopyWith$Query$listenersProfileQuery(this, (i) => i);
}

abstract class CopyWith$Query$listenersProfileQuery<TRes> {
  factory CopyWith$Query$listenersProfileQuery(
    Query$listenersProfileQuery instance,
    TRes Function(Query$listenersProfileQuery) then,
  ) = _CopyWithImpl$Query$listenersProfileQuery;

  factory CopyWith$Query$listenersProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$listenersProfileQuery;

  TRes call({
    Query$listenersProfileQuery$listeners? listeners,
    String? $__typename,
  });
  CopyWith$Query$listenersProfileQuery$listeners<TRes> get listeners;
}

class _CopyWithImpl$Query$listenersProfileQuery<TRes>
    implements CopyWith$Query$listenersProfileQuery<TRes> {
  _CopyWithImpl$Query$listenersProfileQuery(this._instance, this._then);

  final Query$listenersProfileQuery _instance;

  final TRes Function(Query$listenersProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listeners = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$listenersProfileQuery(
      listeners: listeners == _undefined
          ? _instance.listeners
          : (listeners as Query$listenersProfileQuery$listeners?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$listenersProfileQuery$listeners<TRes> get listeners {
    final local$listeners = _instance.listeners;
    return local$listeners == null
        ? CopyWith$Query$listenersProfileQuery$listeners.stub(_then(_instance))
        : CopyWith$Query$listenersProfileQuery$listeners(
            local$listeners,
            (e) => call(listeners: e),
          );
  }
}

class _CopyWithStubImpl$Query$listenersProfileQuery<TRes>
    implements CopyWith$Query$listenersProfileQuery<TRes> {
  _CopyWithStubImpl$Query$listenersProfileQuery(this._res);

  TRes _res;

  call({
    Query$listenersProfileQuery$listeners? listeners,
    String? $__typename,
  }) => _res;

  CopyWith$Query$listenersProfileQuery$listeners<TRes> get listeners =>
      CopyWith$Query$listenersProfileQuery$listeners.stub(_res);
}

const documentNodeQuerylistenersProfileQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'listenersProfileQuery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'listeners'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: IntValueNode(value: '1'),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'userId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: VariableNode(
                              name: NameNode(value: 'userId'),
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
                        name: NameNode(value: 'bannerImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'followerCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'followingCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isVisible'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isVerified'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'email'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'gender'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'birthDate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'phoneNumber'),
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
                              name: NameNode(value: 'lastLoginAt'),
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
Query$listenersProfileQuery _parserFn$Query$listenersProfileQuery(
  Map<String, dynamic> data,
) => Query$listenersProfileQuery.fromJson(data);
typedef OnQueryComplete$Query$listenersProfileQuery =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$listenersProfileQuery?,
    );

class Options$Query$listenersProfileQuery
    extends graphql.QueryOptions<Query$listenersProfileQuery> {
  Options$Query$listenersProfileQuery({
    String? operationName,
    Variables$Query$listenersProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$listenersProfileQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$listenersProfileQuery? onComplete,
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
                 data == null
                     ? null
                     : _parserFn$Query$listenersProfileQuery(data),
               ),
         onError: onError,
         document: documentNodeQuerylistenersProfileQuery,
         parserFn: _parserFn$Query$listenersProfileQuery,
       );

  final OnQueryComplete$Query$listenersProfileQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$listenersProfileQuery
    extends graphql.WatchQueryOptions<Query$listenersProfileQuery> {
  WatchOptions$Query$listenersProfileQuery({
    String? operationName,
    Variables$Query$listenersProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$listenersProfileQuery? typedOptimisticResult,
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
         document: documentNodeQuerylistenersProfileQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$listenersProfileQuery,
       );
}

class FetchMoreOptions$Query$listenersProfileQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$listenersProfileQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$listenersProfileQuery? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQuerylistenersProfileQuery,
       );
}

extension ClientExtension$Query$listenersProfileQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$listenersProfileQuery>>
  query$listenersProfileQuery([
    Options$Query$listenersProfileQuery? options,
  ]) async =>
      await this.query(options ?? Options$Query$listenersProfileQuery());

  graphql.ObservableQuery<Query$listenersProfileQuery>
  watchQuery$listenersProfileQuery([
    WatchOptions$Query$listenersProfileQuery? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$listenersProfileQuery());

  void writeQuery$listenersProfileQuery({
    required Query$listenersProfileQuery data,
    Variables$Query$listenersProfileQuery? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerylistenersProfileQuery,
      ),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$listenersProfileQuery? readQuery$listenersProfileQuery({
    Variables$Query$listenersProfileQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerylistenersProfileQuery,
        ),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$listenersProfileQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$listenersProfileQuery>
useQuery$listenersProfileQuery([
  Options$Query$listenersProfileQuery? options,
]) =>
    graphql_flutter.useQuery(options ?? Options$Query$listenersProfileQuery());
graphql.ObservableQuery<Query$listenersProfileQuery>
useWatchQuery$listenersProfileQuery([
  WatchOptions$Query$listenersProfileQuery? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$listenersProfileQuery(),
);

class Query$listenersProfileQuery$Widget
    extends graphql_flutter.Query<Query$listenersProfileQuery> {
  Query$listenersProfileQuery$Widget({
    widgets.Key? key,
    Options$Query$listenersProfileQuery? options,
    required graphql_flutter.QueryBuilder<Query$listenersProfileQuery> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$listenersProfileQuery(),
         builder: builder,
       );
}

class Query$listenersProfileQuery$listeners {
  Query$listenersProfileQuery$listeners({
    this.items,
    this.$__typename = 'ListenersCollectionSegment',
  });

  factory Query$listenersProfileQuery$listeners.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$listenersProfileQuery$listeners(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$listenersProfileQuery$listeners$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$listenersProfileQuery$listeners$items>? items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$listenersProfileQuery$listeners ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$listenersProfileQuery$listeners
    on Query$listenersProfileQuery$listeners {
  CopyWith$Query$listenersProfileQuery$listeners<
    Query$listenersProfileQuery$listeners
  >
  get copyWith =>
      CopyWith$Query$listenersProfileQuery$listeners(this, (i) => i);
}

abstract class CopyWith$Query$listenersProfileQuery$listeners<TRes> {
  factory CopyWith$Query$listenersProfileQuery$listeners(
    Query$listenersProfileQuery$listeners instance,
    TRes Function(Query$listenersProfileQuery$listeners) then,
  ) = _CopyWithImpl$Query$listenersProfileQuery$listeners;

  factory CopyWith$Query$listenersProfileQuery$listeners.stub(TRes res) =
      _CopyWithStubImpl$Query$listenersProfileQuery$listeners;

  TRes call({
    List<Query$listenersProfileQuery$listeners$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$listenersProfileQuery$listeners$items>? Function(
      Iterable<
        CopyWith$Query$listenersProfileQuery$listeners$items<
          Query$listenersProfileQuery$listeners$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$listenersProfileQuery$listeners<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners<TRes> {
  _CopyWithImpl$Query$listenersProfileQuery$listeners(
    this._instance,
    this._then,
  );

  final Query$listenersProfileQuery$listeners _instance;

  final TRes Function(Query$listenersProfileQuery$listeners) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$listenersProfileQuery$listeners(
          items: items == _undefined
              ? _instance.items
              : (items as List<Query$listenersProfileQuery$listeners$items>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes items(
    Iterable<Query$listenersProfileQuery$listeners$items>? Function(
      Iterable<
        CopyWith$Query$listenersProfileQuery$listeners$items<
          Query$listenersProfileQuery$listeners$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$listenersProfileQuery$listeners$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$listenersProfileQuery$listeners<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners<TRes> {
  _CopyWithStubImpl$Query$listenersProfileQuery$listeners(this._res);

  TRes _res;

  call({
    List<Query$listenersProfileQuery$listeners$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$listenersProfileQuery$listeners$items {
  Query$listenersProfileQuery$listeners$items({
    required this.id,
    required this.userId,
    required this.displayName,
    this.avatarImage,
    this.bannerImage,
    required this.followerCount,
    required this.followingCount,
    required this.isVisible,
    required this.isVerified,
    required this.user,
    this.$__typename = 'Listener',
  });

  factory Query$listenersProfileQuery$listeners$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$displayName = json['displayName'];
    final l$avatarImage = json['avatarImage'];
    final l$bannerImage = json['bannerImage'];
    final l$followerCount = json['followerCount'];
    final l$followingCount = json['followingCount'];
    final l$isVisible = json['isVisible'];
    final l$isVerified = json['isVerified'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$listenersProfileQuery$listeners$items(
      id: (l$id as String),
      userId: (l$userId as String),
      displayName: (l$displayName as String),
      avatarImage: (l$avatarImage as String?),
      bannerImage: (l$bannerImage as String?),
      followerCount: (l$followerCount as int),
      followingCount: (l$followingCount as int),
      isVisible: (l$isVisible as bool),
      isVerified: (l$isVerified as bool),
      user: (l$user as List<dynamic>)
          .map(
            (e) => Query$listenersProfileQuery$listeners$items$user.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String displayName;

  final String? avatarImage;

  final String? bannerImage;

  final int followerCount;

  final int followingCount;

  final bool isVisible;

  final bool isVerified;

  final List<Query$listenersProfileQuery$listeners$items$user> user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$followerCount = followerCount;
    _resultData['followerCount'] = l$followerCount;
    final l$followingCount = followingCount;
    _resultData['followingCount'] = l$followingCount;
    final l$isVisible = isVisible;
    _resultData['isVisible'] = l$isVisible;
    final l$isVerified = isVerified;
    _resultData['isVerified'] = l$isVerified;
    final l$user = user;
    _resultData['user'] = l$user.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$displayName = displayName;
    final l$avatarImage = avatarImage;
    final l$bannerImage = bannerImage;
    final l$followerCount = followerCount;
    final l$followingCount = followingCount;
    final l$isVisible = isVisible;
    final l$isVerified = isVerified;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$displayName,
      l$avatarImage,
      l$bannerImage,
      l$followerCount,
      l$followingCount,
      l$isVisible,
      l$isVerified,
      Object.hashAll(l$user.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$listenersProfileQuery$listeners$items ||
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$followerCount = followerCount;
    final lOther$followerCount = other.followerCount;
    if (l$followerCount != lOther$followerCount) {
      return false;
    }
    final l$followingCount = followingCount;
    final lOther$followingCount = other.followingCount;
    if (l$followingCount != lOther$followingCount) {
      return false;
    }
    final l$isVisible = isVisible;
    final lOther$isVisible = other.isVisible;
    if (l$isVisible != lOther$isVisible) {
      return false;
    }
    final l$isVerified = isVerified;
    final lOther$isVerified = other.isVerified;
    if (l$isVerified != lOther$isVerified) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user.length != lOther$user.length) {
      return false;
    }
    for (int i = 0; i < l$user.length; i++) {
      final l$user$entry = l$user[i];
      final lOther$user$entry = lOther$user[i];
      if (l$user$entry != lOther$user$entry) {
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

extension UtilityExtension$Query$listenersProfileQuery$listeners$items
    on Query$listenersProfileQuery$listeners$items {
  CopyWith$Query$listenersProfileQuery$listeners$items<
    Query$listenersProfileQuery$listeners$items
  >
  get copyWith =>
      CopyWith$Query$listenersProfileQuery$listeners$items(this, (i) => i);
}

abstract class CopyWith$Query$listenersProfileQuery$listeners$items<TRes> {
  factory CopyWith$Query$listenersProfileQuery$listeners$items(
    Query$listenersProfileQuery$listeners$items instance,
    TRes Function(Query$listenersProfileQuery$listeners$items) then,
  ) = _CopyWithImpl$Query$listenersProfileQuery$listeners$items;

  factory CopyWith$Query$listenersProfileQuery$listeners$items.stub(TRes res) =
      _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items;

  TRes call({
    String? id,
    String? userId,
    String? displayName,
    String? avatarImage,
    String? bannerImage,
    int? followerCount,
    int? followingCount,
    bool? isVisible,
    bool? isVerified,
    List<Query$listenersProfileQuery$listeners$items$user>? user,
    String? $__typename,
  });
  TRes user(
    Iterable<Query$listenersProfileQuery$listeners$items$user> Function(
      Iterable<
        CopyWith$Query$listenersProfileQuery$listeners$items$user<
          Query$listenersProfileQuery$listeners$items$user
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$listenersProfileQuery$listeners$items<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners$items<TRes> {
  _CopyWithImpl$Query$listenersProfileQuery$listeners$items(
    this._instance,
    this._then,
  );

  final Query$listenersProfileQuery$listeners$items _instance;

  final TRes Function(Query$listenersProfileQuery$listeners$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? displayName = _undefined,
    Object? avatarImage = _undefined,
    Object? bannerImage = _undefined,
    Object? followerCount = _undefined,
    Object? followingCount = _undefined,
    Object? isVisible = _undefined,
    Object? isVerified = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$listenersProfileQuery$listeners$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      bannerImage: bannerImage == _undefined
          ? _instance.bannerImage
          : (bannerImage as String?),
      followerCount: followerCount == _undefined || followerCount == null
          ? _instance.followerCount
          : (followerCount as int),
      followingCount: followingCount == _undefined || followingCount == null
          ? _instance.followingCount
          : (followingCount as int),
      isVisible: isVisible == _undefined || isVisible == null
          ? _instance.isVisible
          : (isVisible as bool),
      isVerified: isVerified == _undefined || isVerified == null
          ? _instance.isVerified
          : (isVerified as bool),
      user: user == _undefined || user == null
          ? _instance.user
          : (user as List<Query$listenersProfileQuery$listeners$items$user>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes user(
    Iterable<Query$listenersProfileQuery$listeners$items$user> Function(
      Iterable<
        CopyWith$Query$listenersProfileQuery$listeners$items$user<
          Query$listenersProfileQuery$listeners$items$user
        >
      >,
    )
    _fn,
  ) => call(
    user: _fn(
      _instance.user.map(
        (e) => CopyWith$Query$listenersProfileQuery$listeners$items$user(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners$items<TRes> {
  _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? displayName,
    String? avatarImage,
    String? bannerImage,
    int? followerCount,
    int? followingCount,
    bool? isVisible,
    bool? isVerified,
    List<Query$listenersProfileQuery$listeners$items$user>? user,
    String? $__typename,
  }) => _res;

  user(_fn) => _res;
}

class Query$listenersProfileQuery$listeners$items$user {
  Query$listenersProfileQuery$listeners$items$user({
    required this.email,
    required this.gender,
    required this.birthDate,
    this.phoneNumber,
    required this.status,
    this.lastLoginAt,
    required this.createdAt,
    this.$__typename = 'User',
  });

  factory Query$listenersProfileQuery$listeners$items$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$email = json['email'];
    final l$gender = json['gender'];
    final l$birthDate = json['birthDate'];
    final l$phoneNumber = json['phoneNumber'];
    final l$status = json['status'];
    final l$lastLoginAt = json['lastLoginAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$listenersProfileQuery$listeners$items$user(
      email: (l$email as String),
      gender: fromJson$Enum$UserGender((l$gender as String)),
      birthDate: DateTime.parse((l$birthDate as String)),
      phoneNumber: (l$phoneNumber as String?),
      status: fromJson$Enum$UserStatus((l$status as String)),
      lastLoginAt: l$lastLoginAt == null
          ? null
          : DateTime.parse((l$lastLoginAt as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final Enum$UserGender gender;

  final DateTime birthDate;

  final String? phoneNumber;

  final Enum$UserStatus status;

  final DateTime? lastLoginAt;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$gender = gender;
    _resultData['gender'] = toJson$Enum$UserGender(l$gender);
    final l$birthDate = birthDate;
    _resultData['birthDate'] = l$birthDate.toIso8601String();
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$status = status;
    _resultData['status'] = toJson$Enum$UserStatus(l$status);
    final l$lastLoginAt = lastLoginAt;
    _resultData['lastLoginAt'] = l$lastLoginAt?.toIso8601String();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$gender = gender;
    final l$birthDate = birthDate;
    final l$phoneNumber = phoneNumber;
    final l$status = status;
    final l$lastLoginAt = lastLoginAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$gender,
      l$birthDate,
      l$phoneNumber,
      l$status,
      l$lastLoginAt,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$listenersProfileQuery$listeners$items$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$lastLoginAt = lastLoginAt;
    final lOther$lastLoginAt = other.lastLoginAt;
    if (l$lastLoginAt != lOther$lastLoginAt) {
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

extension UtilityExtension$Query$listenersProfileQuery$listeners$items$user
    on Query$listenersProfileQuery$listeners$items$user {
  CopyWith$Query$listenersProfileQuery$listeners$items$user<
    Query$listenersProfileQuery$listeners$items$user
  >
  get copyWith =>
      CopyWith$Query$listenersProfileQuery$listeners$items$user(this, (i) => i);
}

abstract class CopyWith$Query$listenersProfileQuery$listeners$items$user<TRes> {
  factory CopyWith$Query$listenersProfileQuery$listeners$items$user(
    Query$listenersProfileQuery$listeners$items$user instance,
    TRes Function(Query$listenersProfileQuery$listeners$items$user) then,
  ) = _CopyWithImpl$Query$listenersProfileQuery$listeners$items$user;

  factory CopyWith$Query$listenersProfileQuery$listeners$items$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items$user;

  TRes call({
    String? email,
    Enum$UserGender? gender,
    DateTime? birthDate,
    String? phoneNumber,
    Enum$UserStatus? status,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$listenersProfileQuery$listeners$items$user<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners$items$user<TRes> {
  _CopyWithImpl$Query$listenersProfileQuery$listeners$items$user(
    this._instance,
    this._then,
  );

  final Query$listenersProfileQuery$listeners$items$user _instance;

  final TRes Function(Query$listenersProfileQuery$listeners$items$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? gender = _undefined,
    Object? birthDate = _undefined,
    Object? phoneNumber = _undefined,
    Object? status = _undefined,
    Object? lastLoginAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$listenersProfileQuery$listeners$items$user(
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      gender: gender == _undefined || gender == null
          ? _instance.gender
          : (gender as Enum$UserGender),
      birthDate: birthDate == _undefined || birthDate == null
          ? _instance.birthDate
          : (birthDate as DateTime),
      phoneNumber: phoneNumber == _undefined
          ? _instance.phoneNumber
          : (phoneNumber as String?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$UserStatus),
      lastLoginAt: lastLoginAt == _undefined
          ? _instance.lastLoginAt
          : (lastLoginAt as DateTime?),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items$user<TRes>
    implements CopyWith$Query$listenersProfileQuery$listeners$items$user<TRes> {
  _CopyWithStubImpl$Query$listenersProfileQuery$listeners$items$user(this._res);

  TRes _res;

  call({
    String? email,
    Enum$UserGender? gender,
    DateTime? birthDate,
    String? phoneNumber,
    Enum$UserStatus? status,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    String? $__typename,
  }) => _res;
}
