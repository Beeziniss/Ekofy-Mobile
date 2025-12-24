import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Playlists {
  factory Variables$Query$Playlists({
    required String userId,
    String? name,
    int? take,
    int? skip,
  }) => Variables$Query$Playlists._({
    r'userId': userId,
    if (name != null) r'name': name,
    if (take != null) r'take': take,
    if (skip != null) r'skip': skip,
  });

  Variables$Query$Playlists._(this._$data);

  factory Variables$Query$Playlists.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    return Variables$Query$Playlists._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String? get name => (_$data['name'] as String?);

  int? get take => (_$data['take'] as int?);

  int? get skip => (_$data['skip'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
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

  CopyWith$Variables$Query$Playlists<Variables$Query$Playlists> get copyWith =>
      CopyWith$Variables$Query$Playlists(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Playlists ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$userId = userId;
    final l$name = name;
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([
      l$userId,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('skip') ? l$skip : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Playlists<TRes> {
  factory CopyWith$Variables$Query$Playlists(
    Variables$Query$Playlists instance,
    TRes Function(Variables$Query$Playlists) then,
  ) = _CopyWithImpl$Variables$Query$Playlists;

  factory CopyWith$Variables$Query$Playlists.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Playlists;

  TRes call({String? userId, String? name, int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$Playlists<TRes>
    implements CopyWith$Variables$Query$Playlists<TRes> {
  _CopyWithImpl$Variables$Query$Playlists(this._instance, this._then);

  final Variables$Query$Playlists _instance;

  final TRes Function(Variables$Query$Playlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? name = _undefined,
    Object? take = _undefined,
    Object? skip = _undefined,
  }) => _then(
    Variables$Query$Playlists._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
      if (name != _undefined) 'name': (name as String?),
      if (take != _undefined) 'take': (take as int?),
      if (skip != _undefined) 'skip': (skip as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Playlists<TRes>
    implements CopyWith$Variables$Query$Playlists<TRes> {
  _CopyWithStubImpl$Variables$Query$Playlists(this._res);

  TRes _res;

  call({String? userId, String? name, int? take, int? skip}) => _res;
}

class Query$Playlists {
  Query$Playlists({this.playlists, this.$__typename = 'QueryInitialization'});

  factory Query$Playlists.fromJson(Map<String, dynamic> json) {
    final l$playlists = json['playlists'];
    final l$$__typename = json['__typename'];
    return Query$Playlists(
      playlists: l$playlists == null
          ? null
          : Query$Playlists$playlists.fromJson(
              (l$playlists as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Playlists$playlists? playlists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$playlists = playlists;
    _resultData['playlists'] = l$playlists?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$playlists = playlists;
    final l$$__typename = $__typename;
    return Object.hashAll([l$playlists, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Playlists || runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlists = playlists;
    final lOther$playlists = other.playlists;
    if (l$playlists != lOther$playlists) {
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

extension UtilityExtension$Query$Playlists on Query$Playlists {
  CopyWith$Query$Playlists<Query$Playlists> get copyWith =>
      CopyWith$Query$Playlists(this, (i) => i);
}

abstract class CopyWith$Query$Playlists<TRes> {
  factory CopyWith$Query$Playlists(
    Query$Playlists instance,
    TRes Function(Query$Playlists) then,
  ) = _CopyWithImpl$Query$Playlists;

  factory CopyWith$Query$Playlists.stub(TRes res) =
      _CopyWithStubImpl$Query$Playlists;

  TRes call({Query$Playlists$playlists? playlists, String? $__typename});
  CopyWith$Query$Playlists$playlists<TRes> get playlists;
}

class _CopyWithImpl$Query$Playlists<TRes>
    implements CopyWith$Query$Playlists<TRes> {
  _CopyWithImpl$Query$Playlists(this._instance, this._then);

  final Query$Playlists _instance;

  final TRes Function(Query$Playlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlists = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Playlists(
      playlists: playlists == _undefined
          ? _instance.playlists
          : (playlists as Query$Playlists$playlists?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Playlists$playlists<TRes> get playlists {
    final local$playlists = _instance.playlists;
    return local$playlists == null
        ? CopyWith$Query$Playlists$playlists.stub(_then(_instance))
        : CopyWith$Query$Playlists$playlists(
            local$playlists,
            (e) => call(playlists: e),
          );
  }
}

class _CopyWithStubImpl$Query$Playlists<TRes>
    implements CopyWith$Query$Playlists<TRes> {
  _CopyWithStubImpl$Query$Playlists(this._res);

  TRes _res;

  call({Query$Playlists$playlists? playlists, String? $__typename}) => _res;

  CopyWith$Query$Playlists$playlists<TRes> get playlists =>
      CopyWith$Query$Playlists$playlists.stub(_res);
}

const documentNodeQueryPlaylists = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Playlists'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
            name: NameNode(value: 'playlists'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'or'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'name'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'contains'),
                                      value: VariableNode(
                                        name: NameNode(value: 'name'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'nameUnsigned'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'contains'),
                                      value: VariableNode(
                                        name: NameNode(value: 'name'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'take')),
              ),
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'skip')),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isPublic'),
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
                        name: NameNode(value: 'checkPlaylistInFavorite'),
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
Query$Playlists _parserFn$Query$Playlists(Map<String, dynamic> data) =>
    Query$Playlists.fromJson(data);
typedef OnQueryComplete$Query$Playlists =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Playlists?);

class Options$Query$Playlists extends graphql.QueryOptions<Query$Playlists> {
  Options$Query$Playlists({
    String? operationName,
    required Variables$Query$Playlists variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Playlists? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Playlists? onComplete,
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
                 data == null ? null : _parserFn$Query$Playlists(data),
               ),
         onError: onError,
         document: documentNodeQueryPlaylists,
         parserFn: _parserFn$Query$Playlists,
       );

  final OnQueryComplete$Query$Playlists? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Playlists
    extends graphql.WatchQueryOptions<Query$Playlists> {
  WatchOptions$Query$Playlists({
    String? operationName,
    required Variables$Query$Playlists variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Playlists? typedOptimisticResult,
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
         document: documentNodeQueryPlaylists,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Playlists,
       );
}

class FetchMoreOptions$Query$Playlists extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Playlists({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Playlists variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPlaylists,
       );
}

extension ClientExtension$Query$Playlists on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Playlists>> query$Playlists(
    Options$Query$Playlists options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$Playlists> watchQuery$Playlists(
    WatchOptions$Query$Playlists options,
  ) => this.watchQuery(options);

  void writeQuery$Playlists({
    required Query$Playlists data,
    required Variables$Query$Playlists variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryPlaylists),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$Playlists? readQuery$Playlists({
    required Variables$Query$Playlists variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPlaylists),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Playlists.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Playlists> useQuery$Playlists(
  Options$Query$Playlists options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Playlists> useWatchQuery$Playlists(
  WatchOptions$Query$Playlists options,
) => graphql_flutter.useWatchQuery(options);

class Query$Playlists$Widget extends graphql_flutter.Query<Query$Playlists> {
  Query$Playlists$Widget({
    widgets.Key? key,
    required Options$Query$Playlists options,
    required graphql_flutter.QueryBuilder<Query$Playlists> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$Playlists$playlists {
  Query$Playlists$playlists({
    this.items,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'PlaylistsCollectionSegment',
  });

  factory Query$Playlists$playlists.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Playlists$playlists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$Playlists$playlists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo: Query$Playlists$playlists$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Playlists$playlists$items>? items;

  final int totalCount;

  final Query$Playlists$playlists$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Playlists$playlists ||
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
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Playlists$playlists
    on Query$Playlists$playlists {
  CopyWith$Query$Playlists$playlists<Query$Playlists$playlists> get copyWith =>
      CopyWith$Query$Playlists$playlists(this, (i) => i);
}

abstract class CopyWith$Query$Playlists$playlists<TRes> {
  factory CopyWith$Query$Playlists$playlists(
    Query$Playlists$playlists instance,
    TRes Function(Query$Playlists$playlists) then,
  ) = _CopyWithImpl$Query$Playlists$playlists;

  factory CopyWith$Query$Playlists$playlists.stub(TRes res) =
      _CopyWithStubImpl$Query$Playlists$playlists;

  TRes call({
    List<Query$Playlists$playlists$items>? items,
    int? totalCount,
    Query$Playlists$playlists$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$Playlists$playlists$items>? Function(
      Iterable<
        CopyWith$Query$Playlists$playlists$items<
          Query$Playlists$playlists$items
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$Playlists$playlists$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Playlists$playlists<TRes>
    implements CopyWith$Query$Playlists$playlists<TRes> {
  _CopyWithImpl$Query$Playlists$playlists(this._instance, this._then);

  final Query$Playlists$playlists _instance;

  final TRes Function(Query$Playlists$playlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Playlists$playlists(
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$Playlists$playlists$items>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$Playlists$playlists$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$Playlists$playlists$items>? Function(
      Iterable<
        CopyWith$Query$Playlists$playlists$items<
          Query$Playlists$playlists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$Playlists$playlists$items(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$Playlists$playlists$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Playlists$playlists$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$Playlists$playlists<TRes>
    implements CopyWith$Query$Playlists$playlists<TRes> {
  _CopyWithStubImpl$Query$Playlists$playlists(this._res);

  TRes _res;

  call({
    List<Query$Playlists$playlists$items>? items,
    int? totalCount,
    Query$Playlists$playlists$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;

  CopyWith$Query$Playlists$playlists$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Playlists$playlists$pageInfo.stub(_res);
}

class Query$Playlists$playlists$items {
  Query$Playlists$playlists$items({
    required this.id,
    required this.name,
    this.coverImage,
    required this.isPublic,
    required this.userId,
    required this.checkPlaylistInFavorite,
    this.$__typename = 'Playlist',
  });

  factory Query$Playlists$playlists$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$isPublic = json['isPublic'];
    final l$userId = json['userId'];
    final l$checkPlaylistInFavorite = json['checkPlaylistInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$Playlists$playlists$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String?),
      isPublic: (l$isPublic as bool),
      userId: (l$userId as String),
      checkPlaylistInFavorite: (l$checkPlaylistInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? coverImage;

  final bool isPublic;

  final String userId;

  final bool checkPlaylistInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$isPublic = isPublic;
    _resultData['isPublic'] = l$isPublic;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    _resultData['checkPlaylistInFavorite'] = l$checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$isPublic = isPublic;
    final l$userId = userId;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      l$isPublic,
      l$userId,
      l$checkPlaylistInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Playlists$playlists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$isPublic = isPublic;
    final lOther$isPublic = other.isPublic;
    if (l$isPublic != lOther$isPublic) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final lOther$checkPlaylistInFavorite = other.checkPlaylistInFavorite;
    if (l$checkPlaylistInFavorite != lOther$checkPlaylistInFavorite) {
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

extension UtilityExtension$Query$Playlists$playlists$items
    on Query$Playlists$playlists$items {
  CopyWith$Query$Playlists$playlists$items<Query$Playlists$playlists$items>
  get copyWith => CopyWith$Query$Playlists$playlists$items(this, (i) => i);
}

abstract class CopyWith$Query$Playlists$playlists$items<TRes> {
  factory CopyWith$Query$Playlists$playlists$items(
    Query$Playlists$playlists$items instance,
    TRes Function(Query$Playlists$playlists$items) then,
  ) = _CopyWithImpl$Query$Playlists$playlists$items;

  factory CopyWith$Query$Playlists$playlists$items.stub(TRes res) =
      _CopyWithStubImpl$Query$Playlists$playlists$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    bool? isPublic,
    String? userId,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Playlists$playlists$items<TRes>
    implements CopyWith$Query$Playlists$playlists$items<TRes> {
  _CopyWithImpl$Query$Playlists$playlists$items(this._instance, this._then);

  final Query$Playlists$playlists$items _instance;

  final TRes Function(Query$Playlists$playlists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? isPublic = _undefined,
    Object? userId = _undefined,
    Object? checkPlaylistInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Playlists$playlists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined
          ? _instance.coverImage
          : (coverImage as String?),
      isPublic: isPublic == _undefined || isPublic == null
          ? _instance.isPublic
          : (isPublic as bool),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      checkPlaylistInFavorite:
          checkPlaylistInFavorite == _undefined ||
              checkPlaylistInFavorite == null
          ? _instance.checkPlaylistInFavorite
          : (checkPlaylistInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Playlists$playlists$items<TRes>
    implements CopyWith$Query$Playlists$playlists$items<TRes> {
  _CopyWithStubImpl$Query$Playlists$playlists$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    bool? isPublic,
    String? userId,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  }) => _res;
}

class Query$Playlists$playlists$pageInfo {
  Query$Playlists$playlists$pageInfo({
    required this.hasNextPage,
    this.$__typename = 'CollectionSegmentInfo',
  });

  factory Query$Playlists$playlists$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Playlists$playlists$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Playlists$playlists$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$Playlists$playlists$pageInfo
    on Query$Playlists$playlists$pageInfo {
  CopyWith$Query$Playlists$playlists$pageInfo<
    Query$Playlists$playlists$pageInfo
  >
  get copyWith => CopyWith$Query$Playlists$playlists$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$Playlists$playlists$pageInfo<TRes> {
  factory CopyWith$Query$Playlists$playlists$pageInfo(
    Query$Playlists$playlists$pageInfo instance,
    TRes Function(Query$Playlists$playlists$pageInfo) then,
  ) = _CopyWithImpl$Query$Playlists$playlists$pageInfo;

  factory CopyWith$Query$Playlists$playlists$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Playlists$playlists$pageInfo;

  TRes call({bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$Playlists$playlists$pageInfo<TRes>
    implements CopyWith$Query$Playlists$playlists$pageInfo<TRes> {
  _CopyWithImpl$Query$Playlists$playlists$pageInfo(this._instance, this._then);

  final Query$Playlists$playlists$pageInfo _instance;

  final TRes Function(Query$Playlists$playlists$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Playlists$playlists$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Playlists$playlists$pageInfo<TRes>
    implements CopyWith$Query$Playlists$playlists$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Playlists$playlists$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? $__typename}) => _res;
}

class Variables$Query$PlaylistsHome {
  factory Variables$Query$PlaylistsHome({int? take, int? skip}) =>
      Variables$Query$PlaylistsHome._({
        if (take != null) r'take': take,
        if (skip != null) r'skip': skip,
      });

  Variables$Query$PlaylistsHome._(this._$data);

  factory Variables$Query$PlaylistsHome.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    return Variables$Query$PlaylistsHome._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get take => (_$data['take'] as int?);

  int? get skip => (_$data['skip'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Variables$Query$PlaylistsHome<Variables$Query$PlaylistsHome>
  get copyWith => CopyWith$Variables$Query$PlaylistsHome(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PlaylistsHome ||
        runtimeType != other.runtimeType) {
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
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('skip') ? l$skip : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$PlaylistsHome<TRes> {
  factory CopyWith$Variables$Query$PlaylistsHome(
    Variables$Query$PlaylistsHome instance,
    TRes Function(Variables$Query$PlaylistsHome) then,
  ) = _CopyWithImpl$Variables$Query$PlaylistsHome;

  factory CopyWith$Variables$Query$PlaylistsHome.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PlaylistsHome;

  TRes call({int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$PlaylistsHome<TRes>
    implements CopyWith$Variables$Query$PlaylistsHome<TRes> {
  _CopyWithImpl$Variables$Query$PlaylistsHome(this._instance, this._then);

  final Variables$Query$PlaylistsHome _instance;

  final TRes Function(Variables$Query$PlaylistsHome) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? take = _undefined, Object? skip = _undefined}) => _then(
    Variables$Query$PlaylistsHome._({
      ..._instance._$data,
      if (take != _undefined) 'take': (take as int?),
      if (skip != _undefined) 'skip': (skip as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PlaylistsHome<TRes>
    implements CopyWith$Variables$Query$PlaylistsHome<TRes> {
  _CopyWithStubImpl$Variables$Query$PlaylistsHome(this._res);

  TRes _res;

  call({int? take, int? skip}) => _res;
}

class Query$PlaylistsHome {
  Query$PlaylistsHome({
    this.playlists,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$PlaylistsHome.fromJson(Map<String, dynamic> json) {
    final l$playlists = json['playlists'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsHome(
      playlists: l$playlists == null
          ? null
          : Query$PlaylistsHome$playlists.fromJson(
              (l$playlists as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PlaylistsHome$playlists? playlists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$playlists = playlists;
    _resultData['playlists'] = l$playlists?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$playlists = playlists;
    final l$$__typename = $__typename;
    return Object.hashAll([l$playlists, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsHome || runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlists = playlists;
    final lOther$playlists = other.playlists;
    if (l$playlists != lOther$playlists) {
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

extension UtilityExtension$Query$PlaylistsHome on Query$PlaylistsHome {
  CopyWith$Query$PlaylistsHome<Query$PlaylistsHome> get copyWith =>
      CopyWith$Query$PlaylistsHome(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsHome<TRes> {
  factory CopyWith$Query$PlaylistsHome(
    Query$PlaylistsHome instance,
    TRes Function(Query$PlaylistsHome) then,
  ) = _CopyWithImpl$Query$PlaylistsHome;

  factory CopyWith$Query$PlaylistsHome.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsHome;

  TRes call({Query$PlaylistsHome$playlists? playlists, String? $__typename});
  CopyWith$Query$PlaylistsHome$playlists<TRes> get playlists;
}

class _CopyWithImpl$Query$PlaylistsHome<TRes>
    implements CopyWith$Query$PlaylistsHome<TRes> {
  _CopyWithImpl$Query$PlaylistsHome(this._instance, this._then);

  final Query$PlaylistsHome _instance;

  final TRes Function(Query$PlaylistsHome) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlists = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsHome(
      playlists: playlists == _undefined
          ? _instance.playlists
          : (playlists as Query$PlaylistsHome$playlists?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PlaylistsHome$playlists<TRes> get playlists {
    final local$playlists = _instance.playlists;
    return local$playlists == null
        ? CopyWith$Query$PlaylistsHome$playlists.stub(_then(_instance))
        : CopyWith$Query$PlaylistsHome$playlists(
            local$playlists,
            (e) => call(playlists: e),
          );
  }
}

class _CopyWithStubImpl$Query$PlaylistsHome<TRes>
    implements CopyWith$Query$PlaylistsHome<TRes> {
  _CopyWithStubImpl$Query$PlaylistsHome(this._res);

  TRes _res;

  call({Query$PlaylistsHome$playlists? playlists, String? $__typename}) => _res;

  CopyWith$Query$PlaylistsHome$playlists<TRes> get playlists =>
      CopyWith$Query$PlaylistsHome$playlists.stub(_res);
}

const documentNodeQueryPlaylistsHome = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PlaylistsHome'),
      variableDefinitions: [
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
            name: NameNode(value: 'playlists'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isPublic'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: true),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'take')),
              ),
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'skip')),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'coverImage'),
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
                        name: NameNode(value: 'isPublic'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'checkPlaylistInFavorite'),
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
Query$PlaylistsHome _parserFn$Query$PlaylistsHome(Map<String, dynamic> data) =>
    Query$PlaylistsHome.fromJson(data);
typedef OnQueryComplete$Query$PlaylistsHome =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PlaylistsHome?);

class Options$Query$PlaylistsHome
    extends graphql.QueryOptions<Query$PlaylistsHome> {
  Options$Query$PlaylistsHome({
    String? operationName,
    Variables$Query$PlaylistsHome? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PlaylistsHome? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PlaylistsHome? onComplete,
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
                 data == null ? null : _parserFn$Query$PlaylistsHome(data),
               ),
         onError: onError,
         document: documentNodeQueryPlaylistsHome,
         parserFn: _parserFn$Query$PlaylistsHome,
       );

  final OnQueryComplete$Query$PlaylistsHome? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PlaylistsHome
    extends graphql.WatchQueryOptions<Query$PlaylistsHome> {
  WatchOptions$Query$PlaylistsHome({
    String? operationName,
    Variables$Query$PlaylistsHome? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PlaylistsHome? typedOptimisticResult,
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
         document: documentNodeQueryPlaylistsHome,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PlaylistsHome,
       );
}

class FetchMoreOptions$Query$PlaylistsHome extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PlaylistsHome({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$PlaylistsHome? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryPlaylistsHome,
       );
}

extension ClientExtension$Query$PlaylistsHome on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PlaylistsHome>> query$PlaylistsHome([
    Options$Query$PlaylistsHome? options,
  ]) async => await this.query(options ?? Options$Query$PlaylistsHome());

  graphql.ObservableQuery<Query$PlaylistsHome> watchQuery$PlaylistsHome([
    WatchOptions$Query$PlaylistsHome? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$PlaylistsHome());

  void writeQuery$PlaylistsHome({
    required Query$PlaylistsHome data,
    Variables$Query$PlaylistsHome? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryPlaylistsHome),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PlaylistsHome? readQuery$PlaylistsHome({
    Variables$Query$PlaylistsHome? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPlaylistsHome),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PlaylistsHome.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PlaylistsHome> useQuery$PlaylistsHome([
  Options$Query$PlaylistsHome? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$PlaylistsHome());
graphql.ObservableQuery<Query$PlaylistsHome> useWatchQuery$PlaylistsHome([
  WatchOptions$Query$PlaylistsHome? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$PlaylistsHome(),
);

class Query$PlaylistsHome$Widget
    extends graphql_flutter.Query<Query$PlaylistsHome> {
  Query$PlaylistsHome$Widget({
    widgets.Key? key,
    Options$Query$PlaylistsHome? options,
    required graphql_flutter.QueryBuilder<Query$PlaylistsHome> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$PlaylistsHome(),
         builder: builder,
       );
}

class Query$PlaylistsHome$playlists {
  Query$PlaylistsHome$playlists({
    this.items,
    this.$__typename = 'PlaylistsCollectionSegment',
  });

  factory Query$PlaylistsHome$playlists.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsHome$playlists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$PlaylistsHome$playlists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PlaylistsHome$playlists$items>? items;

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
    if (other is! Query$PlaylistsHome$playlists ||
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

extension UtilityExtension$Query$PlaylistsHome$playlists
    on Query$PlaylistsHome$playlists {
  CopyWith$Query$PlaylistsHome$playlists<Query$PlaylistsHome$playlists>
  get copyWith => CopyWith$Query$PlaylistsHome$playlists(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsHome$playlists<TRes> {
  factory CopyWith$Query$PlaylistsHome$playlists(
    Query$PlaylistsHome$playlists instance,
    TRes Function(Query$PlaylistsHome$playlists) then,
  ) = _CopyWithImpl$Query$PlaylistsHome$playlists;

  factory CopyWith$Query$PlaylistsHome$playlists.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsHome$playlists;

  TRes call({
    List<Query$PlaylistsHome$playlists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$PlaylistsHome$playlists$items>? Function(
      Iterable<
        CopyWith$Query$PlaylistsHome$playlists$items<
          Query$PlaylistsHome$playlists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$PlaylistsHome$playlists<TRes>
    implements CopyWith$Query$PlaylistsHome$playlists<TRes> {
  _CopyWithImpl$Query$PlaylistsHome$playlists(this._instance, this._then);

  final Query$PlaylistsHome$playlists _instance;

  final TRes Function(Query$PlaylistsHome$playlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$PlaylistsHome$playlists(
          items: items == _undefined
              ? _instance.items
              : (items as List<Query$PlaylistsHome$playlists$items>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes items(
    Iterable<Query$PlaylistsHome$playlists$items>? Function(
      Iterable<
        CopyWith$Query$PlaylistsHome$playlists$items<
          Query$PlaylistsHome$playlists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$PlaylistsHome$playlists$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$PlaylistsHome$playlists<TRes>
    implements CopyWith$Query$PlaylistsHome$playlists<TRes> {
  _CopyWithStubImpl$Query$PlaylistsHome$playlists(this._res);

  TRes _res;

  call({
    List<Query$PlaylistsHome$playlists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$PlaylistsHome$playlists$items {
  Query$PlaylistsHome$playlists$items({
    required this.id,
    required this.name,
    this.coverImage,
    required this.userId,
    required this.isPublic,
    required this.checkPlaylistInFavorite,
    this.$__typename = 'Playlist',
  });

  factory Query$PlaylistsHome$playlists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$userId = json['userId'];
    final l$isPublic = json['isPublic'];
    final l$checkPlaylistInFavorite = json['checkPlaylistInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsHome$playlists$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String?),
      userId: (l$userId as String),
      isPublic: (l$isPublic as bool),
      checkPlaylistInFavorite: (l$checkPlaylistInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? coverImage;

  final String userId;

  final bool isPublic;

  final bool checkPlaylistInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$isPublic = isPublic;
    _resultData['isPublic'] = l$isPublic;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    _resultData['checkPlaylistInFavorite'] = l$checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$userId = userId;
    final l$isPublic = isPublic;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      l$userId,
      l$isPublic,
      l$checkPlaylistInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsHome$playlists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$isPublic = isPublic;
    final lOther$isPublic = other.isPublic;
    if (l$isPublic != lOther$isPublic) {
      return false;
    }
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final lOther$checkPlaylistInFavorite = other.checkPlaylistInFavorite;
    if (l$checkPlaylistInFavorite != lOther$checkPlaylistInFavorite) {
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

extension UtilityExtension$Query$PlaylistsHome$playlists$items
    on Query$PlaylistsHome$playlists$items {
  CopyWith$Query$PlaylistsHome$playlists$items<
    Query$PlaylistsHome$playlists$items
  >
  get copyWith => CopyWith$Query$PlaylistsHome$playlists$items(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsHome$playlists$items<TRes> {
  factory CopyWith$Query$PlaylistsHome$playlists$items(
    Query$PlaylistsHome$playlists$items instance,
    TRes Function(Query$PlaylistsHome$playlists$items) then,
  ) = _CopyWithImpl$Query$PlaylistsHome$playlists$items;

  factory CopyWith$Query$PlaylistsHome$playlists$items.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsHome$playlists$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    String? userId,
    bool? isPublic,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PlaylistsHome$playlists$items<TRes>
    implements CopyWith$Query$PlaylistsHome$playlists$items<TRes> {
  _CopyWithImpl$Query$PlaylistsHome$playlists$items(this._instance, this._then);

  final Query$PlaylistsHome$playlists$items _instance;

  final TRes Function(Query$PlaylistsHome$playlists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? userId = _undefined,
    Object? isPublic = _undefined,
    Object? checkPlaylistInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsHome$playlists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined
          ? _instance.coverImage
          : (coverImage as String?),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      isPublic: isPublic == _undefined || isPublic == null
          ? _instance.isPublic
          : (isPublic as bool),
      checkPlaylistInFavorite:
          checkPlaylistInFavorite == _undefined ||
              checkPlaylistInFavorite == null
          ? _instance.checkPlaylistInFavorite
          : (checkPlaylistInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PlaylistsHome$playlists$items<TRes>
    implements CopyWith$Query$PlaylistsHome$playlists$items<TRes> {
  _CopyWithStubImpl$Query$PlaylistsHome$playlists$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    String? userId,
    bool? isPublic,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  }) => _res;
}

class Variables$Query$PlaylistsPublic {
  factory Variables$Query$PlaylistsPublic({
    required String userId,
    String? name,
    int? take,
    int? skip,
  }) => Variables$Query$PlaylistsPublic._({
    r'userId': userId,
    if (name != null) r'name': name,
    if (take != null) r'take': take,
    if (skip != null) r'skip': skip,
  });

  Variables$Query$PlaylistsPublic._(this._$data);

  factory Variables$Query$PlaylistsPublic.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    return Variables$Query$PlaylistsPublic._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String? get name => (_$data['name'] as String?);

  int? get take => (_$data['take'] as int?);

  int? get skip => (_$data['skip'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
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

  CopyWith$Variables$Query$PlaylistsPublic<Variables$Query$PlaylistsPublic>
  get copyWith => CopyWith$Variables$Query$PlaylistsPublic(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PlaylistsPublic ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$userId = userId;
    final l$name = name;
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([
      l$userId,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('skip') ? l$skip : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$PlaylistsPublic<TRes> {
  factory CopyWith$Variables$Query$PlaylistsPublic(
    Variables$Query$PlaylistsPublic instance,
    TRes Function(Variables$Query$PlaylistsPublic) then,
  ) = _CopyWithImpl$Variables$Query$PlaylistsPublic;

  factory CopyWith$Variables$Query$PlaylistsPublic.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PlaylistsPublic;

  TRes call({String? userId, String? name, int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$PlaylistsPublic<TRes>
    implements CopyWith$Variables$Query$PlaylistsPublic<TRes> {
  _CopyWithImpl$Variables$Query$PlaylistsPublic(this._instance, this._then);

  final Variables$Query$PlaylistsPublic _instance;

  final TRes Function(Variables$Query$PlaylistsPublic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? name = _undefined,
    Object? take = _undefined,
    Object? skip = _undefined,
  }) => _then(
    Variables$Query$PlaylistsPublic._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
      if (name != _undefined) 'name': (name as String?),
      if (take != _undefined) 'take': (take as int?),
      if (skip != _undefined) 'skip': (skip as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$PlaylistsPublic<TRes>
    implements CopyWith$Variables$Query$PlaylistsPublic<TRes> {
  _CopyWithStubImpl$Variables$Query$PlaylistsPublic(this._res);

  TRes _res;

  call({String? userId, String? name, int? take, int? skip}) => _res;
}

class Query$PlaylistsPublic {
  Query$PlaylistsPublic({
    this.playlists,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$PlaylistsPublic.fromJson(Map<String, dynamic> json) {
    final l$playlists = json['playlists'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsPublic(
      playlists: l$playlists == null
          ? null
          : Query$PlaylistsPublic$playlists.fromJson(
              (l$playlists as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PlaylistsPublic$playlists? playlists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$playlists = playlists;
    _resultData['playlists'] = l$playlists?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$playlists = playlists;
    final l$$__typename = $__typename;
    return Object.hashAll([l$playlists, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsPublic || runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlists = playlists;
    final lOther$playlists = other.playlists;
    if (l$playlists != lOther$playlists) {
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

extension UtilityExtension$Query$PlaylistsPublic on Query$PlaylistsPublic {
  CopyWith$Query$PlaylistsPublic<Query$PlaylistsPublic> get copyWith =>
      CopyWith$Query$PlaylistsPublic(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsPublic<TRes> {
  factory CopyWith$Query$PlaylistsPublic(
    Query$PlaylistsPublic instance,
    TRes Function(Query$PlaylistsPublic) then,
  ) = _CopyWithImpl$Query$PlaylistsPublic;

  factory CopyWith$Query$PlaylistsPublic.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsPublic;

  TRes call({Query$PlaylistsPublic$playlists? playlists, String? $__typename});
  CopyWith$Query$PlaylistsPublic$playlists<TRes> get playlists;
}

class _CopyWithImpl$Query$PlaylistsPublic<TRes>
    implements CopyWith$Query$PlaylistsPublic<TRes> {
  _CopyWithImpl$Query$PlaylistsPublic(this._instance, this._then);

  final Query$PlaylistsPublic _instance;

  final TRes Function(Query$PlaylistsPublic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlists = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsPublic(
      playlists: playlists == _undefined
          ? _instance.playlists
          : (playlists as Query$PlaylistsPublic$playlists?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$PlaylistsPublic$playlists<TRes> get playlists {
    final local$playlists = _instance.playlists;
    return local$playlists == null
        ? CopyWith$Query$PlaylistsPublic$playlists.stub(_then(_instance))
        : CopyWith$Query$PlaylistsPublic$playlists(
            local$playlists,
            (e) => call(playlists: e),
          );
  }
}

class _CopyWithStubImpl$Query$PlaylistsPublic<TRes>
    implements CopyWith$Query$PlaylistsPublic<TRes> {
  _CopyWithStubImpl$Query$PlaylistsPublic(this._res);

  TRes _res;

  call({Query$PlaylistsPublic$playlists? playlists, String? $__typename}) =>
      _res;

  CopyWith$Query$PlaylistsPublic$playlists<TRes> get playlists =>
      CopyWith$Query$PlaylistsPublic$playlists.stub(_res);
}

const documentNodeQueryPlaylistsPublic = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'PlaylistsPublic'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
            name: NameNode(value: 'playlists'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'or'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'name'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'contains'),
                                      value: VariableNode(
                                        name: NameNode(value: 'name'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'nameUnsigned'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'contains'),
                                      value: VariableNode(
                                        name: NameNode(value: 'name'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                    ObjectFieldNode(
                      name: NameNode(value: 'isPublic'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: true),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'take')),
              ),
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'skip')),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isPublic'),
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
                        name: NameNode(value: 'checkPlaylistInFavorite'),
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
Query$PlaylistsPublic _parserFn$Query$PlaylistsPublic(
  Map<String, dynamic> data,
) => Query$PlaylistsPublic.fromJson(data);
typedef OnQueryComplete$Query$PlaylistsPublic =
    FutureOr<void> Function(Map<String, dynamic>?, Query$PlaylistsPublic?);

class Options$Query$PlaylistsPublic
    extends graphql.QueryOptions<Query$PlaylistsPublic> {
  Options$Query$PlaylistsPublic({
    String? operationName,
    required Variables$Query$PlaylistsPublic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PlaylistsPublic? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PlaylistsPublic? onComplete,
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
                 data == null ? null : _parserFn$Query$PlaylistsPublic(data),
               ),
         onError: onError,
         document: documentNodeQueryPlaylistsPublic,
         parserFn: _parserFn$Query$PlaylistsPublic,
       );

  final OnQueryComplete$Query$PlaylistsPublic? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$PlaylistsPublic
    extends graphql.WatchQueryOptions<Query$PlaylistsPublic> {
  WatchOptions$Query$PlaylistsPublic({
    String? operationName,
    required Variables$Query$PlaylistsPublic variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PlaylistsPublic? typedOptimisticResult,
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
         document: documentNodeQueryPlaylistsPublic,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$PlaylistsPublic,
       );
}

class FetchMoreOptions$Query$PlaylistsPublic extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PlaylistsPublic({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PlaylistsPublic variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryPlaylistsPublic,
       );
}

extension ClientExtension$Query$PlaylistsPublic on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PlaylistsPublic>> query$PlaylistsPublic(
    Options$Query$PlaylistsPublic options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$PlaylistsPublic> watchQuery$PlaylistsPublic(
    WatchOptions$Query$PlaylistsPublic options,
  ) => this.watchQuery(options);

  void writeQuery$PlaylistsPublic({
    required Query$PlaylistsPublic data,
    required Variables$Query$PlaylistsPublic variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryPlaylistsPublic),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$PlaylistsPublic? readQuery$PlaylistsPublic({
    required Variables$Query$PlaylistsPublic variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryPlaylistsPublic,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PlaylistsPublic.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PlaylistsPublic> useQuery$PlaylistsPublic(
  Options$Query$PlaylistsPublic options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PlaylistsPublic> useWatchQuery$PlaylistsPublic(
  WatchOptions$Query$PlaylistsPublic options,
) => graphql_flutter.useWatchQuery(options);

class Query$PlaylistsPublic$Widget
    extends graphql_flutter.Query<Query$PlaylistsPublic> {
  Query$PlaylistsPublic$Widget({
    widgets.Key? key,
    required Options$Query$PlaylistsPublic options,
    required graphql_flutter.QueryBuilder<Query$PlaylistsPublic> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$PlaylistsPublic$playlists {
  Query$PlaylistsPublic$playlists({
    this.items,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'PlaylistsCollectionSegment',
  });

  factory Query$PlaylistsPublic$playlists.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsPublic$playlists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$PlaylistsPublic$playlists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo: Query$PlaylistsPublic$playlists$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PlaylistsPublic$playlists$items>? items;

  final int totalCount;

  final Query$PlaylistsPublic$playlists$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsPublic$playlists ||
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
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$PlaylistsPublic$playlists
    on Query$PlaylistsPublic$playlists {
  CopyWith$Query$PlaylistsPublic$playlists<Query$PlaylistsPublic$playlists>
  get copyWith => CopyWith$Query$PlaylistsPublic$playlists(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsPublic$playlists<TRes> {
  factory CopyWith$Query$PlaylistsPublic$playlists(
    Query$PlaylistsPublic$playlists instance,
    TRes Function(Query$PlaylistsPublic$playlists) then,
  ) = _CopyWithImpl$Query$PlaylistsPublic$playlists;

  factory CopyWith$Query$PlaylistsPublic$playlists.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsPublic$playlists;

  TRes call({
    List<Query$PlaylistsPublic$playlists$items>? items,
    int? totalCount,
    Query$PlaylistsPublic$playlists$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$PlaylistsPublic$playlists$items>? Function(
      Iterable<
        CopyWith$Query$PlaylistsPublic$playlists$items<
          Query$PlaylistsPublic$playlists$items
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$PlaylistsPublic$playlists<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists<TRes> {
  _CopyWithImpl$Query$PlaylistsPublic$playlists(this._instance, this._then);

  final Query$PlaylistsPublic$playlists _instance;

  final TRes Function(Query$PlaylistsPublic$playlists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsPublic$playlists(
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$PlaylistsPublic$playlists$items>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$PlaylistsPublic$playlists$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$PlaylistsPublic$playlists$items>? Function(
      Iterable<
        CopyWith$Query$PlaylistsPublic$playlists$items<
          Query$PlaylistsPublic$playlists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$PlaylistsPublic$playlists$items(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$PlaylistsPublic$playlists$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$PlaylistsPublic$playlists<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists<TRes> {
  _CopyWithStubImpl$Query$PlaylistsPublic$playlists(this._res);

  TRes _res;

  call({
    List<Query$PlaylistsPublic$playlists$items>? items,
    int? totalCount,
    Query$PlaylistsPublic$playlists$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;

  CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$PlaylistsPublic$playlists$pageInfo.stub(_res);
}

class Query$PlaylistsPublic$playlists$items {
  Query$PlaylistsPublic$playlists$items({
    required this.id,
    required this.name,
    this.coverImage,
    required this.isPublic,
    required this.userId,
    required this.checkPlaylistInFavorite,
    this.$__typename = 'Playlist',
  });

  factory Query$PlaylistsPublic$playlists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$isPublic = json['isPublic'];
    final l$userId = json['userId'];
    final l$checkPlaylistInFavorite = json['checkPlaylistInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsPublic$playlists$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String?),
      isPublic: (l$isPublic as bool),
      userId: (l$userId as String),
      checkPlaylistInFavorite: (l$checkPlaylistInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? coverImage;

  final bool isPublic;

  final String userId;

  final bool checkPlaylistInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$isPublic = isPublic;
    _resultData['isPublic'] = l$isPublic;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    _resultData['checkPlaylistInFavorite'] = l$checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$isPublic = isPublic;
    final l$userId = userId;
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      l$isPublic,
      l$userId,
      l$checkPlaylistInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsPublic$playlists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$isPublic = isPublic;
    final lOther$isPublic = other.isPublic;
    if (l$isPublic != lOther$isPublic) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$checkPlaylistInFavorite = checkPlaylistInFavorite;
    final lOther$checkPlaylistInFavorite = other.checkPlaylistInFavorite;
    if (l$checkPlaylistInFavorite != lOther$checkPlaylistInFavorite) {
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

extension UtilityExtension$Query$PlaylistsPublic$playlists$items
    on Query$PlaylistsPublic$playlists$items {
  CopyWith$Query$PlaylistsPublic$playlists$items<
    Query$PlaylistsPublic$playlists$items
  >
  get copyWith =>
      CopyWith$Query$PlaylistsPublic$playlists$items(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsPublic$playlists$items<TRes> {
  factory CopyWith$Query$PlaylistsPublic$playlists$items(
    Query$PlaylistsPublic$playlists$items instance,
    TRes Function(Query$PlaylistsPublic$playlists$items) then,
  ) = _CopyWithImpl$Query$PlaylistsPublic$playlists$items;

  factory CopyWith$Query$PlaylistsPublic$playlists$items.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsPublic$playlists$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    bool? isPublic,
    String? userId,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PlaylistsPublic$playlists$items<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists$items<TRes> {
  _CopyWithImpl$Query$PlaylistsPublic$playlists$items(
    this._instance,
    this._then,
  );

  final Query$PlaylistsPublic$playlists$items _instance;

  final TRes Function(Query$PlaylistsPublic$playlists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? isPublic = _undefined,
    Object? userId = _undefined,
    Object? checkPlaylistInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsPublic$playlists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined
          ? _instance.coverImage
          : (coverImage as String?),
      isPublic: isPublic == _undefined || isPublic == null
          ? _instance.isPublic
          : (isPublic as bool),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      checkPlaylistInFavorite:
          checkPlaylistInFavorite == _undefined ||
              checkPlaylistInFavorite == null
          ? _instance.checkPlaylistInFavorite
          : (checkPlaylistInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PlaylistsPublic$playlists$items<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists$items<TRes> {
  _CopyWithStubImpl$Query$PlaylistsPublic$playlists$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    bool? isPublic,
    String? userId,
    bool? checkPlaylistInFavorite,
    String? $__typename,
  }) => _res;
}

class Query$PlaylistsPublic$playlists$pageInfo {
  Query$PlaylistsPublic$playlists$pageInfo({
    required this.hasNextPage,
    this.$__typename = 'CollectionSegmentInfo',
  });

  factory Query$PlaylistsPublic$playlists$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$PlaylistsPublic$playlists$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PlaylistsPublic$playlists$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$PlaylistsPublic$playlists$pageInfo
    on Query$PlaylistsPublic$playlists$pageInfo {
  CopyWith$Query$PlaylistsPublic$playlists$pageInfo<
    Query$PlaylistsPublic$playlists$pageInfo
  >
  get copyWith =>
      CopyWith$Query$PlaylistsPublic$playlists$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> {
  factory CopyWith$Query$PlaylistsPublic$playlists$pageInfo(
    Query$PlaylistsPublic$playlists$pageInfo instance,
    TRes Function(Query$PlaylistsPublic$playlists$pageInfo) then,
  ) = _CopyWithImpl$Query$PlaylistsPublic$playlists$pageInfo;

  factory CopyWith$Query$PlaylistsPublic$playlists$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$PlaylistsPublic$playlists$pageInfo;

  TRes call({bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$PlaylistsPublic$playlists$pageInfo<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> {
  _CopyWithImpl$Query$PlaylistsPublic$playlists$pageInfo(
    this._instance,
    this._then,
  );

  final Query$PlaylistsPublic$playlists$pageInfo _instance;

  final TRes Function(Query$PlaylistsPublic$playlists$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$PlaylistsPublic$playlists$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$PlaylistsPublic$playlists$pageInfo<TRes>
    implements CopyWith$Query$PlaylistsPublic$playlists$pageInfo<TRes> {
  _CopyWithStubImpl$Query$PlaylistsPublic$playlists$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? $__typename}) => _res;
}

class Variables$Query$Albums {
  factory Variables$Query$Albums({
    Input$AlbumFilterInput? where,
    int? skip,
    int? take,
  }) => Variables$Query$Albums._({
    if (where != null) r'where': where,
    if (skip != null) r'skip': skip,
    if (take != null) r'take': take,
  });

  Variables$Query$Albums._(this._$data);

  factory Variables$Query$Albums.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$AlbumFilterInput.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    return Variables$Query$Albums._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AlbumFilterInput? get where =>
      (_$data['where'] as Input$AlbumFilterInput?);

  int? get skip => (_$data['skip'] as int?);

  int? get take => (_$data['take'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('skip')) {
      final l$skip = skip;
      result$data['skip'] = l$skip;
    }
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Albums<Variables$Query$Albums> get copyWith =>
      CopyWith$Variables$Query$Albums(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Albums || runtimeType != other.runtimeType) {
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
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (_$data.containsKey('skip') != other._$data.containsKey('skip')) {
      return false;
    }
    if (l$skip != lOther$skip) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$skip = skip;
    final l$take = take;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('skip') ? l$skip : const {},
      _$data.containsKey('take') ? l$take : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Albums<TRes> {
  factory CopyWith$Variables$Query$Albums(
    Variables$Query$Albums instance,
    TRes Function(Variables$Query$Albums) then,
  ) = _CopyWithImpl$Variables$Query$Albums;

  factory CopyWith$Variables$Query$Albums.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Albums;

  TRes call({Input$AlbumFilterInput? where, int? skip, int? take});
}

class _CopyWithImpl$Variables$Query$Albums<TRes>
    implements CopyWith$Variables$Query$Albums<TRes> {
  _CopyWithImpl$Variables$Query$Albums(this._instance, this._then);

  final Variables$Query$Albums _instance;

  final TRes Function(Variables$Query$Albums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? skip = _undefined,
    Object? take = _undefined,
  }) => _then(
    Variables$Query$Albums._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as Input$AlbumFilterInput?),
      if (skip != _undefined) 'skip': (skip as int?),
      if (take != _undefined) 'take': (take as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Albums<TRes>
    implements CopyWith$Variables$Query$Albums<TRes> {
  _CopyWithStubImpl$Variables$Query$Albums(this._res);

  TRes _res;

  call({Input$AlbumFilterInput? where, int? skip, int? take}) => _res;
}

class Query$Albums {
  Query$Albums({this.albums, this.$__typename = 'QueryInitialization'});

  factory Query$Albums.fromJson(Map<String, dynamic> json) {
    final l$albums = json['albums'];
    final l$$__typename = json['__typename'];
    return Query$Albums(
      albums: l$albums == null
          ? null
          : Query$Albums$albums.fromJson((l$albums as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Albums$albums? albums;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$albums = albums;
    _resultData['albums'] = l$albums?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$albums = albums;
    final l$$__typename = $__typename;
    return Object.hashAll([l$albums, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Albums || runtimeType != other.runtimeType) {
      return false;
    }
    final l$albums = albums;
    final lOther$albums = other.albums;
    if (l$albums != lOther$albums) {
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

extension UtilityExtension$Query$Albums on Query$Albums {
  CopyWith$Query$Albums<Query$Albums> get copyWith =>
      CopyWith$Query$Albums(this, (i) => i);
}

abstract class CopyWith$Query$Albums<TRes> {
  factory CopyWith$Query$Albums(
    Query$Albums instance,
    TRes Function(Query$Albums) then,
  ) = _CopyWithImpl$Query$Albums;

  factory CopyWith$Query$Albums.stub(TRes res) = _CopyWithStubImpl$Query$Albums;

  TRes call({Query$Albums$albums? albums, String? $__typename});
  CopyWith$Query$Albums$albums<TRes> get albums;
}

class _CopyWithImpl$Query$Albums<TRes> implements CopyWith$Query$Albums<TRes> {
  _CopyWithImpl$Query$Albums(this._instance, this._then);

  final Query$Albums _instance;

  final TRes Function(Query$Albums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? albums = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$Albums(
          albums: albums == _undefined
              ? _instance.albums
              : (albums as Query$Albums$albums?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$Albums$albums<TRes> get albums {
    final local$albums = _instance.albums;
    return local$albums == null
        ? CopyWith$Query$Albums$albums.stub(_then(_instance))
        : CopyWith$Query$Albums$albums(local$albums, (e) => call(albums: e));
  }
}

class _CopyWithStubImpl$Query$Albums<TRes>
    implements CopyWith$Query$Albums<TRes> {
  _CopyWithStubImpl$Query$Albums(this._res);

  TRes _res;

  call({Query$Albums$albums? albums, String? $__typename}) => _res;

  CopyWith$Query$Albums$albums<TRes> get albums =>
      CopyWith$Query$Albums$albums.stub(_res);
}

const documentNodeQueryAlbums = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Albums'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'AlbumFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'skip')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'albums'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'where')),
              ),
              ArgumentNode(
                name: NameNode(value: 'skip'),
                value: VariableNode(name: NameNode(value: 'skip')),
              ),
              ArgumentNode(
                name: NameNode(value: 'take'),
                value: VariableNode(name: NameNode(value: 'take')),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'coverImage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'checkAlbumInFavorite'),
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
Query$Albums _parserFn$Query$Albums(Map<String, dynamic> data) =>
    Query$Albums.fromJson(data);
typedef OnQueryComplete$Query$Albums =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Albums?);

class Options$Query$Albums extends graphql.QueryOptions<Query$Albums> {
  Options$Query$Albums({
    String? operationName,
    Variables$Query$Albums? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Albums? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Albums? onComplete,
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
                 data == null ? null : _parserFn$Query$Albums(data),
               ),
         onError: onError,
         document: documentNodeQueryAlbums,
         parserFn: _parserFn$Query$Albums,
       );

  final OnQueryComplete$Query$Albums? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Albums
    extends graphql.WatchQueryOptions<Query$Albums> {
  WatchOptions$Query$Albums({
    String? operationName,
    Variables$Query$Albums? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Albums? typedOptimisticResult,
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
         document: documentNodeQueryAlbums,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Albums,
       );
}

class FetchMoreOptions$Query$Albums extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Albums({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Albums? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryAlbums,
       );
}

extension ClientExtension$Query$Albums on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Albums>> query$Albums([
    Options$Query$Albums? options,
  ]) async => await this.query(options ?? Options$Query$Albums());

  graphql.ObservableQuery<Query$Albums> watchQuery$Albums([
    WatchOptions$Query$Albums? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$Albums());

  void writeQuery$Albums({
    required Query$Albums data,
    Variables$Query$Albums? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryAlbums),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$Albums? readQuery$Albums({
    Variables$Query$Albums? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAlbums),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Albums.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Albums> useQuery$Albums([
  Options$Query$Albums? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$Albums());
graphql.ObservableQuery<Query$Albums> useWatchQuery$Albums([
  WatchOptions$Query$Albums? options,
]) => graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Albums());

class Query$Albums$Widget extends graphql_flutter.Query<Query$Albums> {
  Query$Albums$Widget({
    widgets.Key? key,
    Options$Query$Albums? options,
    required graphql_flutter.QueryBuilder<Query$Albums> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$Albums(),
         builder: builder,
       );
}

class Query$Albums$albums {
  Query$Albums$albums({
    this.items,
    required this.pageInfo,
    required this.totalCount,
    this.$__typename = 'AlbumsCollectionSegment',
  });

  factory Query$Albums$albums.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Albums$albums(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) =>
                Query$Albums$albums$items.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      pageInfo: Query$Albums$albums$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Albums$albums$items>? items;

  final Query$Albums$albums$pageInfo pageInfo;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Albums$albums || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Albums$albums on Query$Albums$albums {
  CopyWith$Query$Albums$albums<Query$Albums$albums> get copyWith =>
      CopyWith$Query$Albums$albums(this, (i) => i);
}

abstract class CopyWith$Query$Albums$albums<TRes> {
  factory CopyWith$Query$Albums$albums(
    Query$Albums$albums instance,
    TRes Function(Query$Albums$albums) then,
  ) = _CopyWithImpl$Query$Albums$albums;

  factory CopyWith$Query$Albums$albums.stub(TRes res) =
      _CopyWithStubImpl$Query$Albums$albums;

  TRes call({
    List<Query$Albums$albums$items>? items,
    Query$Albums$albums$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$Albums$albums$items>? Function(
      Iterable<CopyWith$Query$Albums$albums$items<Query$Albums$albums$items>>?,
    )
    _fn,
  );
  CopyWith$Query$Albums$albums$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Albums$albums<TRes>
    implements CopyWith$Query$Albums$albums<TRes> {
  _CopyWithImpl$Query$Albums$albums(this._instance, this._then);

  final Query$Albums$albums _instance;

  final TRes Function(Query$Albums$albums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Albums$albums(
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$Albums$albums$items>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$Albums$albums$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$Albums$albums$items>? Function(
      Iterable<CopyWith$Query$Albums$albums$items<Query$Albums$albums$items>>?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$Albums$albums$items(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$Albums$albums$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Albums$albums$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$Albums$albums<TRes>
    implements CopyWith$Query$Albums$albums<TRes> {
  _CopyWithStubImpl$Query$Albums$albums(this._res);

  TRes _res;

  call({
    List<Query$Albums$albums$items>? items,
    Query$Albums$albums$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;

  CopyWith$Query$Albums$albums$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Albums$albums$pageInfo.stub(_res);
}

class Query$Albums$albums$items {
  Query$Albums$albums$items({
    required this.id,
    required this.name,
    required this.coverImage,
    this.description,
    required this.isVisible,
    required this.checkAlbumInFavorite,
    this.$__typename = 'Album',
  });

  factory Query$Albums$albums$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$description = json['description'];
    final l$isVisible = json['isVisible'];
    final l$checkAlbumInFavorite = json['checkAlbumInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$Albums$albums$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String),
      description: (l$description as String?),
      isVisible: (l$isVisible as bool),
      checkAlbumInFavorite: (l$checkAlbumInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String coverImage;

  final String? description;

  final bool isVisible;

  final bool checkAlbumInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isVisible = isVisible;
    _resultData['isVisible'] = l$isVisible;
    final l$checkAlbumInFavorite = checkAlbumInFavorite;
    _resultData['checkAlbumInFavorite'] = l$checkAlbumInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$description = description;
    final l$isVisible = isVisible;
    final l$checkAlbumInFavorite = checkAlbumInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      l$description,
      l$isVisible,
      l$checkAlbumInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Albums$albums$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isVisible = isVisible;
    final lOther$isVisible = other.isVisible;
    if (l$isVisible != lOther$isVisible) {
      return false;
    }
    final l$checkAlbumInFavorite = checkAlbumInFavorite;
    final lOther$checkAlbumInFavorite = other.checkAlbumInFavorite;
    if (l$checkAlbumInFavorite != lOther$checkAlbumInFavorite) {
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

extension UtilityExtension$Query$Albums$albums$items
    on Query$Albums$albums$items {
  CopyWith$Query$Albums$albums$items<Query$Albums$albums$items> get copyWith =>
      CopyWith$Query$Albums$albums$items(this, (i) => i);
}

abstract class CopyWith$Query$Albums$albums$items<TRes> {
  factory CopyWith$Query$Albums$albums$items(
    Query$Albums$albums$items instance,
    TRes Function(Query$Albums$albums$items) then,
  ) = _CopyWithImpl$Query$Albums$albums$items;

  factory CopyWith$Query$Albums$albums$items.stub(TRes res) =
      _CopyWithStubImpl$Query$Albums$albums$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    String? description,
    bool? isVisible,
    bool? checkAlbumInFavorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Albums$albums$items<TRes>
    implements CopyWith$Query$Albums$albums$items<TRes> {
  _CopyWithImpl$Query$Albums$albums$items(this._instance, this._then);

  final Query$Albums$albums$items _instance;

  final TRes Function(Query$Albums$albums$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? description = _undefined,
    Object? isVisible = _undefined,
    Object? checkAlbumInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Albums$albums$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined || coverImage == null
          ? _instance.coverImage
          : (coverImage as String),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      isVisible: isVisible == _undefined || isVisible == null
          ? _instance.isVisible
          : (isVisible as bool),
      checkAlbumInFavorite:
          checkAlbumInFavorite == _undefined || checkAlbumInFavorite == null
          ? _instance.checkAlbumInFavorite
          : (checkAlbumInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Albums$albums$items<TRes>
    implements CopyWith$Query$Albums$albums$items<TRes> {
  _CopyWithStubImpl$Query$Albums$albums$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    String? description,
    bool? isVisible,
    bool? checkAlbumInFavorite,
    String? $__typename,
  }) => _res;
}

class Query$Albums$albums$pageInfo {
  Query$Albums$albums$pageInfo({
    required this.hasNextPage,
    this.$__typename = 'CollectionSegmentInfo',
  });

  factory Query$Albums$albums$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Albums$albums$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Albums$albums$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$Albums$albums$pageInfo
    on Query$Albums$albums$pageInfo {
  CopyWith$Query$Albums$albums$pageInfo<Query$Albums$albums$pageInfo>
  get copyWith => CopyWith$Query$Albums$albums$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$Albums$albums$pageInfo<TRes> {
  factory CopyWith$Query$Albums$albums$pageInfo(
    Query$Albums$albums$pageInfo instance,
    TRes Function(Query$Albums$albums$pageInfo) then,
  ) = _CopyWithImpl$Query$Albums$albums$pageInfo;

  factory CopyWith$Query$Albums$albums$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Albums$albums$pageInfo;

  TRes call({bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$Albums$albums$pageInfo<TRes>
    implements CopyWith$Query$Albums$albums$pageInfo<TRes> {
  _CopyWithImpl$Query$Albums$albums$pageInfo(this._instance, this._then);

  final Query$Albums$albums$pageInfo _instance;

  final TRes Function(Query$Albums$albums$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Albums$albums$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Albums$albums$pageInfo<TRes>
    implements CopyWith$Query$Albums$albums$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Albums$albums$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? $__typename}) => _res;
}
