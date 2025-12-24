import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TrackList {
  factory Variables$Query$TrackList({required int take}) =>
      Variables$Query$TrackList._({r'take': take});

  Variables$Query$TrackList._(this._$data);

  factory Variables$Query$TrackList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$take = data['take'];
    result$data['take'] = (l$take as int);
    return Variables$Query$TrackList._(result$data);
  }

  Map<String, dynamic> _$data;

  int get take => (_$data['take'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$take = take;
    result$data['take'] = l$take;
    return result$data;
  }

  CopyWith$Variables$Query$TrackList<Variables$Query$TrackList> get copyWith =>
      CopyWith$Variables$Query$TrackList(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TrackList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$take = take;
    return Object.hashAll([l$take]);
  }
}

abstract class CopyWith$Variables$Query$TrackList<TRes> {
  factory CopyWith$Variables$Query$TrackList(
    Variables$Query$TrackList instance,
    TRes Function(Variables$Query$TrackList) then,
  ) = _CopyWithImpl$Variables$Query$TrackList;

  factory CopyWith$Variables$Query$TrackList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TrackList;

  TRes call({int? take});
}

class _CopyWithImpl$Variables$Query$TrackList<TRes>
    implements CopyWith$Variables$Query$TrackList<TRes> {
  _CopyWithImpl$Variables$Query$TrackList(this._instance, this._then);

  final Variables$Query$TrackList _instance;

  final TRes Function(Variables$Query$TrackList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? take = _undefined}) => _then(
    Variables$Query$TrackList._({
      ..._instance._$data,
      if (take != _undefined && take != null) 'take': (take as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TrackList<TRes>
    implements CopyWith$Variables$Query$TrackList<TRes> {
  _CopyWithStubImpl$Variables$Query$TrackList(this._res);

  TRes _res;

  call({int? take}) => _res;
}

class Query$TrackList {
  Query$TrackList({this.tracks, this.$__typename = 'QueryInitialization'});

  factory Query$TrackList.fromJson(Map<String, dynamic> json) {
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Query$TrackList(
      tracks: l$tracks == null
          ? null
          : Query$TrackList$tracks.fromJson((l$tracks as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TrackList$tracks? tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tracks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Query$TrackList on Query$TrackList {
  CopyWith$Query$TrackList<Query$TrackList> get copyWith =>
      CopyWith$Query$TrackList(this, (i) => i);
}

abstract class CopyWith$Query$TrackList<TRes> {
  factory CopyWith$Query$TrackList(
    Query$TrackList instance,
    TRes Function(Query$TrackList) then,
  ) = _CopyWithImpl$Query$TrackList;

  factory CopyWith$Query$TrackList.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackList;

  TRes call({Query$TrackList$tracks? tracks, String? $__typename});
  CopyWith$Query$TrackList$tracks<TRes> get tracks;
}

class _CopyWithImpl$Query$TrackList<TRes>
    implements CopyWith$Query$TrackList<TRes> {
  _CopyWithImpl$Query$TrackList(this._instance, this._then);

  final Query$TrackList _instance;

  final TRes Function(Query$TrackList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tracks = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackList(
          tracks: tracks == _undefined
              ? _instance.tracks
              : (tracks as Query$TrackList$tracks?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$TrackList$tracks<TRes> get tracks {
    final local$tracks = _instance.tracks;
    return local$tracks == null
        ? CopyWith$Query$TrackList$tracks.stub(_then(_instance))
        : CopyWith$Query$TrackList$tracks(local$tracks, (e) => call(tracks: e));
  }
}

class _CopyWithStubImpl$Query$TrackList<TRes>
    implements CopyWith$Query$TrackList<TRes> {
  _CopyWithStubImpl$Query$TrackList(this._res);

  TRes _res;

  call({Query$TrackList$tracks? tracks, String? $__typename}) => _res;

  CopyWith$Query$TrackList$tracks<TRes> get tracks =>
      CopyWith$Query$TrackList$tracks.stub(_res);
}

const documentNodeQueryTrackList = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrackList'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tracks'),
            alias: null,
            arguments: [
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
                        name: NameNode(value: 'mainArtistIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mainArtists'),
                        alias: null,
                        arguments: [],
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
                        name: NameNode(value: 'checkTrackInFavorite'),
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
Query$TrackList _parserFn$Query$TrackList(Map<String, dynamic> data) =>
    Query$TrackList.fromJson(data);
typedef OnQueryComplete$Query$TrackList =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TrackList?);

class Options$Query$TrackList extends graphql.QueryOptions<Query$TrackList> {
  Options$Query$TrackList({
    String? operationName,
    required Variables$Query$TrackList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TrackList? onComplete,
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
                 data == null ? null : _parserFn$Query$TrackList(data),
               ),
         onError: onError,
         document: documentNodeQueryTrackList,
         parserFn: _parserFn$Query$TrackList,
       );

  final OnQueryComplete$Query$TrackList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TrackList
    extends graphql.WatchQueryOptions<Query$TrackList> {
  WatchOptions$Query$TrackList({
    String? operationName,
    required Variables$Query$TrackList variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackList? typedOptimisticResult,
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
         document: documentNodeQueryTrackList,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TrackList,
       );
}

class FetchMoreOptions$Query$TrackList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TrackList({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TrackList variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTrackList,
       );
}

extension ClientExtension$Query$TrackList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TrackList>> query$TrackList(
    Options$Query$TrackList options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TrackList> watchQuery$TrackList(
    WatchOptions$Query$TrackList options,
  ) => this.watchQuery(options);

  void writeQuery$TrackList({
    required Query$TrackList data,
    required Variables$Query$TrackList variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTrackList),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TrackList? readQuery$TrackList({
    required Variables$Query$TrackList variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTrackList),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TrackList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TrackList> useQuery$TrackList(
  Options$Query$TrackList options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TrackList> useWatchQuery$TrackList(
  WatchOptions$Query$TrackList options,
) => graphql_flutter.useWatchQuery(options);

class Query$TrackList$Widget extends graphql_flutter.Query<Query$TrackList> {
  Query$TrackList$Widget({
    widgets.Key? key,
    required Options$Query$TrackList options,
    required graphql_flutter.QueryBuilder<Query$TrackList> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TrackList$tracks {
  Query$TrackList$tracks({
    required this.totalCount,
    this.items,
    this.$__typename = 'TracksCollectionSegment',
  });

  factory Query$TrackList$tracks.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackList$tracks(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackList$tracks$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$TrackList$tracks$items>? items;

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
    if (other is! Query$TrackList$tracks || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$TrackList$tracks on Query$TrackList$tracks {
  CopyWith$Query$TrackList$tracks<Query$TrackList$tracks> get copyWith =>
      CopyWith$Query$TrackList$tracks(this, (i) => i);
}

abstract class CopyWith$Query$TrackList$tracks<TRes> {
  factory CopyWith$Query$TrackList$tracks(
    Query$TrackList$tracks instance,
    TRes Function(Query$TrackList$tracks) then,
  ) = _CopyWithImpl$Query$TrackList$tracks;

  factory CopyWith$Query$TrackList$tracks.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackList$tracks;

  TRes call({
    int? totalCount,
    List<Query$TrackList$tracks$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackList$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackList$tracks$items<Query$TrackList$tracks$items>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackList$tracks<TRes>
    implements CopyWith$Query$TrackList$tracks<TRes> {
  _CopyWithImpl$Query$TrackList$tracks(this._instance, this._then);

  final Query$TrackList$tracks _instance;

  final TRes Function(Query$TrackList$tracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackList$tracks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$TrackList$tracks$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TrackList$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackList$tracks$items<Query$TrackList$tracks$items>
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackList$tracks$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackList$tracks<TRes>
    implements CopyWith$Query$TrackList$tracks<TRes> {
  _CopyWithStubImpl$Query$TrackList$tracks(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$TrackList$tracks$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackList$tracks$items {
  Query$TrackList$tracks$items({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.mainArtistIds,
    this.mainArtists,
    required this.checkTrackInFavorite,
    this.$__typename = 'Track',
  });

  factory Query$TrackList$tracks$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$mainArtistIds = json['mainArtistIds'];
    final l$mainArtists = json['mainArtists'];
    final l$checkTrackInFavorite = json['checkTrackInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$TrackList$tracks$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String),
      mainArtistIds: (l$mainArtistIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      mainArtists: l$mainArtists == null
          ? null
          : Query$TrackList$tracks$items$mainArtists.fromJson(
              (l$mainArtists as Map<String, dynamic>),
            ),
      checkTrackInFavorite: (l$checkTrackInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String coverImage;

  final List<String> mainArtistIds;

  final Query$TrackList$tracks$items$mainArtists? mainArtists;

  final bool checkTrackInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$mainArtistIds = mainArtistIds;
    _resultData['mainArtistIds'] = l$mainArtistIds.map((e) => e).toList();
    final l$mainArtists = mainArtists;
    _resultData['mainArtists'] = l$mainArtists?.toJson();
    final l$checkTrackInFavorite = checkTrackInFavorite;
    _resultData['checkTrackInFavorite'] = l$checkTrackInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$mainArtistIds = mainArtistIds;
    final l$mainArtists = mainArtists;
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      Object.hashAll(l$mainArtistIds.map((v) => v)),
      l$mainArtists,
      l$checkTrackInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackList$tracks$items ||
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
    final l$mainArtistIds = mainArtistIds;
    final lOther$mainArtistIds = other.mainArtistIds;
    if (l$mainArtistIds.length != lOther$mainArtistIds.length) {
      return false;
    }
    for (int i = 0; i < l$mainArtistIds.length; i++) {
      final l$mainArtistIds$entry = l$mainArtistIds[i];
      final lOther$mainArtistIds$entry = lOther$mainArtistIds[i];
      if (l$mainArtistIds$entry != lOther$mainArtistIds$entry) {
        return false;
      }
    }
    final l$mainArtists = mainArtists;
    final lOther$mainArtists = other.mainArtists;
    if (l$mainArtists != lOther$mainArtists) {
      return false;
    }
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final lOther$checkTrackInFavorite = other.checkTrackInFavorite;
    if (l$checkTrackInFavorite != lOther$checkTrackInFavorite) {
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

extension UtilityExtension$Query$TrackList$tracks$items
    on Query$TrackList$tracks$items {
  CopyWith$Query$TrackList$tracks$items<Query$TrackList$tracks$items>
  get copyWith => CopyWith$Query$TrackList$tracks$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackList$tracks$items<TRes> {
  factory CopyWith$Query$TrackList$tracks$items(
    Query$TrackList$tracks$items instance,
    TRes Function(Query$TrackList$tracks$items) then,
  ) = _CopyWithImpl$Query$TrackList$tracks$items;

  factory CopyWith$Query$TrackList$tracks$items.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackList$tracks$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    Query$TrackList$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    String? $__typename,
  });
  CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> get mainArtists;
}

class _CopyWithImpl$Query$TrackList$tracks$items<TRes>
    implements CopyWith$Query$TrackList$tracks$items<TRes> {
  _CopyWithImpl$Query$TrackList$tracks$items(this._instance, this._then);

  final Query$TrackList$tracks$items _instance;

  final TRes Function(Query$TrackList$tracks$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? mainArtistIds = _undefined,
    Object? mainArtists = _undefined,
    Object? checkTrackInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackList$tracks$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined || coverImage == null
          ? _instance.coverImage
          : (coverImage as String),
      mainArtistIds: mainArtistIds == _undefined || mainArtistIds == null
          ? _instance.mainArtistIds
          : (mainArtistIds as List<String>),
      mainArtists: mainArtists == _undefined
          ? _instance.mainArtists
          : (mainArtists as Query$TrackList$tracks$items$mainArtists?),
      checkTrackInFavorite:
          checkTrackInFavorite == _undefined || checkTrackInFavorite == null
          ? _instance.checkTrackInFavorite
          : (checkTrackInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> get mainArtists {
    final local$mainArtists = _instance.mainArtists;
    return local$mainArtists == null
        ? CopyWith$Query$TrackList$tracks$items$mainArtists.stub(
            _then(_instance),
          )
        : CopyWith$Query$TrackList$tracks$items$mainArtists(
            local$mainArtists,
            (e) => call(mainArtists: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackList$tracks$items<TRes>
    implements CopyWith$Query$TrackList$tracks$items<TRes> {
  _CopyWithStubImpl$Query$TrackList$tracks$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    Query$TrackList$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> get mainArtists =>
      CopyWith$Query$TrackList$tracks$items$mainArtists.stub(_res);
}

class Query$TrackList$tracks$items$mainArtists {
  Query$TrackList$tracks$items$mainArtists({
    this.items,
    this.$__typename = 'MainArtistsCollectionSegment',
  });

  factory Query$TrackList$tracks$items$mainArtists.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackList$tracks$items$mainArtists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackList$tracks$items$mainArtists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TrackList$tracks$items$mainArtists$items>? items;

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
    if (other is! Query$TrackList$tracks$items$mainArtists ||
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

extension UtilityExtension$Query$TrackList$tracks$items$mainArtists
    on Query$TrackList$tracks$items$mainArtists {
  CopyWith$Query$TrackList$tracks$items$mainArtists<
    Query$TrackList$tracks$items$mainArtists
  >
  get copyWith =>
      CopyWith$Query$TrackList$tracks$items$mainArtists(this, (i) => i);
}

abstract class CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> {
  factory CopyWith$Query$TrackList$tracks$items$mainArtists(
    Query$TrackList$tracks$items$mainArtists instance,
    TRes Function(Query$TrackList$tracks$items$mainArtists) then,
  ) = _CopyWithImpl$Query$TrackList$tracks$items$mainArtists;

  factory CopyWith$Query$TrackList$tracks$items$mainArtists.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists;

  TRes call({
    List<Query$TrackList$tracks$items$mainArtists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackList$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackList$tracks$items$mainArtists$items<
          Query$TrackList$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackList$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> {
  _CopyWithImpl$Query$TrackList$tracks$items$mainArtists(
    this._instance,
    this._then,
  );

  final Query$TrackList$tracks$items$mainArtists _instance;

  final TRes Function(Query$TrackList$tracks$items$mainArtists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackList$tracks$items$mainArtists(
          items: items == _undefined
              ? _instance.items
              : (items
                    as List<Query$TrackList$tracks$items$mainArtists$items>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes items(
    Iterable<Query$TrackList$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackList$tracks$items$mainArtists$items<
          Query$TrackList$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackList$tracks$items$mainArtists$items(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackList$tracks$items$mainArtists<TRes> {
  _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists(this._res);

  TRes _res;

  call({
    List<Query$TrackList$tracks$items$mainArtists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackList$tracks$items$mainArtists$items {
  Query$TrackList$tracks$items$mainArtists$items({
    required this.id,
    required this.stageName,
    this.$__typename = 'Artist',
  });

  factory Query$TrackList$tracks$items$mainArtists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$stageName = json['stageName'];
    final l$$__typename = json['__typename'];
    return Query$TrackList$tracks$items$mainArtists$items(
      id: (l$id as String),
      stageName: (l$stageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stageName = stageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$stageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackList$tracks$items$mainArtists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$TrackList$tracks$items$mainArtists$items
    on Query$TrackList$tracks$items$mainArtists$items {
  CopyWith$Query$TrackList$tracks$items$mainArtists$items<
    Query$TrackList$tracks$items$mainArtists$items
  >
  get copyWith =>
      CopyWith$Query$TrackList$tracks$items$mainArtists$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackList$tracks$items$mainArtists$items<TRes> {
  factory CopyWith$Query$TrackList$tracks$items$mainArtists$items(
    Query$TrackList$tracks$items$mainArtists$items instance,
    TRes Function(Query$TrackList$tracks$items$mainArtists$items) then,
  ) = _CopyWithImpl$Query$TrackList$tracks$items$mainArtists$items;

  factory CopyWith$Query$TrackList$tracks$items$mainArtists$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists$items;

  TRes call({String? id, String? stageName, String? $__typename});
}

class _CopyWithImpl$Query$TrackList$tracks$items$mainArtists$items<TRes>
    implements CopyWith$Query$TrackList$tracks$items$mainArtists$items<TRes> {
  _CopyWithImpl$Query$TrackList$tracks$items$mainArtists$items(
    this._instance,
    this._then,
  );

  final Query$TrackList$tracks$items$mainArtists$items _instance;

  final TRes Function(Query$TrackList$tracks$items$mainArtists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackList$tracks$items$mainArtists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists$items<TRes>
    implements CopyWith$Query$TrackList$tracks$items$mainArtists$items<TRes> {
  _CopyWithStubImpl$Query$TrackList$tracks$items$mainArtists$items(this._res);

  TRes _res;

  call({String? id, String? stageName, String? $__typename}) => _res;
}

class Variables$Query$TrackDetail {
  factory Variables$Query$TrackDetail({
    Input$TrackFilterInput? where,
    required int take,
  }) => Variables$Query$TrackDetail._({
    if (where != null) r'where': where,
    r'take': take,
  });

  Variables$Query$TrackDetail._(this._$data);

  factory Variables$Query$TrackDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$TrackFilterInput.fromJson((l$where as Map<String, dynamic>));
    }
    final l$take = data['take'];
    result$data['take'] = (l$take as int);
    return Variables$Query$TrackDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TrackFilterInput? get where =>
      (_$data['where'] as Input$TrackFilterInput?);

  int get take => (_$data['take'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    final l$take = take;
    result$data['take'] = l$take;
    return result$data;
  }

  CopyWith$Variables$Query$TrackDetail<Variables$Query$TrackDetail>
  get copyWith => CopyWith$Variables$Query$TrackDetail(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TrackDetail ||
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
    if (l$take != lOther$take) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$take = take;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      l$take,
    ]);
  }
}

abstract class CopyWith$Variables$Query$TrackDetail<TRes> {
  factory CopyWith$Variables$Query$TrackDetail(
    Variables$Query$TrackDetail instance,
    TRes Function(Variables$Query$TrackDetail) then,
  ) = _CopyWithImpl$Variables$Query$TrackDetail;

  factory CopyWith$Variables$Query$TrackDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TrackDetail;

  TRes call({Input$TrackFilterInput? where, int? take});
}

class _CopyWithImpl$Variables$Query$TrackDetail<TRes>
    implements CopyWith$Variables$Query$TrackDetail<TRes> {
  _CopyWithImpl$Variables$Query$TrackDetail(this._instance, this._then);

  final Variables$Query$TrackDetail _instance;

  final TRes Function(Variables$Query$TrackDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined, Object? take = _undefined}) => _then(
    Variables$Query$TrackDetail._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as Input$TrackFilterInput?),
      if (take != _undefined && take != null) 'take': (take as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TrackDetail<TRes>
    implements CopyWith$Variables$Query$TrackDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$TrackDetail(this._res);

  TRes _res;

  call({Input$TrackFilterInput? where, int? take}) => _res;
}

class Query$TrackDetail {
  Query$TrackDetail({this.tracks, this.$__typename = 'QueryInitialization'});

  factory Query$TrackDetail.fromJson(Map<String, dynamic> json) {
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail(
      tracks: l$tracks == null
          ? null
          : Query$TrackDetail$tracks.fromJson(
              (l$tracks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TrackDetail$tracks? tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tracks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackDetail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Query$TrackDetail on Query$TrackDetail {
  CopyWith$Query$TrackDetail<Query$TrackDetail> get copyWith =>
      CopyWith$Query$TrackDetail(this, (i) => i);
}

abstract class CopyWith$Query$TrackDetail<TRes> {
  factory CopyWith$Query$TrackDetail(
    Query$TrackDetail instance,
    TRes Function(Query$TrackDetail) then,
  ) = _CopyWithImpl$Query$TrackDetail;

  factory CopyWith$Query$TrackDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackDetail;

  TRes call({Query$TrackDetail$tracks? tracks, String? $__typename});
  CopyWith$Query$TrackDetail$tracks<TRes> get tracks;
}

class _CopyWithImpl$Query$TrackDetail<TRes>
    implements CopyWith$Query$TrackDetail<TRes> {
  _CopyWithImpl$Query$TrackDetail(this._instance, this._then);

  final Query$TrackDetail _instance;

  final TRes Function(Query$TrackDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tracks = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackDetail(
          tracks: tracks == _undefined
              ? _instance.tracks
              : (tracks as Query$TrackDetail$tracks?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$TrackDetail$tracks<TRes> get tracks {
    final local$tracks = _instance.tracks;
    return local$tracks == null
        ? CopyWith$Query$TrackDetail$tracks.stub(_then(_instance))
        : CopyWith$Query$TrackDetail$tracks(
            local$tracks,
            (e) => call(tracks: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackDetail<TRes>
    implements CopyWith$Query$TrackDetail<TRes> {
  _CopyWithStubImpl$Query$TrackDetail(this._res);

  TRes _res;

  call({Query$TrackDetail$tracks? tracks, String? $__typename}) => _res;

  CopyWith$Query$TrackDetail$tracks<TRes> get tracks =>
      CopyWith$Query$TrackDetail$tracks.stub(_res);
}

const documentNodeQueryTrackDetail = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrackDetail'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'TrackFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tracks'),
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
                        name: NameNode(value: 'favoriteCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'streamCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mainArtistIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mainArtists'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'take'),
                            value: IntValueNode(value: '3'),
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
                                    name: NameNode(value: 'stageName'),
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
                                    name: NameNode(value: 'userId'),
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
                                          name: NameNode(value: 'id'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'checkUserFollowing',
                                          ),
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
                        name: NameNode(value: 'checkTrackInFavorite'),
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
Query$TrackDetail _parserFn$Query$TrackDetail(Map<String, dynamic> data) =>
    Query$TrackDetail.fromJson(data);
typedef OnQueryComplete$Query$TrackDetail =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TrackDetail?);

class Options$Query$TrackDetail
    extends graphql.QueryOptions<Query$TrackDetail> {
  Options$Query$TrackDetail({
    String? operationName,
    required Variables$Query$TrackDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TrackDetail? onComplete,
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
                 data == null ? null : _parserFn$Query$TrackDetail(data),
               ),
         onError: onError,
         document: documentNodeQueryTrackDetail,
         parserFn: _parserFn$Query$TrackDetail,
       );

  final OnQueryComplete$Query$TrackDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TrackDetail
    extends graphql.WatchQueryOptions<Query$TrackDetail> {
  WatchOptions$Query$TrackDetail({
    String? operationName,
    required Variables$Query$TrackDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackDetail? typedOptimisticResult,
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
         document: documentNodeQueryTrackDetail,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TrackDetail,
       );
}

class FetchMoreOptions$Query$TrackDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TrackDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TrackDetail variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTrackDetail,
       );
}

extension ClientExtension$Query$TrackDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TrackDetail>> query$TrackDetail(
    Options$Query$TrackDetail options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TrackDetail> watchQuery$TrackDetail(
    WatchOptions$Query$TrackDetail options,
  ) => this.watchQuery(options);

  void writeQuery$TrackDetail({
    required Query$TrackDetail data,
    required Variables$Query$TrackDetail variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTrackDetail),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TrackDetail? readQuery$TrackDetail({
    required Variables$Query$TrackDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTrackDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TrackDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TrackDetail> useQuery$TrackDetail(
  Options$Query$TrackDetail options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TrackDetail> useWatchQuery$TrackDetail(
  WatchOptions$Query$TrackDetail options,
) => graphql_flutter.useWatchQuery(options);

class Query$TrackDetail$Widget
    extends graphql_flutter.Query<Query$TrackDetail> {
  Query$TrackDetail$Widget({
    widgets.Key? key,
    required Options$Query$TrackDetail options,
    required graphql_flutter.QueryBuilder<Query$TrackDetail> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TrackDetail$tracks {
  Query$TrackDetail$tracks({
    required this.totalCount,
    this.items,
    this.$__typename = 'TracksCollectionSegment',
  });

  factory Query$TrackDetail$tracks.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail$tracks(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackDetail$tracks$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$TrackDetail$tracks$items>? items;

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
    if (other is! Query$TrackDetail$tracks ||
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

extension UtilityExtension$Query$TrackDetail$tracks
    on Query$TrackDetail$tracks {
  CopyWith$Query$TrackDetail$tracks<Query$TrackDetail$tracks> get copyWith =>
      CopyWith$Query$TrackDetail$tracks(this, (i) => i);
}

abstract class CopyWith$Query$TrackDetail$tracks<TRes> {
  factory CopyWith$Query$TrackDetail$tracks(
    Query$TrackDetail$tracks instance,
    TRes Function(Query$TrackDetail$tracks) then,
  ) = _CopyWithImpl$Query$TrackDetail$tracks;

  factory CopyWith$Query$TrackDetail$tracks.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackDetail$tracks;

  TRes call({
    int? totalCount,
    List<Query$TrackDetail$tracks$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackDetail$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items<Query$TrackDetail$tracks$items>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackDetail$tracks<TRes>
    implements CopyWith$Query$TrackDetail$tracks<TRes> {
  _CopyWithImpl$Query$TrackDetail$tracks(this._instance, this._then);

  final Query$TrackDetail$tracks _instance;

  final TRes Function(Query$TrackDetail$tracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackDetail$tracks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$TrackDetail$tracks$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TrackDetail$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items<Query$TrackDetail$tracks$items>
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackDetail$tracks$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackDetail$tracks<TRes>
    implements CopyWith$Query$TrackDetail$tracks<TRes> {
  _CopyWithStubImpl$Query$TrackDetail$tracks(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$TrackDetail$tracks$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackDetail$tracks$items {
  Query$TrackDetail$tracks$items({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.favoriteCount,
    required this.streamCount,
    required this.mainArtistIds,
    this.mainArtists,
    required this.checkTrackInFavorite,
    this.$__typename = 'Track',
  });

  factory Query$TrackDetail$tracks$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$favoriteCount = json['favoriteCount'];
    final l$streamCount = json['streamCount'];
    final l$mainArtistIds = json['mainArtistIds'];
    final l$mainArtists = json['mainArtists'];
    final l$checkTrackInFavorite = json['checkTrackInFavorite'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail$tracks$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String),
      favoriteCount: (l$favoriteCount as int),
      streamCount: (l$streamCount as int),
      mainArtistIds: (l$mainArtistIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      mainArtists: l$mainArtists == null
          ? null
          : Query$TrackDetail$tracks$items$mainArtists.fromJson(
              (l$mainArtists as Map<String, dynamic>),
            ),
      checkTrackInFavorite: (l$checkTrackInFavorite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String coverImage;

  final int favoriteCount;

  final int streamCount;

  final List<String> mainArtistIds;

  final Query$TrackDetail$tracks$items$mainArtists? mainArtists;

  final bool checkTrackInFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$favoriteCount = favoriteCount;
    _resultData['favoriteCount'] = l$favoriteCount;
    final l$streamCount = streamCount;
    _resultData['streamCount'] = l$streamCount;
    final l$mainArtistIds = mainArtistIds;
    _resultData['mainArtistIds'] = l$mainArtistIds.map((e) => e).toList();
    final l$mainArtists = mainArtists;
    _resultData['mainArtists'] = l$mainArtists?.toJson();
    final l$checkTrackInFavorite = checkTrackInFavorite;
    _resultData['checkTrackInFavorite'] = l$checkTrackInFavorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$favoriteCount = favoriteCount;
    final l$streamCount = streamCount;
    final l$mainArtistIds = mainArtistIds;
    final l$mainArtists = mainArtists;
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      l$favoriteCount,
      l$streamCount,
      Object.hashAll(l$mainArtistIds.map((v) => v)),
      l$mainArtists,
      l$checkTrackInFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackDetail$tracks$items ||
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
    final l$favoriteCount = favoriteCount;
    final lOther$favoriteCount = other.favoriteCount;
    if (l$favoriteCount != lOther$favoriteCount) {
      return false;
    }
    final l$streamCount = streamCount;
    final lOther$streamCount = other.streamCount;
    if (l$streamCount != lOther$streamCount) {
      return false;
    }
    final l$mainArtistIds = mainArtistIds;
    final lOther$mainArtistIds = other.mainArtistIds;
    if (l$mainArtistIds.length != lOther$mainArtistIds.length) {
      return false;
    }
    for (int i = 0; i < l$mainArtistIds.length; i++) {
      final l$mainArtistIds$entry = l$mainArtistIds[i];
      final lOther$mainArtistIds$entry = lOther$mainArtistIds[i];
      if (l$mainArtistIds$entry != lOther$mainArtistIds$entry) {
        return false;
      }
    }
    final l$mainArtists = mainArtists;
    final lOther$mainArtists = other.mainArtists;
    if (l$mainArtists != lOther$mainArtists) {
      return false;
    }
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final lOther$checkTrackInFavorite = other.checkTrackInFavorite;
    if (l$checkTrackInFavorite != lOther$checkTrackInFavorite) {
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

extension UtilityExtension$Query$TrackDetail$tracks$items
    on Query$TrackDetail$tracks$items {
  CopyWith$Query$TrackDetail$tracks$items<Query$TrackDetail$tracks$items>
  get copyWith => CopyWith$Query$TrackDetail$tracks$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackDetail$tracks$items<TRes> {
  factory CopyWith$Query$TrackDetail$tracks$items(
    Query$TrackDetail$tracks$items instance,
    TRes Function(Query$TrackDetail$tracks$items) then,
  ) = _CopyWithImpl$Query$TrackDetail$tracks$items;

  factory CopyWith$Query$TrackDetail$tracks$items.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackDetail$tracks$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    int? favoriteCount,
    int? streamCount,
    List<String>? mainArtistIds,
    Query$TrackDetail$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    String? $__typename,
  });
  CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> get mainArtists;
}

class _CopyWithImpl$Query$TrackDetail$tracks$items<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items<TRes> {
  _CopyWithImpl$Query$TrackDetail$tracks$items(this._instance, this._then);

  final Query$TrackDetail$tracks$items _instance;

  final TRes Function(Query$TrackDetail$tracks$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? favoriteCount = _undefined,
    Object? streamCount = _undefined,
    Object? mainArtistIds = _undefined,
    Object? mainArtists = _undefined,
    Object? checkTrackInFavorite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackDetail$tracks$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined || coverImage == null
          ? _instance.coverImage
          : (coverImage as String),
      favoriteCount: favoriteCount == _undefined || favoriteCount == null
          ? _instance.favoriteCount
          : (favoriteCount as int),
      streamCount: streamCount == _undefined || streamCount == null
          ? _instance.streamCount
          : (streamCount as int),
      mainArtistIds: mainArtistIds == _undefined || mainArtistIds == null
          ? _instance.mainArtistIds
          : (mainArtistIds as List<String>),
      mainArtists: mainArtists == _undefined
          ? _instance.mainArtists
          : (mainArtists as Query$TrackDetail$tracks$items$mainArtists?),
      checkTrackInFavorite:
          checkTrackInFavorite == _undefined || checkTrackInFavorite == null
          ? _instance.checkTrackInFavorite
          : (checkTrackInFavorite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> get mainArtists {
    final local$mainArtists = _instance.mainArtists;
    return local$mainArtists == null
        ? CopyWith$Query$TrackDetail$tracks$items$mainArtists.stub(
            _then(_instance),
          )
        : CopyWith$Query$TrackDetail$tracks$items$mainArtists(
            local$mainArtists,
            (e) => call(mainArtists: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackDetail$tracks$items<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items<TRes> {
  _CopyWithStubImpl$Query$TrackDetail$tracks$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    int? favoriteCount,
    int? streamCount,
    List<String>? mainArtistIds,
    Query$TrackDetail$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> get mainArtists =>
      CopyWith$Query$TrackDetail$tracks$items$mainArtists.stub(_res);
}

class Query$TrackDetail$tracks$items$mainArtists {
  Query$TrackDetail$tracks$items$mainArtists({
    this.items,
    this.$__typename = 'MainArtistsCollectionSegment',
  });

  factory Query$TrackDetail$tracks$items$mainArtists.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail$tracks$items$mainArtists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackDetail$tracks$items$mainArtists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TrackDetail$tracks$items$mainArtists$items>? items;

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
    if (other is! Query$TrackDetail$tracks$items$mainArtists ||
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

extension UtilityExtension$Query$TrackDetail$tracks$items$mainArtists
    on Query$TrackDetail$tracks$items$mainArtists {
  CopyWith$Query$TrackDetail$tracks$items$mainArtists<
    Query$TrackDetail$tracks$items$mainArtists
  >
  get copyWith =>
      CopyWith$Query$TrackDetail$tracks$items$mainArtists(this, (i) => i);
}

abstract class CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> {
  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists(
    Query$TrackDetail$tracks$items$mainArtists instance,
    TRes Function(Query$TrackDetail$tracks$items$mainArtists) then,
  ) = _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists;

  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists;

  TRes call({
    List<Query$TrackDetail$tracks$items$mainArtists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackDetail$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<
          Query$TrackDetail$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> {
  _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists(
    this._instance,
    this._then,
  );

  final Query$TrackDetail$tracks$items$mainArtists _instance;

  final TRes Function(Query$TrackDetail$tracks$items$mainArtists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackDetail$tracks$items$mainArtists(
          items: items == _undefined
              ? _instance.items
              : (items
                    as List<Query$TrackDetail$tracks$items$mainArtists$items>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes items(
    Iterable<Query$TrackDetail$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<
          Query$TrackDetail$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackDetail$tracks$items$mainArtists$items(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items$mainArtists<TRes> {
  _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists(this._res);

  TRes _res;

  call({
    List<Query$TrackDetail$tracks$items$mainArtists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackDetail$tracks$items$mainArtists$items {
  Query$TrackDetail$tracks$items$mainArtists$items({
    required this.id,
    required this.stageName,
    required this.followerCount,
    this.avatarImage,
    required this.userId,
    required this.user,
    this.$__typename = 'Artist',
  });

  factory Query$TrackDetail$tracks$items$mainArtists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$stageName = json['stageName'];
    final l$followerCount = json['followerCount'];
    final l$avatarImage = json['avatarImage'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail$tracks$items$mainArtists$items(
      id: (l$id as String),
      stageName: (l$stageName as String),
      followerCount: (l$followerCount as int),
      avatarImage: (l$avatarImage as String?),
      userId: (l$userId as String),
      user: (l$user as List<dynamic>)
          .map(
            (e) =>
                Query$TrackDetail$tracks$items$mainArtists$items$user.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stageName;

  final int followerCount;

  final String? avatarImage;

  final String userId;

  final List<Query$TrackDetail$tracks$items$mainArtists$items$user> user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$followerCount = followerCount;
    _resultData['followerCount'] = l$followerCount;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stageName = stageName;
    final l$followerCount = followerCount;
    final l$avatarImage = avatarImage;
    final l$userId = userId;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$stageName,
      l$followerCount,
      l$avatarImage,
      l$userId,
      Object.hashAll(l$user.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackDetail$tracks$items$mainArtists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$stageName = stageName;
    final lOther$stageName = other.stageName;
    if (l$stageName != lOther$stageName) {
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Query$TrackDetail$tracks$items$mainArtists$items
    on Query$TrackDetail$tracks$items$mainArtists$items {
  CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<
    Query$TrackDetail$tracks$items$mainArtists$items
  >
  get copyWith =>
      CopyWith$Query$TrackDetail$tracks$items$mainArtists$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<TRes> {
  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists$items(
    Query$TrackDetail$tracks$items$mainArtists$items instance,
    TRes Function(Query$TrackDetail$tracks$items$mainArtists$items) then,
  ) = _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items;

  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items;

  TRes call({
    String? id,
    String? stageName,
    int? followerCount,
    String? avatarImage,
    String? userId,
    List<Query$TrackDetail$tracks$items$mainArtists$items$user>? user,
    String? $__typename,
  });
  TRes user(
    Iterable<Query$TrackDetail$tracks$items$mainArtists$items$user> Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<
          Query$TrackDetail$tracks$items$mainArtists$items$user
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<TRes> {
  _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items(
    this._instance,
    this._then,
  );

  final Query$TrackDetail$tracks$items$mainArtists$items _instance;

  final TRes Function(Query$TrackDetail$tracks$items$mainArtists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stageName = _undefined,
    Object? followerCount = _undefined,
    Object? avatarImage = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackDetail$tracks$items$mainArtists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      followerCount: followerCount == _undefined || followerCount == null
          ? _instance.followerCount
          : (followerCount as int),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage as String?),
      userId: userId == _undefined || userId == null
          ? _instance.userId
          : (userId as String),
      user: user == _undefined || user == null
          ? _instance.user
          : (user
                as List<Query$TrackDetail$tracks$items$mainArtists$items$user>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes user(
    Iterable<Query$TrackDetail$tracks$items$mainArtists$items$user> Function(
      Iterable<
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<
          Query$TrackDetail$tracks$items$mainArtists$items$user
        >
      >,
    )
    _fn,
  ) => call(
    user: _fn(
      _instance.user.map(
        (e) => CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items<TRes>
    implements CopyWith$Query$TrackDetail$tracks$items$mainArtists$items<TRes> {
  _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items(this._res);

  TRes _res;

  call({
    String? id,
    String? stageName,
    int? followerCount,
    String? avatarImage,
    String? userId,
    List<Query$TrackDetail$tracks$items$mainArtists$items$user>? user,
    String? $__typename,
  }) => _res;

  user(_fn) => _res;
}

class Query$TrackDetail$tracks$items$mainArtists$items$user {
  Query$TrackDetail$tracks$items$mainArtists$items$user({
    required this.id,
    required this.checkUserFollowing,
    this.$__typename = 'User',
  });

  factory Query$TrackDetail$tracks$items$mainArtists$items$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$checkUserFollowing = json['checkUserFollowing'];
    final l$$__typename = json['__typename'];
    return Query$TrackDetail$tracks$items$mainArtists$items$user(
      id: (l$id as String),
      checkUserFollowing: (l$checkUserFollowing as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool checkUserFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$checkUserFollowing = checkUserFollowing;
    _resultData['checkUserFollowing'] = l$checkUserFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$checkUserFollowing = checkUserFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$checkUserFollowing, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackDetail$tracks$items$mainArtists$items$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$checkUserFollowing = checkUserFollowing;
    final lOther$checkUserFollowing = other.checkUserFollowing;
    if (l$checkUserFollowing != lOther$checkUserFollowing) {
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

extension UtilityExtension$Query$TrackDetail$tracks$items$mainArtists$items$user
    on Query$TrackDetail$tracks$items$mainArtists$items$user {
  CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<
    Query$TrackDetail$tracks$items$mainArtists$items$user
  >
  get copyWith =>
      CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<
  TRes
> {
  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user(
    Query$TrackDetail$tracks$items$mainArtists$items$user instance,
    TRes Function(Query$TrackDetail$tracks$items$mainArtists$items$user) then,
  ) = _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items$user;

  factory CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items$user;

  TRes call({String? id, bool? checkUserFollowing, String? $__typename});
}

class _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items$user<TRes>
    implements
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<TRes> {
  _CopyWithImpl$Query$TrackDetail$tracks$items$mainArtists$items$user(
    this._instance,
    this._then,
  );

  final Query$TrackDetail$tracks$items$mainArtists$items$user _instance;

  final TRes Function(Query$TrackDetail$tracks$items$mainArtists$items$user)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? checkUserFollowing = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackDetail$tracks$items$mainArtists$items$user(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      checkUserFollowing:
          checkUserFollowing == _undefined || checkUserFollowing == null
          ? _instance.checkUserFollowing
          : (checkUserFollowing as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items$user<
  TRes
>
    implements
        CopyWith$Query$TrackDetail$tracks$items$mainArtists$items$user<TRes> {
  _CopyWithStubImpl$Query$TrackDetail$tracks$items$mainArtists$items$user(
    this._res,
  );

  TRes _res;

  call({String? id, bool? checkUserFollowing, String? $__typename}) => _res;
}

class Variables$Query$TrackFavorite {
  factory Variables$Query$TrackFavorite({
    required int take,
    required int skip,
  }) => Variables$Query$TrackFavorite._({r'take': take, r'skip': skip});

  Variables$Query$TrackFavorite._(this._$data);

  factory Variables$Query$TrackFavorite.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$take = data['take'];
    result$data['take'] = (l$take as int);
    final l$skip = data['skip'];
    result$data['skip'] = (l$skip as int);
    return Variables$Query$TrackFavorite._(result$data);
  }

  Map<String, dynamic> _$data;

  int get take => (_$data['take'] as int);

  int get skip => (_$data['skip'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$take = take;
    result$data['take'] = l$take;
    final l$skip = skip;
    result$data['skip'] = l$skip;
    return result$data;
  }

  CopyWith$Variables$Query$TrackFavorite<Variables$Query$TrackFavorite>
  get copyWith => CopyWith$Variables$Query$TrackFavorite(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TrackFavorite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) {
      return false;
    }
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$take = take;
    final l$skip = skip;
    return Object.hashAll([l$take, l$skip]);
  }
}

abstract class CopyWith$Variables$Query$TrackFavorite<TRes> {
  factory CopyWith$Variables$Query$TrackFavorite(
    Variables$Query$TrackFavorite instance,
    TRes Function(Variables$Query$TrackFavorite) then,
  ) = _CopyWithImpl$Variables$Query$TrackFavorite;

  factory CopyWith$Variables$Query$TrackFavorite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TrackFavorite;

  TRes call({int? take, int? skip});
}

class _CopyWithImpl$Variables$Query$TrackFavorite<TRes>
    implements CopyWith$Variables$Query$TrackFavorite<TRes> {
  _CopyWithImpl$Variables$Query$TrackFavorite(this._instance, this._then);

  final Variables$Query$TrackFavorite _instance;

  final TRes Function(Variables$Query$TrackFavorite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? take = _undefined, Object? skip = _undefined}) => _then(
    Variables$Query$TrackFavorite._({
      ..._instance._$data,
      if (take != _undefined && take != null) 'take': (take as int),
      if (skip != _undefined && skip != null) 'skip': (skip as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TrackFavorite<TRes>
    implements CopyWith$Variables$Query$TrackFavorite<TRes> {
  _CopyWithStubImpl$Variables$Query$TrackFavorite(this._res);

  TRes _res;

  call({int? take, int? skip}) => _res;
}

class Query$TrackFavorite {
  Query$TrackFavorite({
    this.favoriteTracks,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$TrackFavorite.fromJson(Map<String, dynamic> json) {
    final l$favoriteTracks = json['favoriteTracks'];
    final l$$__typename = json['__typename'];
    return Query$TrackFavorite(
      favoriteTracks: l$favoriteTracks == null
          ? null
          : Query$TrackFavorite$favoriteTracks.fromJson(
              (l$favoriteTracks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TrackFavorite$favoriteTracks? favoriteTracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favoriteTracks = favoriteTracks;
    _resultData['favoriteTracks'] = l$favoriteTracks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favoriteTracks = favoriteTracks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$favoriteTracks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackFavorite || runtimeType != other.runtimeType) {
      return false;
    }
    final l$favoriteTracks = favoriteTracks;
    final lOther$favoriteTracks = other.favoriteTracks;
    if (l$favoriteTracks != lOther$favoriteTracks) {
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

extension UtilityExtension$Query$TrackFavorite on Query$TrackFavorite {
  CopyWith$Query$TrackFavorite<Query$TrackFavorite> get copyWith =>
      CopyWith$Query$TrackFavorite(this, (i) => i);
}

abstract class CopyWith$Query$TrackFavorite<TRes> {
  factory CopyWith$Query$TrackFavorite(
    Query$TrackFavorite instance,
    TRes Function(Query$TrackFavorite) then,
  ) = _CopyWithImpl$Query$TrackFavorite;

  factory CopyWith$Query$TrackFavorite.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackFavorite;

  TRes call({
    Query$TrackFavorite$favoriteTracks? favoriteTracks,
    String? $__typename,
  });
  CopyWith$Query$TrackFavorite$favoriteTracks<TRes> get favoriteTracks;
}

class _CopyWithImpl$Query$TrackFavorite<TRes>
    implements CopyWith$Query$TrackFavorite<TRes> {
  _CopyWithImpl$Query$TrackFavorite(this._instance, this._then);

  final Query$TrackFavorite _instance;

  final TRes Function(Query$TrackFavorite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favoriteTracks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackFavorite(
      favoriteTracks: favoriteTracks == _undefined
          ? _instance.favoriteTracks
          : (favoriteTracks as Query$TrackFavorite$favoriteTracks?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TrackFavorite$favoriteTracks<TRes> get favoriteTracks {
    final local$favoriteTracks = _instance.favoriteTracks;
    return local$favoriteTracks == null
        ? CopyWith$Query$TrackFavorite$favoriteTracks.stub(_then(_instance))
        : CopyWith$Query$TrackFavorite$favoriteTracks(
            local$favoriteTracks,
            (e) => call(favoriteTracks: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackFavorite<TRes>
    implements CopyWith$Query$TrackFavorite<TRes> {
  _CopyWithStubImpl$Query$TrackFavorite(this._res);

  TRes _res;

  call({
    Query$TrackFavorite$favoriteTracks? favoriteTracks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TrackFavorite$favoriteTracks<TRes> get favoriteTracks =>
      CopyWith$Query$TrackFavorite$favoriteTracks.stub(_res);
}

const documentNodeQueryTrackFavorite = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrackFavorite'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'skip')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'favoriteTracks'),
            alias: null,
            arguments: [
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
                        name: NameNode(value: 'mainArtistIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mainArtists'),
                        alias: null,
                        arguments: [],
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
                        name: NameNode(value: 'streamCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'checkTrackInFavorite'),
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
                        name: NameNode(value: 'isExplicit'),
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
Query$TrackFavorite _parserFn$Query$TrackFavorite(Map<String, dynamic> data) =>
    Query$TrackFavorite.fromJson(data);
typedef OnQueryComplete$Query$TrackFavorite =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TrackFavorite?);

class Options$Query$TrackFavorite
    extends graphql.QueryOptions<Query$TrackFavorite> {
  Options$Query$TrackFavorite({
    String? operationName,
    required Variables$Query$TrackFavorite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackFavorite? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TrackFavorite? onComplete,
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
                 data == null ? null : _parserFn$Query$TrackFavorite(data),
               ),
         onError: onError,
         document: documentNodeQueryTrackFavorite,
         parserFn: _parserFn$Query$TrackFavorite,
       );

  final OnQueryComplete$Query$TrackFavorite? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TrackFavorite
    extends graphql.WatchQueryOptions<Query$TrackFavorite> {
  WatchOptions$Query$TrackFavorite({
    String? operationName,
    required Variables$Query$TrackFavorite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackFavorite? typedOptimisticResult,
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
         document: documentNodeQueryTrackFavorite,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TrackFavorite,
       );
}

class FetchMoreOptions$Query$TrackFavorite extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TrackFavorite({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TrackFavorite variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTrackFavorite,
       );
}

extension ClientExtension$Query$TrackFavorite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TrackFavorite>> query$TrackFavorite(
    Options$Query$TrackFavorite options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TrackFavorite> watchQuery$TrackFavorite(
    WatchOptions$Query$TrackFavorite options,
  ) => this.watchQuery(options);

  void writeQuery$TrackFavorite({
    required Query$TrackFavorite data,
    required Variables$Query$TrackFavorite variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTrackFavorite),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TrackFavorite? readQuery$TrackFavorite({
    required Variables$Query$TrackFavorite variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTrackFavorite),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TrackFavorite.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TrackFavorite> useQuery$TrackFavorite(
  Options$Query$TrackFavorite options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TrackFavorite> useWatchQuery$TrackFavorite(
  WatchOptions$Query$TrackFavorite options,
) => graphql_flutter.useWatchQuery(options);

class Query$TrackFavorite$Widget
    extends graphql_flutter.Query<Query$TrackFavorite> {
  Query$TrackFavorite$Widget({
    widgets.Key? key,
    required Options$Query$TrackFavorite options,
    required graphql_flutter.QueryBuilder<Query$TrackFavorite> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TrackFavorite$favoriteTracks {
  Query$TrackFavorite$favoriteTracks({
    required this.totalCount,
    this.items,
    this.$__typename = 'FavoriteTracksCollectionSegment',
  });

  factory Query$TrackFavorite$favoriteTracks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackFavorite$favoriteTracks(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackFavorite$favoriteTracks$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$TrackFavorite$favoriteTracks$items>? items;

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
    if (other is! Query$TrackFavorite$favoriteTracks ||
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

extension UtilityExtension$Query$TrackFavorite$favoriteTracks
    on Query$TrackFavorite$favoriteTracks {
  CopyWith$Query$TrackFavorite$favoriteTracks<
    Query$TrackFavorite$favoriteTracks
  >
  get copyWith => CopyWith$Query$TrackFavorite$favoriteTracks(this, (i) => i);
}

abstract class CopyWith$Query$TrackFavorite$favoriteTracks<TRes> {
  factory CopyWith$Query$TrackFavorite$favoriteTracks(
    Query$TrackFavorite$favoriteTracks instance,
    TRes Function(Query$TrackFavorite$favoriteTracks) then,
  ) = _CopyWithImpl$Query$TrackFavorite$favoriteTracks;

  factory CopyWith$Query$TrackFavorite$favoriteTracks.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks;

  TRes call({
    int? totalCount,
    List<Query$TrackFavorite$favoriteTracks$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackFavorite$favoriteTracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackFavorite$favoriteTracks$items<
          Query$TrackFavorite$favoriteTracks$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackFavorite$favoriteTracks<TRes>
    implements CopyWith$Query$TrackFavorite$favoriteTracks<TRes> {
  _CopyWithImpl$Query$TrackFavorite$favoriteTracks(this._instance, this._then);

  final Query$TrackFavorite$favoriteTracks _instance;

  final TRes Function(Query$TrackFavorite$favoriteTracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackFavorite$favoriteTracks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$TrackFavorite$favoriteTracks$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TrackFavorite$favoriteTracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackFavorite$favoriteTracks$items<
          Query$TrackFavorite$favoriteTracks$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackFavorite$favoriteTracks$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks<TRes>
    implements CopyWith$Query$TrackFavorite$favoriteTracks<TRes> {
  _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$TrackFavorite$favoriteTracks$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackFavorite$favoriteTracks$items {
  Query$TrackFavorite$favoriteTracks$items({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.mainArtistIds,
    this.mainArtists,
    required this.streamCount,
    required this.checkTrackInFavorite,
    required this.createdAt,
    required this.isExplicit,
    this.$__typename = 'Track',
  });

  factory Query$TrackFavorite$favoriteTracks$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$mainArtistIds = json['mainArtistIds'];
    final l$mainArtists = json['mainArtists'];
    final l$streamCount = json['streamCount'];
    final l$checkTrackInFavorite = json['checkTrackInFavorite'];
    final l$createdAt = json['createdAt'];
    final l$isExplicit = json['isExplicit'];
    final l$$__typename = json['__typename'];
    return Query$TrackFavorite$favoriteTracks$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String),
      mainArtistIds: (l$mainArtistIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      mainArtists: l$mainArtists == null
          ? null
          : Query$TrackFavorite$favoriteTracks$items$mainArtists.fromJson(
              (l$mainArtists as Map<String, dynamic>),
            ),
      streamCount: (l$streamCount as int),
      checkTrackInFavorite: (l$checkTrackInFavorite as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      isExplicit: (l$isExplicit as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String coverImage;

  final List<String> mainArtistIds;

  final Query$TrackFavorite$favoriteTracks$items$mainArtists? mainArtists;

  final int streamCount;

  final bool checkTrackInFavorite;

  final DateTime createdAt;

  final bool isExplicit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$mainArtistIds = mainArtistIds;
    _resultData['mainArtistIds'] = l$mainArtistIds.map((e) => e).toList();
    final l$mainArtists = mainArtists;
    _resultData['mainArtists'] = l$mainArtists?.toJson();
    final l$streamCount = streamCount;
    _resultData['streamCount'] = l$streamCount;
    final l$checkTrackInFavorite = checkTrackInFavorite;
    _resultData['checkTrackInFavorite'] = l$checkTrackInFavorite;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$isExplicit = isExplicit;
    _resultData['isExplicit'] = l$isExplicit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$mainArtistIds = mainArtistIds;
    final l$mainArtists = mainArtists;
    final l$streamCount = streamCount;
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final l$createdAt = createdAt;
    final l$isExplicit = isExplicit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      Object.hashAll(l$mainArtistIds.map((v) => v)),
      l$mainArtists,
      l$streamCount,
      l$checkTrackInFavorite,
      l$createdAt,
      l$isExplicit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackFavorite$favoriteTracks$items ||
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
    final l$mainArtistIds = mainArtistIds;
    final lOther$mainArtistIds = other.mainArtistIds;
    if (l$mainArtistIds.length != lOther$mainArtistIds.length) {
      return false;
    }
    for (int i = 0; i < l$mainArtistIds.length; i++) {
      final l$mainArtistIds$entry = l$mainArtistIds[i];
      final lOther$mainArtistIds$entry = lOther$mainArtistIds[i];
      if (l$mainArtistIds$entry != lOther$mainArtistIds$entry) {
        return false;
      }
    }
    final l$mainArtists = mainArtists;
    final lOther$mainArtists = other.mainArtists;
    if (l$mainArtists != lOther$mainArtists) {
      return false;
    }
    final l$streamCount = streamCount;
    final lOther$streamCount = other.streamCount;
    if (l$streamCount != lOther$streamCount) {
      return false;
    }
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final lOther$checkTrackInFavorite = other.checkTrackInFavorite;
    if (l$checkTrackInFavorite != lOther$checkTrackInFavorite) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isExplicit = isExplicit;
    final lOther$isExplicit = other.isExplicit;
    if (l$isExplicit != lOther$isExplicit) {
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

extension UtilityExtension$Query$TrackFavorite$favoriteTracks$items
    on Query$TrackFavorite$favoriteTracks$items {
  CopyWith$Query$TrackFavorite$favoriteTracks$items<
    Query$TrackFavorite$favoriteTracks$items
  >
  get copyWith =>
      CopyWith$Query$TrackFavorite$favoriteTracks$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackFavorite$favoriteTracks$items<TRes> {
  factory CopyWith$Query$TrackFavorite$favoriteTracks$items(
    Query$TrackFavorite$favoriteTracks$items instance,
    TRes Function(Query$TrackFavorite$favoriteTracks$items) then,
  ) = _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items;

  factory CopyWith$Query$TrackFavorite$favoriteTracks$items.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    Query$TrackFavorite$favoriteTracks$items$mainArtists? mainArtists,
    int? streamCount,
    bool? checkTrackInFavorite,
    DateTime? createdAt,
    bool? isExplicit,
    String? $__typename,
  });
  CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes>
  get mainArtists;
}

class _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items<TRes>
    implements CopyWith$Query$TrackFavorite$favoriteTracks$items<TRes> {
  _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items(
    this._instance,
    this._then,
  );

  final Query$TrackFavorite$favoriteTracks$items _instance;

  final TRes Function(Query$TrackFavorite$favoriteTracks$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? mainArtistIds = _undefined,
    Object? mainArtists = _undefined,
    Object? streamCount = _undefined,
    Object? checkTrackInFavorite = _undefined,
    Object? createdAt = _undefined,
    Object? isExplicit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackFavorite$favoriteTracks$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined || coverImage == null
          ? _instance.coverImage
          : (coverImage as String),
      mainArtistIds: mainArtistIds == _undefined || mainArtistIds == null
          ? _instance.mainArtistIds
          : (mainArtistIds as List<String>),
      mainArtists: mainArtists == _undefined
          ? _instance.mainArtists
          : (mainArtists
                as Query$TrackFavorite$favoriteTracks$items$mainArtists?),
      streamCount: streamCount == _undefined || streamCount == null
          ? _instance.streamCount
          : (streamCount as int),
      checkTrackInFavorite:
          checkTrackInFavorite == _undefined || checkTrackInFavorite == null
          ? _instance.checkTrackInFavorite
          : (checkTrackInFavorite as bool),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      isExplicit: isExplicit == _undefined || isExplicit == null
          ? _instance.isExplicit
          : (isExplicit as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes>
  get mainArtists {
    final local$mainArtists = _instance.mainArtists;
    return local$mainArtists == null
        ? CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists.stub(
            _then(_instance),
          )
        : CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists(
            local$mainArtists,
            (e) => call(mainArtists: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items<TRes>
    implements CopyWith$Query$TrackFavorite$favoriteTracks$items<TRes> {
  _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    Query$TrackFavorite$favoriteTracks$items$mainArtists? mainArtists,
    int? streamCount,
    bool? checkTrackInFavorite,
    DateTime? createdAt,
    bool? isExplicit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes>
  get mainArtists =>
      CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists.stub(_res);
}

class Query$TrackFavorite$favoriteTracks$items$mainArtists {
  Query$TrackFavorite$favoriteTracks$items$mainArtists({
    this.items,
    this.$__typename = 'MainArtistsCollectionSegment',
  });

  factory Query$TrackFavorite$favoriteTracks$items$mainArtists.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackFavorite$favoriteTracks$items$mainArtists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) =>
                Query$TrackFavorite$favoriteTracks$items$mainArtists$items.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TrackFavorite$favoriteTracks$items$mainArtists$items>? items;

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
    if (other is! Query$TrackFavorite$favoriteTracks$items$mainArtists ||
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

extension UtilityExtension$Query$TrackFavorite$favoriteTracks$items$mainArtists
    on Query$TrackFavorite$favoriteTracks$items$mainArtists {
  CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<
    Query$TrackFavorite$favoriteTracks$items$mainArtists
  >
  get copyWith => CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<
  TRes
> {
  factory CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists(
    Query$TrackFavorite$favoriteTracks$items$mainArtists instance,
    TRes Function(Query$TrackFavorite$favoriteTracks$items$mainArtists) then,
  ) = _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists;

  factory CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists;

  TRes call({
    List<Query$TrackFavorite$favoriteTracks$items$mainArtists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackFavorite$favoriteTracks$items$mainArtists$items>?
    Function(
      Iterable<
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
          Query$TrackFavorite$favoriteTracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes>
    implements
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes> {
  _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists(
    this._instance,
    this._then,
  );

  final Query$TrackFavorite$favoriteTracks$items$mainArtists _instance;

  final TRes Function(Query$TrackFavorite$favoriteTracks$items$mainArtists)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackFavorite$favoriteTracks$items$mainArtists(
          items: items == _undefined
              ? _instance.items
              : (items
                    as List<
                      Query$TrackFavorite$favoriteTracks$items$mainArtists$items
                    >?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes items(
    Iterable<Query$TrackFavorite$favoriteTracks$items$mainArtists$items>?
    Function(
      Iterable<
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
          Query$TrackFavorite$favoriteTracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) =>
            CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists<
  TRes
>
    implements
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists<TRes> {
  _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists(
    this._res,
  );

  TRes _res;

  call({
    List<Query$TrackFavorite$favoriteTracks$items$mainArtists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackFavorite$favoriteTracks$items$mainArtists$items {
  Query$TrackFavorite$favoriteTracks$items$mainArtists$items({
    required this.id,
    required this.stageName,
    this.$__typename = 'Artist',
  });

  factory Query$TrackFavorite$favoriteTracks$items$mainArtists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$stageName = json['stageName'];
    final l$$__typename = json['__typename'];
    return Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
      id: (l$id as String),
      stageName: (l$stageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stageName = stageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$stageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackFavorite$favoriteTracks$items$mainArtists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$TrackFavorite$favoriteTracks$items$mainArtists$items
    on Query$TrackFavorite$favoriteTracks$items$mainArtists$items {
  CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
    Query$TrackFavorite$favoriteTracks$items$mainArtists$items
  >
  get copyWith =>
      CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
  TRes
> {
  factory CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
    Query$TrackFavorite$favoriteTracks$items$mainArtists$items instance,
    TRes Function(Query$TrackFavorite$favoriteTracks$items$mainArtists$items)
    then,
  ) = _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items;

  factory CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items;

  TRes call({String? id, String? stageName, String? $__typename});
}

class _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
  TRes
>
    implements
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
          TRes
        > {
  _CopyWithImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
    this._instance,
    this._then,
  );

  final Query$TrackFavorite$favoriteTracks$items$mainArtists$items _instance;

  final TRes Function(
    Query$TrackFavorite$favoriteTracks$items$mainArtists$items,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
  TRes
>
    implements
        CopyWith$Query$TrackFavorite$favoriteTracks$items$mainArtists$items<
          TRes
        > {
  _CopyWithStubImpl$Query$TrackFavorite$favoriteTracks$items$mainArtists$items(
    this._res,
  );

  TRes _res;

  call({String? id, String? stageName, String? $__typename}) => _res;
}

class Variables$Query$TrackInfinite {
  factory Variables$Query$TrackInfinite({
    required int take,
    required int skip,
    required String artistId,
  }) => Variables$Query$TrackInfinite._({
    r'take': take,
    r'skip': skip,
    r'artistId': artistId,
  });

  Variables$Query$TrackInfinite._(this._$data);

  factory Variables$Query$TrackInfinite.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$take = data['take'];
    result$data['take'] = (l$take as int);
    final l$skip = data['skip'];
    result$data['skip'] = (l$skip as int);
    final l$artistId = data['artistId'];
    result$data['artistId'] = (l$artistId as String);
    return Variables$Query$TrackInfinite._(result$data);
  }

  Map<String, dynamic> _$data;

  int get take => (_$data['take'] as int);

  int get skip => (_$data['skip'] as int);

  String get artistId => (_$data['artistId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$take = take;
    result$data['take'] = l$take;
    final l$skip = skip;
    result$data['skip'] = l$skip;
    final l$artistId = artistId;
    result$data['artistId'] = l$artistId;
    return result$data;
  }

  CopyWith$Variables$Query$TrackInfinite<Variables$Query$TrackInfinite>
  get copyWith => CopyWith$Variables$Query$TrackInfinite(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TrackInfinite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) {
      return false;
    }
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) {
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
    final l$take = take;
    final l$skip = skip;
    final l$artistId = artistId;
    return Object.hashAll([l$take, l$skip, l$artistId]);
  }
}

abstract class CopyWith$Variables$Query$TrackInfinite<TRes> {
  factory CopyWith$Variables$Query$TrackInfinite(
    Variables$Query$TrackInfinite instance,
    TRes Function(Variables$Query$TrackInfinite) then,
  ) = _CopyWithImpl$Variables$Query$TrackInfinite;

  factory CopyWith$Variables$Query$TrackInfinite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TrackInfinite;

  TRes call({int? take, int? skip, String? artistId});
}

class _CopyWithImpl$Variables$Query$TrackInfinite<TRes>
    implements CopyWith$Variables$Query$TrackInfinite<TRes> {
  _CopyWithImpl$Variables$Query$TrackInfinite(this._instance, this._then);

  final Variables$Query$TrackInfinite _instance;

  final TRes Function(Variables$Query$TrackInfinite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? take = _undefined,
    Object? skip = _undefined,
    Object? artistId = _undefined,
  }) => _then(
    Variables$Query$TrackInfinite._({
      ..._instance._$data,
      if (take != _undefined && take != null) 'take': (take as int),
      if (skip != _undefined && skip != null) 'skip': (skip as int),
      if (artistId != _undefined && artistId != null)
        'artistId': (artistId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TrackInfinite<TRes>
    implements CopyWith$Variables$Query$TrackInfinite<TRes> {
  _CopyWithStubImpl$Variables$Query$TrackInfinite(this._res);

  TRes _res;

  call({int? take, int? skip, String? artistId}) => _res;
}

class Query$TrackInfinite {
  Query$TrackInfinite({this.tracks, this.$__typename = 'QueryInitialization'});

  factory Query$TrackInfinite.fromJson(Map<String, dynamic> json) {
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite(
      tracks: l$tracks == null
          ? null
          : Query$TrackInfinite$tracks.fromJson(
              (l$tracks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TrackInfinite$tracks? tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tracks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackInfinite || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Query$TrackInfinite on Query$TrackInfinite {
  CopyWith$Query$TrackInfinite<Query$TrackInfinite> get copyWith =>
      CopyWith$Query$TrackInfinite(this, (i) => i);
}

abstract class CopyWith$Query$TrackInfinite<TRes> {
  factory CopyWith$Query$TrackInfinite(
    Query$TrackInfinite instance,
    TRes Function(Query$TrackInfinite) then,
  ) = _CopyWithImpl$Query$TrackInfinite;

  factory CopyWith$Query$TrackInfinite.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackInfinite;

  TRes call({Query$TrackInfinite$tracks? tracks, String? $__typename});
  CopyWith$Query$TrackInfinite$tracks<TRes> get tracks;
}

class _CopyWithImpl$Query$TrackInfinite<TRes>
    implements CopyWith$Query$TrackInfinite<TRes> {
  _CopyWithImpl$Query$TrackInfinite(this._instance, this._then);

  final Query$TrackInfinite _instance;

  final TRes Function(Query$TrackInfinite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tracks = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$TrackInfinite(
          tracks: tracks == _undefined
              ? _instance.tracks
              : (tracks as Query$TrackInfinite$tracks?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$TrackInfinite$tracks<TRes> get tracks {
    final local$tracks = _instance.tracks;
    return local$tracks == null
        ? CopyWith$Query$TrackInfinite$tracks.stub(_then(_instance))
        : CopyWith$Query$TrackInfinite$tracks(
            local$tracks,
            (e) => call(tracks: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackInfinite<TRes>
    implements CopyWith$Query$TrackInfinite<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite(this._res);

  TRes _res;

  call({Query$TrackInfinite$tracks? tracks, String? $__typename}) => _res;

  CopyWith$Query$TrackInfinite$tracks<TRes> get tracks =>
      CopyWith$Query$TrackInfinite$tracks.stub(_res);
}

const documentNodeQueryTrackInfinite = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TrackInfinite'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'take')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'skip')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
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
            name: NameNode(value: 'tracks'),
            alias: null,
            arguments: [
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
                      name: NameNode(value: 'streamCount'),
                      value: EnumValueNode(name: NameNode(value: 'DESC')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'createdBy'),
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
                      name: NameNode(value: 'releaseInfo'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'isRelease'),
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
                    ObjectFieldNode(
                      name: NameNode(value: 'restriction'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'type'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'eq'),
                                  value: EnumValueNode(
                                    name: NameNode(value: 'NONE'),
                                  ),
                                ),
                              ],
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
                        name: NameNode(value: 'mainArtistIds'),
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
                        name: NameNode(value: 'isExplicit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mainArtists'),
                        alias: null,
                        arguments: [],
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
                        name: NameNode(value: 'checkTrackInFavorite'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'streamCount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'favoriteCount'),
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
Query$TrackInfinite _parserFn$Query$TrackInfinite(Map<String, dynamic> data) =>
    Query$TrackInfinite.fromJson(data);
typedef OnQueryComplete$Query$TrackInfinite =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TrackInfinite?);

class Options$Query$TrackInfinite
    extends graphql.QueryOptions<Query$TrackInfinite> {
  Options$Query$TrackInfinite({
    String? operationName,
    required Variables$Query$TrackInfinite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackInfinite? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TrackInfinite? onComplete,
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
                 data == null ? null : _parserFn$Query$TrackInfinite(data),
               ),
         onError: onError,
         document: documentNodeQueryTrackInfinite,
         parserFn: _parserFn$Query$TrackInfinite,
       );

  final OnQueryComplete$Query$TrackInfinite? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TrackInfinite
    extends graphql.WatchQueryOptions<Query$TrackInfinite> {
  WatchOptions$Query$TrackInfinite({
    String? operationName,
    required Variables$Query$TrackInfinite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TrackInfinite? typedOptimisticResult,
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
         document: documentNodeQueryTrackInfinite,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TrackInfinite,
       );
}

class FetchMoreOptions$Query$TrackInfinite extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TrackInfinite({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TrackInfinite variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTrackInfinite,
       );
}

extension ClientExtension$Query$TrackInfinite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TrackInfinite>> query$TrackInfinite(
    Options$Query$TrackInfinite options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TrackInfinite> watchQuery$TrackInfinite(
    WatchOptions$Query$TrackInfinite options,
  ) => this.watchQuery(options);

  void writeQuery$TrackInfinite({
    required Query$TrackInfinite data,
    required Variables$Query$TrackInfinite variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTrackInfinite),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TrackInfinite? readQuery$TrackInfinite({
    required Variables$Query$TrackInfinite variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTrackInfinite),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TrackInfinite.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TrackInfinite> useQuery$TrackInfinite(
  Options$Query$TrackInfinite options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TrackInfinite> useWatchQuery$TrackInfinite(
  WatchOptions$Query$TrackInfinite options,
) => graphql_flutter.useWatchQuery(options);

class Query$TrackInfinite$Widget
    extends graphql_flutter.Query<Query$TrackInfinite> {
  Query$TrackInfinite$Widget({
    widgets.Key? key,
    required Options$Query$TrackInfinite options,
    required graphql_flutter.QueryBuilder<Query$TrackInfinite> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TrackInfinite$tracks {
  Query$TrackInfinite$tracks({
    required this.totalCount,
    this.items,
    required this.pageInfo,
    this.$__typename = 'TracksCollectionSegment',
  });

  factory Query$TrackInfinite$tracks.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$items = json['items'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite$tracks(
      totalCount: (l$totalCount as int),
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackInfinite$tracks$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pageInfo: Query$TrackInfinite$tracks$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$TrackInfinite$tracks$items>? items;

  final Query$TrackInfinite$tracks$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$items = items;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackInfinite$tracks ||
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

extension UtilityExtension$Query$TrackInfinite$tracks
    on Query$TrackInfinite$tracks {
  CopyWith$Query$TrackInfinite$tracks<Query$TrackInfinite$tracks>
  get copyWith => CopyWith$Query$TrackInfinite$tracks(this, (i) => i);
}

abstract class CopyWith$Query$TrackInfinite$tracks<TRes> {
  factory CopyWith$Query$TrackInfinite$tracks(
    Query$TrackInfinite$tracks instance,
    TRes Function(Query$TrackInfinite$tracks) then,
  ) = _CopyWithImpl$Query$TrackInfinite$tracks;

  factory CopyWith$Query$TrackInfinite$tracks.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackInfinite$tracks;

  TRes call({
    int? totalCount,
    List<Query$TrackInfinite$tracks$items>? items,
    Query$TrackInfinite$tracks$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackInfinite$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackInfinite$tracks$items<
          Query$TrackInfinite$tracks$items
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$TrackInfinite$tracks<TRes>
    implements CopyWith$Query$TrackInfinite$tracks<TRes> {
  _CopyWithImpl$Query$TrackInfinite$tracks(this._instance, this._then);

  final Query$TrackInfinite$tracks _instance;

  final TRes Function(Query$TrackInfinite$tracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? items = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackInfinite$tracks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$TrackInfinite$tracks$items>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$TrackInfinite$tracks$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TrackInfinite$tracks$items>? Function(
      Iterable<
        CopyWith$Query$TrackInfinite$tracks$items<
          Query$TrackInfinite$tracks$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackInfinite$tracks$items(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TrackInfinite$tracks$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$TrackInfinite$tracks<TRes>
    implements CopyWith$Query$TrackInfinite$tracks<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite$tracks(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$TrackInfinite$tracks$items>? items,
    Query$TrackInfinite$tracks$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;

  CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$TrackInfinite$tracks$pageInfo.stub(_res);
}

class Query$TrackInfinite$tracks$items {
  Query$TrackInfinite$tracks$items({
    required this.id,
    required this.name,
    required this.coverImage,
    required this.mainArtistIds,
    required this.createdAt,
    required this.isExplicit,
    this.mainArtists,
    required this.checkTrackInFavorite,
    required this.streamCount,
    required this.favoriteCount,
    this.$__typename = 'Track',
  });

  factory Query$TrackInfinite$tracks$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$coverImage = json['coverImage'];
    final l$mainArtistIds = json['mainArtistIds'];
    final l$createdAt = json['createdAt'];
    final l$isExplicit = json['isExplicit'];
    final l$mainArtists = json['mainArtists'];
    final l$checkTrackInFavorite = json['checkTrackInFavorite'];
    final l$streamCount = json['streamCount'];
    final l$favoriteCount = json['favoriteCount'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite$tracks$items(
      id: (l$id as String),
      name: (l$name as String),
      coverImage: (l$coverImage as String),
      mainArtistIds: (l$mainArtistIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
      isExplicit: (l$isExplicit as bool),
      mainArtists: l$mainArtists == null
          ? null
          : Query$TrackInfinite$tracks$items$mainArtists.fromJson(
              (l$mainArtists as Map<String, dynamic>),
            ),
      checkTrackInFavorite: (l$checkTrackInFavorite as bool),
      streamCount: (l$streamCount as int),
      favoriteCount: (l$favoriteCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String coverImage;

  final List<String> mainArtistIds;

  final DateTime createdAt;

  final bool isExplicit;

  final Query$TrackInfinite$tracks$items$mainArtists? mainArtists;

  final bool checkTrackInFavorite;

  final int streamCount;

  final int favoriteCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage;
    final l$mainArtistIds = mainArtistIds;
    _resultData['mainArtistIds'] = l$mainArtistIds.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$isExplicit = isExplicit;
    _resultData['isExplicit'] = l$isExplicit;
    final l$mainArtists = mainArtists;
    _resultData['mainArtists'] = l$mainArtists?.toJson();
    final l$checkTrackInFavorite = checkTrackInFavorite;
    _resultData['checkTrackInFavorite'] = l$checkTrackInFavorite;
    final l$streamCount = streamCount;
    _resultData['streamCount'] = l$streamCount;
    final l$favoriteCount = favoriteCount;
    _resultData['favoriteCount'] = l$favoriteCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$coverImage = coverImage;
    final l$mainArtistIds = mainArtistIds;
    final l$createdAt = createdAt;
    final l$isExplicit = isExplicit;
    final l$mainArtists = mainArtists;
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final l$streamCount = streamCount;
    final l$favoriteCount = favoriteCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$coverImage,
      Object.hashAll(l$mainArtistIds.map((v) => v)),
      l$createdAt,
      l$isExplicit,
      l$mainArtists,
      l$checkTrackInFavorite,
      l$streamCount,
      l$favoriteCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackInfinite$tracks$items ||
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
    final l$mainArtistIds = mainArtistIds;
    final lOther$mainArtistIds = other.mainArtistIds;
    if (l$mainArtistIds.length != lOther$mainArtistIds.length) {
      return false;
    }
    for (int i = 0; i < l$mainArtistIds.length; i++) {
      final l$mainArtistIds$entry = l$mainArtistIds[i];
      final lOther$mainArtistIds$entry = lOther$mainArtistIds[i];
      if (l$mainArtistIds$entry != lOther$mainArtistIds$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isExplicit = isExplicit;
    final lOther$isExplicit = other.isExplicit;
    if (l$isExplicit != lOther$isExplicit) {
      return false;
    }
    final l$mainArtists = mainArtists;
    final lOther$mainArtists = other.mainArtists;
    if (l$mainArtists != lOther$mainArtists) {
      return false;
    }
    final l$checkTrackInFavorite = checkTrackInFavorite;
    final lOther$checkTrackInFavorite = other.checkTrackInFavorite;
    if (l$checkTrackInFavorite != lOther$checkTrackInFavorite) {
      return false;
    }
    final l$streamCount = streamCount;
    final lOther$streamCount = other.streamCount;
    if (l$streamCount != lOther$streamCount) {
      return false;
    }
    final l$favoriteCount = favoriteCount;
    final lOther$favoriteCount = other.favoriteCount;
    if (l$favoriteCount != lOther$favoriteCount) {
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

extension UtilityExtension$Query$TrackInfinite$tracks$items
    on Query$TrackInfinite$tracks$items {
  CopyWith$Query$TrackInfinite$tracks$items<Query$TrackInfinite$tracks$items>
  get copyWith => CopyWith$Query$TrackInfinite$tracks$items(this, (i) => i);
}

abstract class CopyWith$Query$TrackInfinite$tracks$items<TRes> {
  factory CopyWith$Query$TrackInfinite$tracks$items(
    Query$TrackInfinite$tracks$items instance,
    TRes Function(Query$TrackInfinite$tracks$items) then,
  ) = _CopyWithImpl$Query$TrackInfinite$tracks$items;

  factory CopyWith$Query$TrackInfinite$tracks$items.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackInfinite$tracks$items;

  TRes call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    DateTime? createdAt,
    bool? isExplicit,
    Query$TrackInfinite$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    int? streamCount,
    int? favoriteCount,
    String? $__typename,
  });
  CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> get mainArtists;
}

class _CopyWithImpl$Query$TrackInfinite$tracks$items<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$items<TRes> {
  _CopyWithImpl$Query$TrackInfinite$tracks$items(this._instance, this._then);

  final Query$TrackInfinite$tracks$items _instance;

  final TRes Function(Query$TrackInfinite$tracks$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? coverImage = _undefined,
    Object? mainArtistIds = _undefined,
    Object? createdAt = _undefined,
    Object? isExplicit = _undefined,
    Object? mainArtists = _undefined,
    Object? checkTrackInFavorite = _undefined,
    Object? streamCount = _undefined,
    Object? favoriteCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackInfinite$tracks$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      coverImage: coverImage == _undefined || coverImage == null
          ? _instance.coverImage
          : (coverImage as String),
      mainArtistIds: mainArtistIds == _undefined || mainArtistIds == null
          ? _instance.mainArtistIds
          : (mainArtistIds as List<String>),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      isExplicit: isExplicit == _undefined || isExplicit == null
          ? _instance.isExplicit
          : (isExplicit as bool),
      mainArtists: mainArtists == _undefined
          ? _instance.mainArtists
          : (mainArtists as Query$TrackInfinite$tracks$items$mainArtists?),
      checkTrackInFavorite:
          checkTrackInFavorite == _undefined || checkTrackInFavorite == null
          ? _instance.checkTrackInFavorite
          : (checkTrackInFavorite as bool),
      streamCount: streamCount == _undefined || streamCount == null
          ? _instance.streamCount
          : (streamCount as int),
      favoriteCount: favoriteCount == _undefined || favoriteCount == null
          ? _instance.favoriteCount
          : (favoriteCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> get mainArtists {
    final local$mainArtists = _instance.mainArtists;
    return local$mainArtists == null
        ? CopyWith$Query$TrackInfinite$tracks$items$mainArtists.stub(
            _then(_instance),
          )
        : CopyWith$Query$TrackInfinite$tracks$items$mainArtists(
            local$mainArtists,
            (e) => call(mainArtists: e),
          );
  }
}

class _CopyWithStubImpl$Query$TrackInfinite$tracks$items<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$items<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite$tracks$items(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? coverImage,
    List<String>? mainArtistIds,
    DateTime? createdAt,
    bool? isExplicit,
    Query$TrackInfinite$tracks$items$mainArtists? mainArtists,
    bool? checkTrackInFavorite,
    int? streamCount,
    int? favoriteCount,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> get mainArtists =>
      CopyWith$Query$TrackInfinite$tracks$items$mainArtists.stub(_res);
}

class Query$TrackInfinite$tracks$items$mainArtists {
  Query$TrackInfinite$tracks$items$mainArtists({
    this.items,
    this.$__typename = 'MainArtistsCollectionSegment',
  });

  factory Query$TrackInfinite$tracks$items$mainArtists.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite$tracks$items$mainArtists(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$TrackInfinite$tracks$items$mainArtists$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TrackInfinite$tracks$items$mainArtists$items>? items;

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
    if (other is! Query$TrackInfinite$tracks$items$mainArtists ||
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

extension UtilityExtension$Query$TrackInfinite$tracks$items$mainArtists
    on Query$TrackInfinite$tracks$items$mainArtists {
  CopyWith$Query$TrackInfinite$tracks$items$mainArtists<
    Query$TrackInfinite$tracks$items$mainArtists
  >
  get copyWith =>
      CopyWith$Query$TrackInfinite$tracks$items$mainArtists(this, (i) => i);
}

abstract class CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> {
  factory CopyWith$Query$TrackInfinite$tracks$items$mainArtists(
    Query$TrackInfinite$tracks$items$mainArtists instance,
    TRes Function(Query$TrackInfinite$tracks$items$mainArtists) then,
  ) = _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists;

  factory CopyWith$Query$TrackInfinite$tracks$items$mainArtists.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists;

  TRes call({
    List<Query$TrackInfinite$tracks$items$mainArtists$items>? items,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$TrackInfinite$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<
          Query$TrackInfinite$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> {
  _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists(
    this._instance,
    this._then,
  );

  final Query$TrackInfinite$tracks$items$mainArtists _instance;

  final TRes Function(Query$TrackInfinite$tracks$items$mainArtists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackInfinite$tracks$items$mainArtists(
      items: items == _undefined
          ? _instance.items
          : (items
                as List<Query$TrackInfinite$tracks$items$mainArtists$items>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$TrackInfinite$tracks$items$mainArtists$items>? Function(
      Iterable<
        CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<
          Query$TrackInfinite$tracks$items$mainArtists$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$items$mainArtists<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists(this._res);

  TRes _res;

  call({
    List<Query$TrackInfinite$tracks$items$mainArtists$items>? items,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$TrackInfinite$tracks$items$mainArtists$items {
  Query$TrackInfinite$tracks$items$mainArtists$items({
    required this.id,
    required this.stageName,
    this.$__typename = 'Artist',
  });

  factory Query$TrackInfinite$tracks$items$mainArtists$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$stageName = json['stageName'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite$tracks$items$mainArtists$items(
      id: (l$id as String),
      stageName: (l$stageName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stageName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stageName = stageName;
    _resultData['stageName'] = l$stageName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stageName = stageName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$stageName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TrackInfinite$tracks$items$mainArtists$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$TrackInfinite$tracks$items$mainArtists$items
    on Query$TrackInfinite$tracks$items$mainArtists$items {
  CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<
    Query$TrackInfinite$tracks$items$mainArtists$items
  >
  get copyWith => CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<
  TRes
> {
  factory CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items(
    Query$TrackInfinite$tracks$items$mainArtists$items instance,
    TRes Function(Query$TrackInfinite$tracks$items$mainArtists$items) then,
  ) = _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists$items;

  factory CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists$items;

  TRes call({String? id, String? stageName, String? $__typename});
}

class _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists$items<TRes>
    implements
        CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<TRes> {
  _CopyWithImpl$Query$TrackInfinite$tracks$items$mainArtists$items(
    this._instance,
    this._then,
  );

  final Query$TrackInfinite$tracks$items$mainArtists$items _instance;

  final TRes Function(Query$TrackInfinite$tracks$items$mainArtists$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stageName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackInfinite$tracks$items$mainArtists$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      stageName: stageName == _undefined || stageName == null
          ? _instance.stageName
          : (stageName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists$items<TRes>
    implements
        CopyWith$Query$TrackInfinite$tracks$items$mainArtists$items<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite$tracks$items$mainArtists$items(
    this._res,
  );

  TRes _res;

  call({String? id, String? stageName, String? $__typename}) => _res;
}

class Query$TrackInfinite$tracks$pageInfo {
  Query$TrackInfinite$tracks$pageInfo({
    required this.hasNextPage,
    this.$__typename = 'CollectionSegmentInfo',
  });

  factory Query$TrackInfinite$tracks$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$TrackInfinite$tracks$pageInfo(
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
    if (other is! Query$TrackInfinite$tracks$pageInfo ||
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

extension UtilityExtension$Query$TrackInfinite$tracks$pageInfo
    on Query$TrackInfinite$tracks$pageInfo {
  CopyWith$Query$TrackInfinite$tracks$pageInfo<
    Query$TrackInfinite$tracks$pageInfo
  >
  get copyWith => CopyWith$Query$TrackInfinite$tracks$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> {
  factory CopyWith$Query$TrackInfinite$tracks$pageInfo(
    Query$TrackInfinite$tracks$pageInfo instance,
    TRes Function(Query$TrackInfinite$tracks$pageInfo) then,
  ) = _CopyWithImpl$Query$TrackInfinite$tracks$pageInfo;

  factory CopyWith$Query$TrackInfinite$tracks$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$TrackInfinite$tracks$pageInfo;

  TRes call({bool? hasNextPage, String? $__typename});
}

class _CopyWithImpl$Query$TrackInfinite$tracks$pageInfo<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> {
  _CopyWithImpl$Query$TrackInfinite$tracks$pageInfo(this._instance, this._then);

  final Query$TrackInfinite$tracks$pageInfo _instance;

  final TRes Function(Query$TrackInfinite$tracks$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TrackInfinite$tracks$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TrackInfinite$tracks$pageInfo<TRes>
    implements CopyWith$Query$TrackInfinite$tracks$pageInfo<TRes> {
  _CopyWithStubImpl$Query$TrackInfinite$tracks$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? $__typename}) => _res;
}
