import '../../generated/schema.graphql.dart';
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

class Variables$Query$ArtistPackages {
  factory Variables$Query$ArtistPackages({
    required String artistId,
    int? take,
    int? skip,
  }) => Variables$Query$ArtistPackages._({
    r'artistId': artistId,
    if (take != null) r'take': take,
    if (skip != null) r'skip': skip,
  });

  Variables$Query$ArtistPackages._(this._$data);

  factory Variables$Query$ArtistPackages.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$artistId = data['artistId'];
    result$data['artistId'] = (l$artistId as String);
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    return Variables$Query$ArtistPackages._(result$data);
  }

  Map<String, dynamic> _$data;

  String get artistId => (_$data['artistId'] as String);

  int? get take => (_$data['take'] as int?);

  int? get skip => (_$data['skip'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$artistId = artistId;
    result$data['artistId'] = l$artistId;
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

  CopyWith$Variables$Query$ArtistPackages<Variables$Query$ArtistPackages>
  get copyWith => CopyWith$Variables$Query$ArtistPackages(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ArtistPackages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
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
    final l$artistId = artistId;
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([
      l$artistId,
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('skip') ? l$skip : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ArtistPackages<TRes> {
  factory CopyWith$Variables$Query$ArtistPackages(
    Variables$Query$ArtistPackages instance,
    TRes Function(Variables$Query$ArtistPackages) then,
  ) = _CopyWithImpl$Variables$Query$ArtistPackages;

  factory CopyWith$Variables$Query$ArtistPackages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ArtistPackages;

  TRes call({String? artistId, int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$ArtistPackages<TRes>
    implements CopyWith$Variables$Query$ArtistPackages<TRes> {
  _CopyWithImpl$Variables$Query$ArtistPackages(this._instance, this._then);

  final Variables$Query$ArtistPackages _instance;

  final TRes Function(Variables$Query$ArtistPackages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? artistId = _undefined,
    Object? take = _undefined,
    Object? skip = _undefined,
  }) => _then(
    Variables$Query$ArtistPackages._({
      ..._instance._$data,
      if (artistId != _undefined && artistId != null)
        'artistId': (artistId as String),
      if (take != _undefined) 'take': (take as int?),
      if (skip != _undefined) 'skip': (skip as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ArtistPackages<TRes>
    implements CopyWith$Variables$Query$ArtistPackages<TRes> {
  _CopyWithStubImpl$Variables$Query$ArtistPackages(this._res);

  TRes _res;

  call({String? artistId, int? take, int? skip}) => _res;
}

class Query$ArtistPackages {
  Query$ArtistPackages({
    this.artistPackages,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$ArtistPackages.fromJson(Map<String, dynamic> json) {
    final l$artistPackages = json['artistPackages'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackages(
      artistPackages: l$artistPackages == null
          ? null
          : Query$ArtistPackages$artistPackages.fromJson(
              (l$artistPackages as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ArtistPackages$artistPackages? artistPackages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$artistPackages = artistPackages;
    _resultData['artistPackages'] = l$artistPackages?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$artistPackages = artistPackages;
    final l$$__typename = $__typename;
    return Object.hashAll([l$artistPackages, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistPackages || runtimeType != other.runtimeType) {
      return false;
    }
    final l$artistPackages = artistPackages;
    final lOther$artistPackages = other.artistPackages;
    if (l$artistPackages != lOther$artistPackages) {
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

extension UtilityExtension$Query$ArtistPackages on Query$ArtistPackages {
  CopyWith$Query$ArtistPackages<Query$ArtistPackages> get copyWith =>
      CopyWith$Query$ArtistPackages(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackages<TRes> {
  factory CopyWith$Query$ArtistPackages(
    Query$ArtistPackages instance,
    TRes Function(Query$ArtistPackages) then,
  ) = _CopyWithImpl$Query$ArtistPackages;

  factory CopyWith$Query$ArtistPackages.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackages;

  TRes call({
    Query$ArtistPackages$artistPackages? artistPackages,
    String? $__typename,
  });
  CopyWith$Query$ArtistPackages$artistPackages<TRes> get artistPackages;
}

class _CopyWithImpl$Query$ArtistPackages<TRes>
    implements CopyWith$Query$ArtistPackages<TRes> {
  _CopyWithImpl$Query$ArtistPackages(this._instance, this._then);

  final Query$ArtistPackages _instance;

  final TRes Function(Query$ArtistPackages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? artistPackages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackages(
      artistPackages: artistPackages == _undefined
          ? _instance.artistPackages
          : (artistPackages as Query$ArtistPackages$artistPackages?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ArtistPackages$artistPackages<TRes> get artistPackages {
    final local$artistPackages = _instance.artistPackages;
    return local$artistPackages == null
        ? CopyWith$Query$ArtistPackages$artistPackages.stub(_then(_instance))
        : CopyWith$Query$ArtistPackages$artistPackages(
            local$artistPackages,
            (e) => call(artistPackages: e),
          );
  }
}

class _CopyWithStubImpl$Query$ArtistPackages<TRes>
    implements CopyWith$Query$ArtistPackages<TRes> {
  _CopyWithStubImpl$Query$ArtistPackages(this._res);

  TRes _res;

  call({
    Query$ArtistPackages$artistPackages? artistPackages,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ArtistPackages$artistPackages<TRes> get artistPackages =>
      CopyWith$Query$ArtistPackages$artistPackages.stub(_res);
}

const documentNodeQueryArtistPackages = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ArtistPackages'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'artistId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
            name: NameNode(value: 'artistPackages'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'artistId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: VariableNode(
                              name: NameNode(value: 'artistId'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isDelete'),
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
Query$ArtistPackages _parserFn$Query$ArtistPackages(
  Map<String, dynamic> data,
) => Query$ArtistPackages.fromJson(data);
typedef OnQueryComplete$Query$ArtistPackages =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ArtistPackages?);

class Options$Query$ArtistPackages
    extends graphql.QueryOptions<Query$ArtistPackages> {
  Options$Query$ArtistPackages({
    String? operationName,
    required Variables$Query$ArtistPackages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackages? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ArtistPackages? onComplete,
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
                 data == null ? null : _parserFn$Query$ArtistPackages(data),
               ),
         onError: onError,
         document: documentNodeQueryArtistPackages,
         parserFn: _parserFn$Query$ArtistPackages,
       );

  final OnQueryComplete$Query$ArtistPackages? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ArtistPackages
    extends graphql.WatchQueryOptions<Query$ArtistPackages> {
  WatchOptions$Query$ArtistPackages({
    String? operationName,
    required Variables$Query$ArtistPackages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackages? typedOptimisticResult,
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
         document: documentNodeQueryArtistPackages,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ArtistPackages,
       );
}

class FetchMoreOptions$Query$ArtistPackages extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ArtistPackages({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ArtistPackages variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryArtistPackages,
       );
}

extension ClientExtension$Query$ArtistPackages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ArtistPackages>> query$ArtistPackages(
    Options$Query$ArtistPackages options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ArtistPackages> watchQuery$ArtistPackages(
    WatchOptions$Query$ArtistPackages options,
  ) => this.watchQuery(options);

  void writeQuery$ArtistPackages({
    required Query$ArtistPackages data,
    required Variables$Query$ArtistPackages variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryArtistPackages),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ArtistPackages? readQuery$ArtistPackages({
    required Variables$Query$ArtistPackages variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryArtistPackages),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ArtistPackages.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ArtistPackages> useQuery$ArtistPackages(
  Options$Query$ArtistPackages options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ArtistPackages> useWatchQuery$ArtistPackages(
  WatchOptions$Query$ArtistPackages options,
) => graphql_flutter.useWatchQuery(options);

class Query$ArtistPackages$Widget
    extends graphql_flutter.Query<Query$ArtistPackages> {
  Query$ArtistPackages$Widget({
    widgets.Key? key,
    required Options$Query$ArtistPackages options,
    required graphql_flutter.QueryBuilder<Query$ArtistPackages> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ArtistPackages$artistPackages {
  Query$ArtistPackages$artistPackages({
    required this.totalCount,
    this.items,
    this.$__typename = 'ArtistPackagesCollectionSegment',
  });

  factory Query$ArtistPackages$artistPackages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackages$artistPackages(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$ArtistPackages$artistPackages$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$ArtistPackages$artistPackages$items>? items;

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
    if (other is! Query$ArtistPackages$artistPackages ||
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

extension UtilityExtension$Query$ArtistPackages$artistPackages
    on Query$ArtistPackages$artistPackages {
  CopyWith$Query$ArtistPackages$artistPackages<
    Query$ArtistPackages$artistPackages
  >
  get copyWith => CopyWith$Query$ArtistPackages$artistPackages(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackages$artistPackages<TRes> {
  factory CopyWith$Query$ArtistPackages$artistPackages(
    Query$ArtistPackages$artistPackages instance,
    TRes Function(Query$ArtistPackages$artistPackages) then,
  ) = _CopyWithImpl$Query$ArtistPackages$artistPackages;

  factory CopyWith$Query$ArtistPackages$artistPackages.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackages$artistPackages;

  TRes call({
    int? totalCount,
    List<Query$ArtistPackages$artistPackages$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$ArtistPackages$artistPackages$items>? Function(
      Iterable<
        CopyWith$Query$ArtistPackages$artistPackages$items<
          Query$ArtistPackages$artistPackages$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistPackages$artistPackages<TRes>
    implements CopyWith$Query$ArtistPackages$artistPackages<TRes> {
  _CopyWithImpl$Query$ArtistPackages$artistPackages(this._instance, this._then);

  final Query$ArtistPackages$artistPackages _instance;

  final TRes Function(Query$ArtistPackages$artistPackages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackages$artistPackages(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$ArtistPackages$artistPackages$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$ArtistPackages$artistPackages$items>? Function(
      Iterable<
        CopyWith$Query$ArtistPackages$artistPackages$items<
          Query$ArtistPackages$artistPackages$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$ArtistPackages$artistPackages$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistPackages$artistPackages<TRes>
    implements CopyWith$Query$ArtistPackages$artistPackages<TRes> {
  _CopyWithStubImpl$Query$ArtistPackages$artistPackages(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$ArtistPackages$artistPackages$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$ArtistPackages$artistPackages$items {
  Query$ArtistPackages$artistPackages$items({
    required this.id,
    required this.packageName,
    required this.amount,
    required this.currency,
    this.description,
    required this.isDelete,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$ArtistPackages$artistPackages$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$packageName = json['packageName'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$description = json['description'];
    final l$isDelete = json['isDelete'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackages$artistPackages$items(
      id: (l$id as String),
      packageName: (l$packageName as String),
      amount: (l$amount as num).toDouble(),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      description: (l$description as String?),
      isDelete: (l$isDelete as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String packageName;

  final double amount;

  final Enum$CurrencyType currency;

  final String? description;

  final bool isDelete;

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
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isDelete = isDelete;
    _resultData['isDelete'] = l$isDelete;
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
    final l$description = description;
    final l$isDelete = isDelete;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$packageName,
      l$amount,
      l$currency,
      l$description,
      l$isDelete,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistPackages$artistPackages$items ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isDelete = isDelete;
    final lOther$isDelete = other.isDelete;
    if (l$isDelete != lOther$isDelete) {
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

extension UtilityExtension$Query$ArtistPackages$artistPackages$items
    on Query$ArtistPackages$artistPackages$items {
  CopyWith$Query$ArtistPackages$artistPackages$items<
    Query$ArtistPackages$artistPackages$items
  >
  get copyWith =>
      CopyWith$Query$ArtistPackages$artistPackages$items(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackages$artistPackages$items<TRes> {
  factory CopyWith$Query$ArtistPackages$artistPackages$items(
    Query$ArtistPackages$artistPackages$items instance,
    TRes Function(Query$ArtistPackages$artistPackages$items) then,
  ) = _CopyWithImpl$Query$ArtistPackages$artistPackages$items;

  factory CopyWith$Query$ArtistPackages$artistPackages$items.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackages$artistPackages$items;

  TRes call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    String? description,
    bool? isDelete,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ArtistPackages$artistPackages$items<TRes>
    implements CopyWith$Query$ArtistPackages$artistPackages$items<TRes> {
  _CopyWithImpl$Query$ArtistPackages$artistPackages$items(
    this._instance,
    this._then,
  );

  final Query$ArtistPackages$artistPackages$items _instance;

  final TRes Function(Query$ArtistPackages$artistPackages$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? packageName = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? description = _undefined,
    Object? isDelete = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackages$artistPackages$items(
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
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      isDelete: isDelete == _undefined || isDelete == null
          ? _instance.isDelete
          : (isDelete as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ArtistPackages$artistPackages$items<TRes>
    implements CopyWith$Query$ArtistPackages$artistPackages$items<TRes> {
  _CopyWithStubImpl$Query$ArtistPackages$artistPackages$items(this._res);

  TRes _res;

  call({
    String? id,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    String? description,
    bool? isDelete,
    String? $__typename,
  }) => _res;
}

class Variables$Query$ArtistPackageDetails {
  factory Variables$Query$ArtistPackageDetails({required String id}) =>
      Variables$Query$ArtistPackageDetails._({r'id': id});

  Variables$Query$ArtistPackageDetails._(this._$data);

  factory Variables$Query$ArtistPackageDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ArtistPackageDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ArtistPackageDetails<
    Variables$Query$ArtistPackageDetails
  >
  get copyWith => CopyWith$Variables$Query$ArtistPackageDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ArtistPackageDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$ArtistPackageDetails<TRes> {
  factory CopyWith$Variables$Query$ArtistPackageDetails(
    Variables$Query$ArtistPackageDetails instance,
    TRes Function(Variables$Query$ArtistPackageDetails) then,
  ) = _CopyWithImpl$Variables$Query$ArtistPackageDetails;

  factory CopyWith$Variables$Query$ArtistPackageDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ArtistPackageDetails;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ArtistPackageDetails<TRes>
    implements CopyWith$Variables$Query$ArtistPackageDetails<TRes> {
  _CopyWithImpl$Variables$Query$ArtistPackageDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$ArtistPackageDetails _instance;

  final TRes Function(Variables$Query$ArtistPackageDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$ArtistPackageDetails._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ArtistPackageDetails<TRes>
    implements CopyWith$Variables$Query$ArtistPackageDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$ArtistPackageDetails(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ArtistPackageDetails {
  Query$ArtistPackageDetails({
    this.artistPackages,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$ArtistPackageDetails.fromJson(Map<String, dynamic> json) {
    final l$artistPackages = json['artistPackages'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackageDetails(
      artistPackages: l$artistPackages == null
          ? null
          : Query$ArtistPackageDetails$artistPackages.fromJson(
              (l$artistPackages as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ArtistPackageDetails$artistPackages? artistPackages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$artistPackages = artistPackages;
    _resultData['artistPackages'] = l$artistPackages?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$artistPackages = artistPackages;
    final l$$__typename = $__typename;
    return Object.hashAll([l$artistPackages, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ArtistPackageDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$artistPackages = artistPackages;
    final lOther$artistPackages = other.artistPackages;
    if (l$artistPackages != lOther$artistPackages) {
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

extension UtilityExtension$Query$ArtistPackageDetails
    on Query$ArtistPackageDetails {
  CopyWith$Query$ArtistPackageDetails<Query$ArtistPackageDetails>
  get copyWith => CopyWith$Query$ArtistPackageDetails(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackageDetails<TRes> {
  factory CopyWith$Query$ArtistPackageDetails(
    Query$ArtistPackageDetails instance,
    TRes Function(Query$ArtistPackageDetails) then,
  ) = _CopyWithImpl$Query$ArtistPackageDetails;

  factory CopyWith$Query$ArtistPackageDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackageDetails;

  TRes call({
    Query$ArtistPackageDetails$artistPackages? artistPackages,
    String? $__typename,
  });
  CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> get artistPackages;
}

class _CopyWithImpl$Query$ArtistPackageDetails<TRes>
    implements CopyWith$Query$ArtistPackageDetails<TRes> {
  _CopyWithImpl$Query$ArtistPackageDetails(this._instance, this._then);

  final Query$ArtistPackageDetails _instance;

  final TRes Function(Query$ArtistPackageDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? artistPackages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackageDetails(
      artistPackages: artistPackages == _undefined
          ? _instance.artistPackages
          : (artistPackages as Query$ArtistPackageDetails$artistPackages?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> get artistPackages {
    final local$artistPackages = _instance.artistPackages;
    return local$artistPackages == null
        ? CopyWith$Query$ArtistPackageDetails$artistPackages.stub(
            _then(_instance),
          )
        : CopyWith$Query$ArtistPackageDetails$artistPackages(
            local$artistPackages,
            (e) => call(artistPackages: e),
          );
  }
}

class _CopyWithStubImpl$Query$ArtistPackageDetails<TRes>
    implements CopyWith$Query$ArtistPackageDetails<TRes> {
  _CopyWithStubImpl$Query$ArtistPackageDetails(this._res);

  TRes _res;

  call({
    Query$ArtistPackageDetails$artistPackages? artistPackages,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> get artistPackages =>
      CopyWith$Query$ArtistPackageDetails$artistPackages.stub(_res);
}

const documentNodeQueryArtistPackageDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ArtistPackageDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'artistPackages'),
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
                            value: VariableNode(name: NameNode(value: 'id')),
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
                        name: NameNode(value: 'artistId'),
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
Query$ArtistPackageDetails _parserFn$Query$ArtistPackageDetails(
  Map<String, dynamic> data,
) => Query$ArtistPackageDetails.fromJson(data);
typedef OnQueryComplete$Query$ArtistPackageDetails =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ArtistPackageDetails?);

class Options$Query$ArtistPackageDetails
    extends graphql.QueryOptions<Query$ArtistPackageDetails> {
  Options$Query$ArtistPackageDetails({
    String? operationName,
    required Variables$Query$ArtistPackageDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackageDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ArtistPackageDetails? onComplete,
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
                     : _parserFn$Query$ArtistPackageDetails(data),
               ),
         onError: onError,
         document: documentNodeQueryArtistPackageDetails,
         parserFn: _parserFn$Query$ArtistPackageDetails,
       );

  final OnQueryComplete$Query$ArtistPackageDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ArtistPackageDetails
    extends graphql.WatchQueryOptions<Query$ArtistPackageDetails> {
  WatchOptions$Query$ArtistPackageDetails({
    String? operationName,
    required Variables$Query$ArtistPackageDetails variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ArtistPackageDetails? typedOptimisticResult,
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
         document: documentNodeQueryArtistPackageDetails,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ArtistPackageDetails,
       );
}

class FetchMoreOptions$Query$ArtistPackageDetails
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ArtistPackageDetails({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ArtistPackageDetails variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryArtistPackageDetails,
       );
}

extension ClientExtension$Query$ArtistPackageDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ArtistPackageDetails>>
  query$ArtistPackageDetails(
    Options$Query$ArtistPackageDetails options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ArtistPackageDetails>
  watchQuery$ArtistPackageDetails(
    WatchOptions$Query$ArtistPackageDetails options,
  ) => this.watchQuery(options);

  void writeQuery$ArtistPackageDetails({
    required Query$ArtistPackageDetails data,
    required Variables$Query$ArtistPackageDetails variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryArtistPackageDetails,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ArtistPackageDetails? readQuery$ArtistPackageDetails({
    required Variables$Query$ArtistPackageDetails variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryArtistPackageDetails,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ArtistPackageDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ArtistPackageDetails>
useQuery$ArtistPackageDetails(Options$Query$ArtistPackageDetails options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ArtistPackageDetails>
useWatchQuery$ArtistPackageDetails(
  WatchOptions$Query$ArtistPackageDetails options,
) => graphql_flutter.useWatchQuery(options);

class Query$ArtistPackageDetails$Widget
    extends graphql_flutter.Query<Query$ArtistPackageDetails> {
  Query$ArtistPackageDetails$Widget({
    widgets.Key? key,
    required Options$Query$ArtistPackageDetails options,
    required graphql_flutter.QueryBuilder<Query$ArtistPackageDetails> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ArtistPackageDetails$artistPackages {
  Query$ArtistPackageDetails$artistPackages({
    required this.totalCount,
    this.items,
    this.$__typename = 'ArtistPackagesCollectionSegment',
  });

  factory Query$ArtistPackageDetails$artistPackages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackageDetails$artistPackages(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$ArtistPackageDetails$artistPackages$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$ArtistPackageDetails$artistPackages$items>? items;

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
    if (other is! Query$ArtistPackageDetails$artistPackages ||
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

extension UtilityExtension$Query$ArtistPackageDetails$artistPackages
    on Query$ArtistPackageDetails$artistPackages {
  CopyWith$Query$ArtistPackageDetails$artistPackages<
    Query$ArtistPackageDetails$artistPackages
  >
  get copyWith =>
      CopyWith$Query$ArtistPackageDetails$artistPackages(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> {
  factory CopyWith$Query$ArtistPackageDetails$artistPackages(
    Query$ArtistPackageDetails$artistPackages instance,
    TRes Function(Query$ArtistPackageDetails$artistPackages) then,
  ) = _CopyWithImpl$Query$ArtistPackageDetails$artistPackages;

  factory CopyWith$Query$ArtistPackageDetails$artistPackages.stub(TRes res) =
      _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages;

  TRes call({
    int? totalCount,
    List<Query$ArtistPackageDetails$artistPackages$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$ArtistPackageDetails$artistPackages$items>? Function(
      Iterable<
        CopyWith$Query$ArtistPackageDetails$artistPackages$items<
          Query$ArtistPackageDetails$artistPackages$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistPackageDetails$artistPackages<TRes>
    implements CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> {
  _CopyWithImpl$Query$ArtistPackageDetails$artistPackages(
    this._instance,
    this._then,
  );

  final Query$ArtistPackageDetails$artistPackages _instance;

  final TRes Function(Query$ArtistPackageDetails$artistPackages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackageDetails$artistPackages(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$ArtistPackageDetails$artistPackages$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$ArtistPackageDetails$artistPackages$items>? Function(
      Iterable<
        CopyWith$Query$ArtistPackageDetails$artistPackages$items<
          Query$ArtistPackageDetails$artistPackages$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$ArtistPackageDetails$artistPackages$items(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages<TRes>
    implements CopyWith$Query$ArtistPackageDetails$artistPackages<TRes> {
  _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$ArtistPackageDetails$artistPackages$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$ArtistPackageDetails$artistPackages$items {
  Query$ArtistPackageDetails$artistPackages$items({
    required this.id,
    required this.artistId,
    required this.packageName,
    required this.amount,
    required this.currency,
    required this.estimateDeliveryDays,
    this.description,
    required this.maxRevision,
    required this.serviceDetails,
    this.$__typename = 'ArtistPackage',
  });

  factory Query$ArtistPackageDetails$artistPackages$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$artistId = json['artistId'];
    final l$packageName = json['packageName'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$estimateDeliveryDays = json['estimateDeliveryDays'];
    final l$description = json['description'];
    final l$maxRevision = json['maxRevision'];
    final l$serviceDetails = json['serviceDetails'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackageDetails$artistPackages$items(
      id: (l$id as String),
      artistId: (l$artistId as String),
      packageName: (l$packageName as String),
      amount: (l$amount as num).toDouble(),
      currency: fromJson$Enum$CurrencyType((l$currency as String)),
      estimateDeliveryDays: (l$estimateDeliveryDays as int),
      description: (l$description as String?),
      maxRevision: (l$maxRevision as int),
      serviceDetails: (l$serviceDetails as List<dynamic>)
          .map(
            (e) =>
                Query$ArtistPackageDetails$artistPackages$items$serviceDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String artistId;

  final String packageName;

  final double amount;

  final Enum$CurrencyType currency;

  final int estimateDeliveryDays;

  final String? description;

  final int maxRevision;

  final List<Query$ArtistPackageDetails$artistPackages$items$serviceDetails>
  serviceDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$artistId = artistId;
    _resultData['artistId'] = l$artistId;
    final l$packageName = packageName;
    _resultData['packageName'] = l$packageName;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = toJson$Enum$CurrencyType(l$currency);
    final l$estimateDeliveryDays = estimateDeliveryDays;
    _resultData['estimateDeliveryDays'] = l$estimateDeliveryDays;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$artistId = artistId;
    final l$packageName = packageName;
    final l$amount = amount;
    final l$currency = currency;
    final l$estimateDeliveryDays = estimateDeliveryDays;
    final l$description = description;
    final l$maxRevision = maxRevision;
    final l$serviceDetails = serviceDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$artistId,
      l$packageName,
      l$amount,
      l$currency,
      l$estimateDeliveryDays,
      l$description,
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
    if (other is! Query$ArtistPackageDetails$artistPackages$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
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

extension UtilityExtension$Query$ArtistPackageDetails$artistPackages$items
    on Query$ArtistPackageDetails$artistPackages$items {
  CopyWith$Query$ArtistPackageDetails$artistPackages$items<
    Query$ArtistPackageDetails$artistPackages$items
  >
  get copyWith =>
      CopyWith$Query$ArtistPackageDetails$artistPackages$items(this, (i) => i);
}

abstract class CopyWith$Query$ArtistPackageDetails$artistPackages$items<TRes> {
  factory CopyWith$Query$ArtistPackageDetails$artistPackages$items(
    Query$ArtistPackageDetails$artistPackages$items instance,
    TRes Function(Query$ArtistPackageDetails$artistPackages$items) then,
  ) = _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items;

  factory CopyWith$Query$ArtistPackageDetails$artistPackages$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items;

  TRes call({
    String? id,
    String? artistId,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    int? estimateDeliveryDays,
    String? description,
    int? maxRevision,
    List<Query$ArtistPackageDetails$artistPackages$items$serviceDetails>?
    serviceDetails,
    String? $__typename,
  });
  TRes serviceDetails(
    Iterable<Query$ArtistPackageDetails$artistPackages$items$serviceDetails>
    Function(
      Iterable<
        CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
          Query$ArtistPackageDetails$artistPackages$items$serviceDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items<TRes>
    implements CopyWith$Query$ArtistPackageDetails$artistPackages$items<TRes> {
  _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items(
    this._instance,
    this._then,
  );

  final Query$ArtistPackageDetails$artistPackages$items _instance;

  final TRes Function(Query$ArtistPackageDetails$artistPackages$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? artistId = _undefined,
    Object? packageName = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? estimateDeliveryDays = _undefined,
    Object? description = _undefined,
    Object? maxRevision = _undefined,
    Object? serviceDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackageDetails$artistPackages$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      artistId: artistId == _undefined || artistId == null
          ? _instance.artistId
          : (artistId as String),
      packageName: packageName == _undefined || packageName == null
          ? _instance.packageName
          : (packageName as String),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as Enum$CurrencyType),
      estimateDeliveryDays:
          estimateDeliveryDays == _undefined || estimateDeliveryDays == null
          ? _instance.estimateDeliveryDays
          : (estimateDeliveryDays as int),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      maxRevision: maxRevision == _undefined || maxRevision == null
          ? _instance.maxRevision
          : (maxRevision as int),
      serviceDetails: serviceDetails == _undefined || serviceDetails == null
          ? _instance.serviceDetails
          : (serviceDetails
                as List<
                  Query$ArtistPackageDetails$artistPackages$items$serviceDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes serviceDetails(
    Iterable<Query$ArtistPackageDetails$artistPackages$items$serviceDetails>
    Function(
      Iterable<
        CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
          Query$ArtistPackageDetails$artistPackages$items$serviceDetails
        >
      >,
    )
    _fn,
  ) => call(
    serviceDetails: _fn(
      _instance.serviceDetails.map(
        (e) =>
            CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items<TRes>
    implements CopyWith$Query$ArtistPackageDetails$artistPackages$items<TRes> {
  _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items(this._res);

  TRes _res;

  call({
    String? id,
    String? artistId,
    String? packageName,
    double? amount,
    Enum$CurrencyType? currency,
    int? estimateDeliveryDays,
    String? description,
    int? maxRevision,
    List<Query$ArtistPackageDetails$artistPackages$items$serviceDetails>?
    serviceDetails,
    String? $__typename,
  }) => _res;

  serviceDetails(_fn) => _res;
}

class Query$ArtistPackageDetails$artistPackages$items$serviceDetails {
  Query$ArtistPackageDetails$artistPackages$items$serviceDetails({
    required this.key,
    required this.value,
    this.$__typename = 'Metadata',
  });

  factory Query$ArtistPackageDetails$artistPackages$items$serviceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
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
            is! Query$ArtistPackageDetails$artistPackages$items$serviceDetails ||
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

extension UtilityExtension$Query$ArtistPackageDetails$artistPackages$items$serviceDetails
    on Query$ArtistPackageDetails$artistPackages$items$serviceDetails {
  CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
    Query$ArtistPackageDetails$artistPackages$items$serviceDetails
  >
  get copyWith =>
      CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
  TRes
> {
  factory CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
    Query$ArtistPackageDetails$artistPackages$items$serviceDetails instance,
    TRes Function(
      Query$ArtistPackageDetails$artistPackages$items$serviceDetails,
    )
    then,
  ) = _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails;

  factory CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
          TRes
        > {
  _CopyWithImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
    this._instance,
    this._then,
  );

  final Query$ArtistPackageDetails$artistPackages$items$serviceDetails
  _instance;

  final TRes Function(
    Query$ArtistPackageDetails$artistPackages$items$serviceDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
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

class _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
  TRes
>
    implements
        CopyWith$Query$ArtistPackageDetails$artistPackages$items$serviceDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$ArtistPackageDetails$artistPackages$items$serviceDetails(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
