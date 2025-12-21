import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ArtistPackagesInConversation {
  factory Variables$Query$ArtistPackagesInConversation({
    required String artistId,
  }) => Variables$Query$ArtistPackagesInConversation._({r'artistId': artistId});

  Variables$Query$ArtistPackagesInConversation._(this._$data);

  factory Variables$Query$ArtistPackagesInConversation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$artistId = data['artistId'];
    result$data['artistId'] = (l$artistId as String);
    return Variables$Query$ArtistPackagesInConversation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get artistId => (_$data['artistId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$artistId = artistId;
    result$data['artistId'] = l$artistId;
    return result$data;
  }

  CopyWith$Variables$Query$ArtistPackagesInConversation<
    Variables$Query$ArtistPackagesInConversation
  >
  get copyWith =>
      CopyWith$Variables$Query$ArtistPackagesInConversation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ArtistPackagesInConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$artistId = artistId;
    return Object.hashAll([l$artistId]);
  }
}

abstract class CopyWith$Variables$Query$ArtistPackagesInConversation<TRes> {
  factory CopyWith$Variables$Query$ArtistPackagesInConversation(
    Variables$Query$ArtistPackagesInConversation instance,
    TRes Function(Variables$Query$ArtistPackagesInConversation) then,
  ) = _CopyWithImpl$Variables$Query$ArtistPackagesInConversation;

  factory CopyWith$Variables$Query$ArtistPackagesInConversation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ArtistPackagesInConversation;

  TRes call({String? artistId});
}

class _CopyWithImpl$Variables$Query$ArtistPackagesInConversation<TRes>
    implements CopyWith$Variables$Query$ArtistPackagesInConversation<TRes> {
  _CopyWithImpl$Variables$Query$ArtistPackagesInConversation(
    this._instance,
    this._then,
  );

  final Variables$Query$ArtistPackagesInConversation _instance;

  final TRes Function(Variables$Query$ArtistPackagesInConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? artistId = _undefined}) => _then(
    Variables$Query$ArtistPackagesInConversation._({
      ..._instance._$data,
      if (artistId != _undefined && artistId != null)
        'artistId': (artistId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ArtistPackagesInConversation<TRes>
    implements CopyWith$Variables$Query$ArtistPackagesInConversation<TRes> {
  _CopyWithStubImpl$Variables$Query$ArtistPackagesInConversation(this._res);

  TRes _res;

  call({String? artistId}) => _res;
}

class Query$ArtistPackagesInConversation {
  Query$ArtistPackagesInConversation({
    this.artistPackagesInConversation,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$ArtistPackagesInConversation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$artistPackagesInConversation = json['artistPackagesInConversation'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackagesInConversation(
      artistPackagesInConversation: l$artistPackagesInConversation == null
          ? null
          : Query$ArtistPackagesInConversation$artistPackagesInConversation.fromJson(
              (l$artistPackagesInConversation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ArtistPackagesInConversation$artistPackagesInConversation?
  artistPackagesInConversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$artistPackagesInConversation = artistPackagesInConversation;
    _resultData['artistPackagesInConversation'] = l$artistPackagesInConversation
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$artistPackagesInConversation = artistPackagesInConversation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$artistPackagesInConversation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistPackagesInConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$artistPackagesInConversation = artistPackagesInConversation;
    final lOther$artistPackagesInConversation =
        other.artistPackagesInConversation;
    if (l$artistPackagesInConversation != lOther$artistPackagesInConversation) {
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

extension UtilityExtension$Query$ArtistPackagesInConversation
    on Query$ArtistPackagesInConversation {
  CopyWith$Query$ArtistPackagesInConversation<
    Query$ArtistPackagesInConversation
  >
  get copyWith => CopyWith$Query$ArtistPackagesInConversation(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackagesInConversation<TRes> {
  factory CopyWith$Query$ArtistPackagesInConversation(
    Query$ArtistPackagesInConversation instance,
    TRes Function(Query$ArtistPackagesInConversation) then,
  ) = _CopyWithImpl$Query$ArtistPackagesInConversation;

  factory CopyWith$Query$ArtistPackagesInConversation.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackagesInConversation;

  TRes call({
    Query$ArtistPackagesInConversation$artistPackagesInConversation?
    artistPackagesInConversation,
    String? $__typename,
  });
  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<TRes>
  get artistPackagesInConversation;
}

class _CopyWithImpl$Query$ArtistPackagesInConversation<TRes>
    implements CopyWith$Query$ArtistPackagesInConversation<TRes> {
  _CopyWithImpl$Query$ArtistPackagesInConversation(this._instance, this._then);

  final Query$ArtistPackagesInConversation _instance;

  final TRes Function(Query$ArtistPackagesInConversation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? artistPackagesInConversation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackagesInConversation(
      artistPackagesInConversation: artistPackagesInConversation == _undefined
          ? _instance.artistPackagesInConversation
          : (artistPackagesInConversation
                as Query$ArtistPackagesInConversation$artistPackagesInConversation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<TRes>
  get artistPackagesInConversation {
    final local$artistPackagesInConversation =
        _instance.artistPackagesInConversation;
    return local$artistPackagesInConversation == null
        ? CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation.stub(
            _then(_instance),
          )
        : CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation(
            local$artistPackagesInConversation,
            (e) => call(artistPackagesInConversation: e),
          );
  }
}

class _CopyWithStubImpl$Query$ArtistPackagesInConversation<TRes>
    implements CopyWith$Query$ArtistPackagesInConversation<TRes> {
  _CopyWithStubImpl$Query$ArtistPackagesInConversation(this._res);

  TRes _res;

  call({
    Query$ArtistPackagesInConversation$artistPackagesInConversation?
    artistPackagesInConversation,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<TRes>
  get artistPackagesInConversation =>
      CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation.stub(
        _res,
      );
}

const documentNodeQueryArtistPackagesInConversation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ArtistPackagesInConversation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'artistId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'artistPackagesInConversation'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'artistId'),
                value: VariableNode(name: NameNode(value: 'artistId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'status'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: EnumValueNode(
                              name: NameNode(value: 'ENABLED'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isDelete'),
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
                        name: NameNode(value: 'maxRevision'),
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
                        name: NameNode(value: 'description'),
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
                              name: NameNode(value: 'key'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
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
Query$ArtistPackagesInConversation _parserFn$Query$ArtistPackagesInConversation(
  Map<String, dynamic> data,
) => Query$ArtistPackagesInConversation.fromJson(data);
typedef OnQueryComplete$Query$ArtistPackagesInConversation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ArtistPackagesInConversation?,
    );

class Options$Query$ArtistPackagesInConversation
    extends graphql.QueryOptions<Query$ArtistPackagesInConversation> {
  Options$Query$ArtistPackagesInConversation({
    String? operationName,
    required Variables$Query$ArtistPackagesInConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackagesInConversation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ArtistPackagesInConversation? onComplete,
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
                     : _parserFn$Query$ArtistPackagesInConversation(data),
               ),
         onError: onError,
         document: documentNodeQueryArtistPackagesInConversation,
         parserFn: _parserFn$Query$ArtistPackagesInConversation,
       );

  final OnQueryComplete$Query$ArtistPackagesInConversation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ArtistPackagesInConversation
    extends graphql.WatchQueryOptions<Query$ArtistPackagesInConversation> {
  WatchOptions$Query$ArtistPackagesInConversation({
    String? operationName,
    required Variables$Query$ArtistPackagesInConversation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackagesInConversation? typedOptimisticResult,
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
         document: documentNodeQueryArtistPackagesInConversation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ArtistPackagesInConversation,
       );
}

class FetchMoreOptions$Query$ArtistPackagesInConversation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ArtistPackagesInConversation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ArtistPackagesInConversation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryArtistPackagesInConversation,
       );
}

extension ClientExtension$Query$ArtistPackagesInConversation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ArtistPackagesInConversation>>
  query$ArtistPackagesInConversation(
    Options$Query$ArtistPackagesInConversation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ArtistPackagesInConversation>
  watchQuery$ArtistPackagesInConversation(
    WatchOptions$Query$ArtistPackagesInConversation options,
  ) => this.watchQuery(options);

  void writeQuery$ArtistPackagesInConversation({
    required Query$ArtistPackagesInConversation data,
    required Variables$Query$ArtistPackagesInConversation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryArtistPackagesInConversation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ArtistPackagesInConversation? readQuery$ArtistPackagesInConversation({
    required Variables$Query$ArtistPackagesInConversation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryArtistPackagesInConversation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ArtistPackagesInConversation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ArtistPackagesInConversation>
useQuery$ArtistPackagesInConversation(
  Options$Query$ArtistPackagesInConversation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ArtistPackagesInConversation>
useWatchQuery$ArtistPackagesInConversation(
  WatchOptions$Query$ArtistPackagesInConversation options,
) => graphql_flutter.useWatchQuery(options);

class Query$ArtistPackagesInConversation$Widget
    extends graphql_flutter.Query<Query$ArtistPackagesInConversation> {
  Query$ArtistPackagesInConversation$Widget({
    widgets.Key? key,
    required Options$Query$ArtistPackagesInConversation options,
    required graphql_flutter.QueryBuilder<Query$ArtistPackagesInConversation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ArtistPackagesInConversation$artistPackagesInConversation {
  Query$ArtistPackagesInConversation$artistPackagesInConversation({
    required this.totalCount,
    this.items,
    this.$__typename = 'ArtistPackagesInConversationCollectionSegment',
  });

  factory Query$ArtistPackagesInConversation$artistPackagesInConversation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackagesInConversation$artistPackagesInConversation(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) =>
                Query$ArtistPackagesInConversation$artistPackagesInConversation$items.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items
  >?
  items;

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
    if (other
            is! Query$ArtistPackagesInConversation$artistPackagesInConversation ||
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

extension UtilityExtension$Query$ArtistPackagesInConversation$artistPackagesInConversation
    on Query$ArtistPackagesInConversation$artistPackagesInConversation {
  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<
    Query$ArtistPackagesInConversation$artistPackagesInConversation
  >
  get copyWith =>
      CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<
  TRes
> {
  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation(
    Query$ArtistPackagesInConversation$artistPackagesInConversation instance,
    TRes Function(
      Query$ArtistPackagesInConversation$artistPackagesInConversation,
    )
    then,
  ) = _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation;

  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation;

  TRes call({
    int? totalCount,
    List<Query$ArtistPackagesInConversation$artistPackagesInConversation$items>?
    items,
    String? $__typename,
  });
  TRes items(
    Iterable<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items
    >?
    Function(
      Iterable<
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
          Query$ArtistPackagesInConversation$artistPackagesInConversation$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<
          TRes
        > {
  _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation(
    this._instance,
    this._then,
  );

  final Query$ArtistPackagesInConversation$artistPackagesInConversation
  _instance;

  final TRes Function(
    Query$ArtistPackagesInConversation$artistPackagesInConversation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackagesInConversation$artistPackagesInConversation(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items
                as List<
                  Query$ArtistPackagesInConversation$artistPackagesInConversation$items
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items
    >?
    Function(
      Iterable<
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
          Query$ArtistPackagesInConversation$artistPackagesInConversation$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation<
          TRes
        > {
  _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    List<Query$ArtistPackagesInConversation$artistPackagesInConversation$items>?
    items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$ArtistPackagesInConversation$artistPackagesInConversation$items {
  Query$ArtistPackagesInConversation$artistPackagesInConversation$items({
    required this.id,
    required this.packageName,
    required this.amount,
    required this.currency,
    required this.maxRevision,
    required this.estimateDeliveryDays,
    this.description,
    required this.serviceDetails,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$ArtistPackagesInConversation$artistPackagesInConversation$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$packageName = json['packageName'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$maxRevision = json['maxRevision'];
    final l$estimateDeliveryDays = json['estimateDeliveryDays'];
    final l$description = json['description'];
    final l$serviceDetails = json['serviceDetails'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
      id: (l$id as String),
      packageName: (l$packageName as String),
      amount: (l$amount as num).toDouble(),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      maxRevision: (l$maxRevision as int),
      estimateDeliveryDays: (l$estimateDeliveryDays as int),
      description: (l$description as String?),
      serviceDetails: (l$serviceDetails as List<dynamic>)
          .map(
            (e) =>
                Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String packageName;

  final double amount;

  final Enum$CurrencyType currency;

  final int maxRevision;

  final int estimateDeliveryDays;

  final String? description;

  final List<
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
  >
  serviceDetails;

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
    final l$maxRevision = maxRevision;
    _resultData['maxRevision'] = l$maxRevision;
    final l$estimateDeliveryDays = estimateDeliveryDays;
    _resultData['estimateDeliveryDays'] = l$estimateDeliveryDays;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$packageName = packageName;
    final l$amount = amount;
    final l$currency = currency;
    final l$maxRevision = maxRevision;
    final l$estimateDeliveryDays = estimateDeliveryDays;
    final l$description = description;
    final l$serviceDetails = serviceDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$packageName,
      l$amount,
      l$currency,
      l$maxRevision,
      l$estimateDeliveryDays,
      l$description,
      Object.hashAll(l$serviceDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ArtistPackagesInConversation$artistPackagesInConversation$items ||
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
    final l$maxRevision = maxRevision;
    final lOther$maxRevision = other.maxRevision;
    if (l$maxRevision != lOther$maxRevision) {
      return false;
    }
    final l$estimateDeliveryDays = estimateDeliveryDays;
    final lOther$estimateDeliveryDays = other.estimateDeliveryDays;
    if (l$estimateDeliveryDays != lOther$estimateDeliveryDays) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$ArtistPackagesInConversation$artistPackagesInConversation$items
    on Query$ArtistPackagesInConversation$artistPackagesInConversation$items {
  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items
  >
  get copyWith =>
      CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
  TRes
> {
  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items
    instance,
    TRes Function(
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items,
    )
    then,
  ) = _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items;

  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items;

  TRes call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    int? maxRevision,
    int? estimateDeliveryDays,
    String? description,
    List<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    >?
    serviceDetails,
    String? $__typename,
  });
  TRes serviceDetails(
    Iterable<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    >
    Function(
      Iterable<
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
          Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
          TRes
        > {
  _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
    this._instance,
    this._then,
  );

  final Query$ArtistPackagesInConversation$artistPackagesInConversation$items
  _instance;

  final TRes Function(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? packageName = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? maxRevision = _undefined,
    Object? estimateDeliveryDays = _undefined,
    Object? description = _undefined,
    Object? serviceDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
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
      maxRevision: maxRevision == _undefined || maxRevision == null
          ? _instance.maxRevision
          : (maxRevision as int),
      estimateDeliveryDays:
          estimateDeliveryDays == _undefined || estimateDeliveryDays == null
          ? _instance.estimateDeliveryDays
          : (estimateDeliveryDays as int),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      serviceDetails: serviceDetails == _undefined || serviceDetails == null
          ? _instance.serviceDetails
          : (serviceDetails
                as List<
                  Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes serviceDetails(
    Iterable<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    >
    Function(
      Iterable<
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
          Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
        >
      >,
    )
    _fn,
  ) => call(
    serviceDetails: _fn(
      _instance.serviceDetails.map(
        (e) =>
            CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items<
          TRes
        > {
  _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    int? maxRevision,
    int? estimateDeliveryDays,
    String? description,
    List<
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    >?
    serviceDetails,
    String? $__typename,
  }) => _res;

  serviceDetails(_fn) => _res;
}

class Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails {
  Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails({
    required this.key,
    required this.value,
    this.$__typename = 'Metadata',
  });

  factory Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    on
        Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails {
  CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
  >
  get copyWith =>
      CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
  TRes
> {
  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
    instance,
    TRes Function(
      Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails,
    )
    then,
  ) = _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails;

  factory CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
          TRes
        > {
  _CopyWithImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
    this._instance,
    this._then,
  );

  final Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails
  _instance;

  final TRes Function(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$ArtistPackagesInConversation$artistPackagesInConversation$items$serviceDetails(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
