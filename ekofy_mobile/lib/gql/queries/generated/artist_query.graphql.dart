import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$ArtistInLibraryQuery {
  Query$ArtistInLibraryQuery({
    this.artists,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$ArtistInLibraryQuery.fromJson(Map<String, dynamic> json) {
    final l$artists = json['artists'];
    final l$$__typename = json['__typename'];
    return Query$ArtistInLibraryQuery(
      artists: l$artists == null
          ? null
          : Query$ArtistInLibraryQuery$artists.fromJson(
              (l$artists as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ArtistInLibraryQuery$artists? artists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$artists = artists;
    _resultData['artists'] = l$artists?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$artists = artists;
    final l$$__typename = $__typename;
    return Object.hashAll([l$artists, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistInLibraryQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$artists = artists;
    final lOther$artists = other.artists;
    if (l$artists != lOther$artists) {
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

extension UtilityExtension$Query$ArtistInLibraryQuery
    on Query$ArtistInLibraryQuery {
  CopyWith$Query$ArtistInLibraryQuery<Query$ArtistInLibraryQuery>
  get copyWith => CopyWith$Query$ArtistInLibraryQuery(this, (i) => i);
}

abstract class CopyWith$Query$ArtistInLibraryQuery<TRes> {
  factory CopyWith$Query$ArtistInLibraryQuery(
    Query$ArtistInLibraryQuery instance,
    TRes Function(Query$ArtistInLibraryQuery) then,
  ) = _CopyWithImpl$Query$ArtistInLibraryQuery;

  factory CopyWith$Query$ArtistInLibraryQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistInLibraryQuery;

  TRes call({Query$ArtistInLibraryQuery$artists? artists, String? $__typename});
  CopyWith$Query$ArtistInLibraryQuery$artists<TRes> get artists;
}

class _CopyWithImpl$Query$ArtistInLibraryQuery<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery<TRes> {
  _CopyWithImpl$Query$ArtistInLibraryQuery(this._instance, this._then);

  final Query$ArtistInLibraryQuery _instance;

  final TRes Function(Query$ArtistInLibraryQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? artists = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$ArtistInLibraryQuery(
          artists: artists == _undefined
              ? _instance.artists
              : (artists as Query$ArtistInLibraryQuery$artists?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$ArtistInLibraryQuery$artists<TRes> get artists {
    final local$artists = _instance.artists;
    return local$artists == null
        ? CopyWith$Query$ArtistInLibraryQuery$artists.stub(_then(_instance))
        : CopyWith$Query$ArtistInLibraryQuery$artists(
            local$artists,
            (e) => call(artists: e),
          );
  }
}

class _CopyWithStubImpl$Query$ArtistInLibraryQuery<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery<TRes> {
  _CopyWithStubImpl$Query$ArtistInLibraryQuery(this._res);

  TRes _res;

  call({Query$ArtistInLibraryQuery$artists? artists, String? $__typename}) =>
      _res;

  CopyWith$Query$ArtistInLibraryQuery$artists<TRes> get artists =>
      CopyWith$Query$ArtistInLibraryQuery$artists.stub(_res);
}

const documentNodeQueryArtistInLibraryQuery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ArtistInLibraryQuery'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'artists'),
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
                        name: NameNode(value: 'stageNameUnsigned'),
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
                        name: NameNode(value: 'avatarImage'),
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
Query$ArtistInLibraryQuery _parserFn$Query$ArtistInLibraryQuery(
  Map<String, dynamic> data,
) => Query$ArtistInLibraryQuery.fromJson(data);
typedef OnQueryComplete$Query$ArtistInLibraryQuery =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ArtistInLibraryQuery?);

class Options$Query$ArtistInLibraryQuery
    extends graphql.QueryOptions<Query$ArtistInLibraryQuery> {
  Options$Query$ArtistInLibraryQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistInLibraryQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ArtistInLibraryQuery? onComplete,
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
                 data == null
                     ? null
                     : _parserFn$Query$ArtistInLibraryQuery(data),
               ),
         onError: onError,
         document: documentNodeQueryArtistInLibraryQuery,
         parserFn: _parserFn$Query$ArtistInLibraryQuery,
       );

  final OnQueryComplete$Query$ArtistInLibraryQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ArtistInLibraryQuery
    extends graphql.WatchQueryOptions<Query$ArtistInLibraryQuery> {
  WatchOptions$Query$ArtistInLibraryQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistInLibraryQuery? typedOptimisticResult,
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
         document: documentNodeQueryArtistInLibraryQuery,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ArtistInLibraryQuery,
       );
}

class FetchMoreOptions$Query$ArtistInLibraryQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ArtistInLibraryQuery({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQueryArtistInLibraryQuery,
       );
}

extension ClientExtension$Query$ArtistInLibraryQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ArtistInLibraryQuery>>
  query$ArtistInLibraryQuery([
    Options$Query$ArtistInLibraryQuery? options,
  ]) async => await this.query(options ?? Options$Query$ArtistInLibraryQuery());

  graphql.ObservableQuery<Query$ArtistInLibraryQuery>
  watchQuery$ArtistInLibraryQuery([
    WatchOptions$Query$ArtistInLibraryQuery? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$ArtistInLibraryQuery());

  void writeQuery$ArtistInLibraryQuery({
    required Query$ArtistInLibraryQuery data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryArtistInLibraryQuery,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ArtistInLibraryQuery? readQuery$ArtistInLibraryQuery({
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryArtistInLibraryQuery,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ArtistInLibraryQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ArtistInLibraryQuery>
useQuery$ArtistInLibraryQuery([Options$Query$ArtistInLibraryQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ArtistInLibraryQuery());
graphql.ObservableQuery<Query$ArtistInLibraryQuery>
useWatchQuery$ArtistInLibraryQuery([
  WatchOptions$Query$ArtistInLibraryQuery? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$ArtistInLibraryQuery(),
);

class Query$ArtistInLibraryQuery$Widget
    extends graphql_flutter.Query<Query$ArtistInLibraryQuery> {
  Query$ArtistInLibraryQuery$Widget({
    widgets.Key? key,
    Options$Query$ArtistInLibraryQuery? options,
    required graphql_flutter.QueryBuilder<Query$ArtistInLibraryQuery> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$ArtistInLibraryQuery(),
         builder: builder,
       );
}

class Query$ArtistInLibraryQuery$artists {
  Query$ArtistInLibraryQuery$artists({
    required this.totalCount,
    this.items,
    this.$__typename = 'ArtistsCollectionSegment',
  });

  factory Query$ArtistInLibraryQuery$artists.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ArtistInLibraryQuery$artists(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$ArtistInLibraryQuery$artists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$ArtistInLibraryQuery$artists$items>? items;

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
    if (other is! Query$ArtistInLibraryQuery$artists ||
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

extension UtilityExtension$Query$ArtistInLibraryQuery$artists
    on Query$ArtistInLibraryQuery$artists {
  CopyWith$Query$ArtistInLibraryQuery$artists<
    Query$ArtistInLibraryQuery$artists
  >
  get copyWith => CopyWith$Query$ArtistInLibraryQuery$artists(this, (i) => i);
}

abstract class CopyWith$Query$ArtistInLibraryQuery$artists<TRes> {
  factory CopyWith$Query$ArtistInLibraryQuery$artists(
    Query$ArtistInLibraryQuery$artists instance,
    TRes Function(Query$ArtistInLibraryQuery$artists) then,
  ) = _CopyWithImpl$Query$ArtistInLibraryQuery$artists;

  factory CopyWith$Query$ArtistInLibraryQuery$artists.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists;

  TRes call({
    int? totalCount,
    List<Query$ArtistInLibraryQuery$artists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$ArtistInLibraryQuery$artists$items>? Function(
      Iterable<
        CopyWith$Query$ArtistInLibraryQuery$artists$items<
          Query$ArtistInLibraryQuery$artists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistInLibraryQuery$artists<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery$artists<TRes> {
  _CopyWithImpl$Query$ArtistInLibraryQuery$artists(this._instance, this._then);

  final Query$ArtistInLibraryQuery$artists _instance;

  final TRes Function(Query$ArtistInLibraryQuery$artists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistInLibraryQuery$artists(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$ArtistInLibraryQuery$artists$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$ArtistInLibraryQuery$artists$items>? Function(
      Iterable<
        CopyWith$Query$ArtistInLibraryQuery$artists$items<
          Query$ArtistInLibraryQuery$artists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$ArtistInLibraryQuery$artists$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery$artists<TRes> {
  _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$ArtistInLibraryQuery$artists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$ArtistInLibraryQuery$artists$items {
  Query$ArtistInLibraryQuery$artists$items({
    required this.id,
    required this.userId,
    required this.stageName,
    required this.stageNameUnsigned,
    required this.followerCount,
    this.avatarImage,
    required this.isVerified,
    this.$__typename = 'Artist',
  });

  factory Query$ArtistInLibraryQuery$artists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$stageName = json['stageName'];
    final l$stageNameUnsigned = json['stageNameUnsigned'];
    final l$followerCount = json['followerCount'];
    final l$avatarImage = json['avatarImage'];
    final l$isVerified = json['isVerified'];
    final l$$__typename = json['__typename'];
    return Query$ArtistInLibraryQuery$artists$items(
      id: (l$id as String),
      userId: (l$userId as String),
      stageName: (l$stageName as String),
      stageNameUnsigned: (l$stageNameUnsigned as String),
      followerCount: (l$followerCount as int),
      avatarImage: (l$avatarImage as String?),
      isVerified: (l$isVerified as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String stageName;

  final String stageNameUnsigned;

  final int followerCount;

  final String? avatarImage;

  final bool isVerified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$stageNameUnsigned = stageNameUnsigned;
    _resultData['stageNameUnsigned'] = l$stageNameUnsigned;
    final l$followerCount = followerCount;
    _resultData['followerCount'] = l$followerCount;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$isVerified = isVerified;
    _resultData['isVerified'] = l$isVerified;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$stageName = stageName;
    final l$stageNameUnsigned = stageNameUnsigned;
    final l$followerCount = followerCount;
    final l$avatarImage = avatarImage;
    final l$isVerified = isVerified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$stageName,
      l$stageNameUnsigned,
      l$followerCount,
      l$avatarImage,
      l$isVerified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistInLibraryQuery$artists$items ||
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
    final l$stageNameUnsigned = stageNameUnsigned;
    final lOther$stageNameUnsigned = other.stageNameUnsigned;
    if (l$stageNameUnsigned != lOther$stageNameUnsigned) {
      return false;
    }
    final l$followerCount = followerCount;
    final lOther$followerCount = other.followerCount;
    if (l$followerCount != lOther$followerCount) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
      return false;
    }
    final l$isVerified = isVerified;
    final lOther$isVerified = other.isVerified;
    if (l$isVerified != lOther$isVerified) {
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

extension UtilityExtension$Query$ArtistInLibraryQuery$artists$items
    on Query$ArtistInLibraryQuery$artists$items {
  CopyWith$Query$ArtistInLibraryQuery$artists$items<
    Query$ArtistInLibraryQuery$artists$items
  >
  get copyWith =>
      CopyWith$Query$ArtistInLibraryQuery$artists$items(this, (i) => i);
}

abstract class CopyWith$Query$ArtistInLibraryQuery$artists$items<TRes> {
  factory CopyWith$Query$ArtistInLibraryQuery$artists$items(
    Query$ArtistInLibraryQuery$artists$items instance,
    TRes Function(Query$ArtistInLibraryQuery$artists$items) then,
  ) = _CopyWithImpl$Query$ArtistInLibraryQuery$artists$items;

  factory CopyWith$Query$ArtistInLibraryQuery$artists$items.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists$items;

  TRes call({
    String? id,
    String? userId,
    String? stageName,
    String? stageNameUnsigned,
    int? followerCount,
    String? avatarImage,
    bool? isVerified,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ArtistInLibraryQuery$artists$items<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery$artists$items<TRes> {
  _CopyWithImpl$Query$ArtistInLibraryQuery$artists$items(
    this._instance,
    this._then,
  );

  final Query$ArtistInLibraryQuery$artists$items _instance;

  final TRes Function(Query$ArtistInLibraryQuery$artists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? stageName = _undefined,
    Object? stageNameUnsigned = _undefined,
    Object? followerCount = _undefined,
    Object? avatarImage = _undefined,
    Object? isVerified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistInLibraryQuery$artists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      stageNameUnsigned:
          stageNameUnsigned == _undefined || stageNameUnsigned == null
          ? _instance.stageNameUnsigned
          : (stageNameUnsigned as String),
      followerCount: followerCount == _undefined || followerCount == null
          ? _instance.followerCount
          : (followerCount as int),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      isVerified: isVerified == _undefined || isVerified == null
          ? _instance.isVerified
          : (isVerified as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists$items<TRes>
    implements CopyWith$Query$ArtistInLibraryQuery$artists$items<TRes> {
  _CopyWithStubImpl$Query$ArtistInLibraryQuery$artists$items(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? stageName,
    String? stageNameUnsigned,
    int? followerCount,
    String? avatarImage,
    bool? isVerified,
    String? $__typename,
  }) => _res;
}
