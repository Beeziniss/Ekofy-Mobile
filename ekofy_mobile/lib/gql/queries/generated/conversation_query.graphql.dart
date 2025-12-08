import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Conversations {
  factory Variables$Query$Conversations({
    Input$ConversationFilterInput? where,
  }) => Variables$Query$Conversations._({if (where != null) r'where': where});

  Variables$Query$Conversations._(this._$data);

  factory Variables$Query$Conversations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$ConversationFilterInput.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Variables$Query$Conversations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ConversationFilterInput? get where =>
      (_$data['where'] as Input$ConversationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Conversations<Variables$Query$Conversations>
  get copyWith => CopyWith$Variables$Query$Conversations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Conversations ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Conversations<TRes> {
  factory CopyWith$Variables$Query$Conversations(
    Variables$Query$Conversations instance,
    TRes Function(Variables$Query$Conversations) then,
  ) = _CopyWithImpl$Variables$Query$Conversations;

  factory CopyWith$Variables$Query$Conversations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Conversations;

  TRes call({Input$ConversationFilterInput? where});
}

class _CopyWithImpl$Variables$Query$Conversations<TRes>
    implements CopyWith$Variables$Query$Conversations<TRes> {
  _CopyWithImpl$Variables$Query$Conversations(this._instance, this._then);

  final Variables$Query$Conversations _instance;

  final TRes Function(Variables$Query$Conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(
    Variables$Query$Conversations._({
      ..._instance._$data,
      if (where != _undefined)
        'where': (where as Input$ConversationFilterInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Conversations<TRes>
    implements CopyWith$Variables$Query$Conversations<TRes> {
  _CopyWithStubImpl$Variables$Query$Conversations(this._res);

  TRes _res;

  call({Input$ConversationFilterInput? where}) => _res;
}

class Query$Conversations {
  Query$Conversations({
    this.conversations,
    this.$__typename = 'QueryInitialization',
  });

  factory Query$Conversations.fromJson(Map<String, dynamic> json) {
    final l$conversations = json['conversations'];
    final l$$__typename = json['__typename'];
    return Query$Conversations(
      conversations: l$conversations == null
          ? null
          : Query$Conversations$conversations.fromJson(
              (l$conversations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Conversations$conversations? conversations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conversations = conversations;
    _resultData['conversations'] = l$conversations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conversations = conversations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$conversations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations || runtimeType != other.runtimeType) {
      return false;
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations != lOther$conversations) {
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

extension UtilityExtension$Query$Conversations on Query$Conversations {
  CopyWith$Query$Conversations<Query$Conversations> get copyWith =>
      CopyWith$Query$Conversations(this, (i) => i);
}

abstract class CopyWith$Query$Conversations<TRes> {
  factory CopyWith$Query$Conversations(
    Query$Conversations instance,
    TRes Function(Query$Conversations) then,
  ) = _CopyWithImpl$Query$Conversations;

  factory CopyWith$Query$Conversations.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations;

  TRes call({
    Query$Conversations$conversations? conversations,
    String? $__typename,
  });
  CopyWith$Query$Conversations$conversations<TRes> get conversations;
}

class _CopyWithImpl$Query$Conversations<TRes>
    implements CopyWith$Query$Conversations<TRes> {
  _CopyWithImpl$Query$Conversations(this._instance, this._then);

  final Query$Conversations _instance;

  final TRes Function(Query$Conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conversations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations(
      conversations: conversations == _undefined
          ? _instance.conversations
          : (conversations as Query$Conversations$conversations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Conversations$conversations<TRes> get conversations {
    final local$conversations = _instance.conversations;
    return local$conversations == null
        ? CopyWith$Query$Conversations$conversations.stub(_then(_instance))
        : CopyWith$Query$Conversations$conversations(
            local$conversations,
            (e) => call(conversations: e),
          );
  }
}

class _CopyWithStubImpl$Query$Conversations<TRes>
    implements CopyWith$Query$Conversations<TRes> {
  _CopyWithStubImpl$Query$Conversations(this._res);

  TRes _res;

  call({
    Query$Conversations$conversations? conversations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Conversations$conversations<TRes> get conversations =>
      CopyWith$Query$Conversations$conversations.stub(_res);
}

const documentNodeQueryConversations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Conversations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'ConversationFilterInput'),
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
            name: NameNode(value: 'conversations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'where')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'lastMessage'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'sentAt'),
                            value: EnumValueNode(name: NameNode(value: 'DESC')),
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
                        name: NameNode(value: 'userIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'requestId'),
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
                        name: NameNode(value: 'ownerProfileConversation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'avatar'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'nickname'),
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
                        name: NameNode(value: 'otherProfileConversation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'avatar'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'nickname'),
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
                        name: NameNode(value: 'lastMessage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'text'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'senderId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sentAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'isReadBy'),
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
Query$Conversations _parserFn$Query$Conversations(Map<String, dynamic> data) =>
    Query$Conversations.fromJson(data);
typedef OnQueryComplete$Query$Conversations =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Conversations?);

class Options$Query$Conversations
    extends graphql.QueryOptions<Query$Conversations> {
  Options$Query$Conversations({
    String? operationName,
    Variables$Query$Conversations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Conversations? onComplete,
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
                 data == null ? null : _parserFn$Query$Conversations(data),
               ),
         onError: onError,
         document: documentNodeQueryConversations,
         parserFn: _parserFn$Query$Conversations,
       );

  final OnQueryComplete$Query$Conversations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Conversations
    extends graphql.WatchQueryOptions<Query$Conversations> {
  WatchOptions$Query$Conversations({
    String? operationName,
    Variables$Query$Conversations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Conversations? typedOptimisticResult,
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
         document: documentNodeQueryConversations,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Conversations,
       );
}

class FetchMoreOptions$Query$Conversations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Conversations({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Conversations? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryConversations,
       );
}

extension ClientExtension$Query$Conversations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Conversations>> query$Conversations([
    Options$Query$Conversations? options,
  ]) async => await this.query(options ?? Options$Query$Conversations());

  graphql.ObservableQuery<Query$Conversations> watchQuery$Conversations([
    WatchOptions$Query$Conversations? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$Conversations());

  void writeQuery$Conversations({
    required Query$Conversations data,
    Variables$Query$Conversations? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryConversations),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$Conversations? readQuery$Conversations({
    Variables$Query$Conversations? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryConversations),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Conversations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Conversations> useQuery$Conversations([
  Options$Query$Conversations? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$Conversations());
graphql.ObservableQuery<Query$Conversations> useWatchQuery$Conversations([
  WatchOptions$Query$Conversations? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$Conversations(),
);

class Query$Conversations$Widget
    extends graphql_flutter.Query<Query$Conversations> {
  Query$Conversations$Widget({
    widgets.Key? key,
    Options$Query$Conversations? options,
    required graphql_flutter.QueryBuilder<Query$Conversations> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$Conversations(),
         builder: builder,
       );
}

class Query$Conversations$conversations {
  Query$Conversations$conversations({
    this.items,
    required this.totalCount,
    this.$__typename = 'ConversationsCollectionSegment',
  });

  factory Query$Conversations$conversations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Query$Conversations$conversations$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Conversations$conversations$items>? items;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations$conversations ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Conversations$conversations
    on Query$Conversations$conversations {
  CopyWith$Query$Conversations$conversations<Query$Conversations$conversations>
  get copyWith => CopyWith$Query$Conversations$conversations(this, (i) => i);
}

abstract class CopyWith$Query$Conversations$conversations<TRes> {
  factory CopyWith$Query$Conversations$conversations(
    Query$Conversations$conversations instance,
    TRes Function(Query$Conversations$conversations) then,
  ) = _CopyWithImpl$Query$Conversations$conversations;

  factory CopyWith$Query$Conversations$conversations.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations;

  TRes call({
    List<Query$Conversations$conversations$items>? items,
    int? totalCount,
    String? $__typename,
  });
  TRes items(
    Iterable<Query$Conversations$conversations$items>? Function(
      Iterable<
        CopyWith$Query$Conversations$conversations$items<
          Query$Conversations$conversations$items
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Conversations$conversations<TRes>
    implements CopyWith$Query$Conversations$conversations<TRes> {
  _CopyWithImpl$Query$Conversations$conversations(this._instance, this._then);

  final Query$Conversations$conversations _instance;

  final TRes Function(Query$Conversations$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations$conversations(
      items: items == _undefined
          ? _instance.items
          : (items as List<Query$Conversations$conversations$items>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Query$Conversations$conversations$items>? Function(
      Iterable<
        CopyWith$Query$Conversations$conversations$items<
          Query$Conversations$conversations$items
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Query$Conversations$conversations$items(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$Conversations$conversations<TRes>
    implements CopyWith$Query$Conversations$conversations<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations(this._res);

  TRes _res;

  call({
    List<Query$Conversations$conversations$items>? items,
    int? totalCount,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$Conversations$conversations$items {
  Query$Conversations$conversations$items({
    required this.id,
    required this.userIds,
    this.requestId,
    required this.status,
    required this.ownerProfileConversation,
    required this.otherProfileConversation,
    this.lastMessage,
    this.$__typename = 'Conversation',
  });

  factory Query$Conversations$conversations$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$userIds = json['userIds'];
    final l$requestId = json['requestId'];
    final l$status = json['status'];
    final l$ownerProfileConversation = json['ownerProfileConversation'];
    final l$otherProfileConversation = json['otherProfileConversation'];
    final l$lastMessage = json['lastMessage'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$items(
      id: (l$id as String),
      userIds: (l$userIds as List<dynamic>).map((e) => (e as String)).toList(),
      requestId: (l$requestId as String?),
      status: fromJson$Enum$ConversationStatus((l$status as String)),
      ownerProfileConversation:
          Query$Conversations$conversations$items$ownerProfileConversation.fromJson(
            (l$ownerProfileConversation as Map<String, dynamic>),
          ),
      otherProfileConversation:
          Query$Conversations$conversations$items$otherProfileConversation.fromJson(
            (l$otherProfileConversation as Map<String, dynamic>),
          ),
      lastMessage: l$lastMessage == null
          ? null
          : Query$Conversations$conversations$items$lastMessage.fromJson(
              (l$lastMessage as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<String> userIds;

  final String? requestId;

  final Enum$ConversationStatus status;

  final Query$Conversations$conversations$items$ownerProfileConversation
  ownerProfileConversation;

  final Query$Conversations$conversations$items$otherProfileConversation
  otherProfileConversation;

  final Query$Conversations$conversations$items$lastMessage? lastMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userIds = userIds;
    _resultData['userIds'] = l$userIds.map((e) => e).toList();
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ConversationStatus(l$status);
    final l$ownerProfileConversation = ownerProfileConversation;
    _resultData['ownerProfileConversation'] = l$ownerProfileConversation
        .toJson();
    final l$otherProfileConversation = otherProfileConversation;
    _resultData['otherProfileConversation'] = l$otherProfileConversation
        .toJson();
    final l$lastMessage = lastMessage;
    _resultData['lastMessage'] = l$lastMessage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userIds = userIds;
    final l$requestId = requestId;
    final l$status = status;
    final l$ownerProfileConversation = ownerProfileConversation;
    final l$otherProfileConversation = otherProfileConversation;
    final l$lastMessage = lastMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$userIds.map((v) => v)),
      l$requestId,
      l$status,
      l$ownerProfileConversation,
      l$otherProfileConversation,
      l$lastMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations$conversations$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds.length != lOther$userIds.length) {
      return false;
    }
    for (int i = 0; i < l$userIds.length; i++) {
      final l$userIds$entry = l$userIds[i];
      final lOther$userIds$entry = lOther$userIds[i];
      if (l$userIds$entry != lOther$userIds$entry) {
        return false;
      }
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$ownerProfileConversation = ownerProfileConversation;
    final lOther$ownerProfileConversation = other.ownerProfileConversation;
    if (l$ownerProfileConversation != lOther$ownerProfileConversation) {
      return false;
    }
    final l$otherProfileConversation = otherProfileConversation;
    final lOther$otherProfileConversation = other.otherProfileConversation;
    if (l$otherProfileConversation != lOther$otherProfileConversation) {
      return false;
    }
    final l$lastMessage = lastMessage;
    final lOther$lastMessage = other.lastMessage;
    if (l$lastMessage != lOther$lastMessage) {
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

extension UtilityExtension$Query$Conversations$conversations$items
    on Query$Conversations$conversations$items {
  CopyWith$Query$Conversations$conversations$items<
    Query$Conversations$conversations$items
  >
  get copyWith =>
      CopyWith$Query$Conversations$conversations$items(this, (i) => i);
}

abstract class CopyWith$Query$Conversations$conversations$items<TRes> {
  factory CopyWith$Query$Conversations$conversations$items(
    Query$Conversations$conversations$items instance,
    TRes Function(Query$Conversations$conversations$items) then,
  ) = _CopyWithImpl$Query$Conversations$conversations$items;

  factory CopyWith$Query$Conversations$conversations$items.stub(TRes res) =
      _CopyWithStubImpl$Query$Conversations$conversations$items;

  TRes call({
    String? id,
    List<String>? userIds,
    String? requestId,
    Enum$ConversationStatus? status,
    Query$Conversations$conversations$items$ownerProfileConversation?
    ownerProfileConversation,
    Query$Conversations$conversations$items$otherProfileConversation?
    otherProfileConversation,
    Query$Conversations$conversations$items$lastMessage? lastMessage,
    String? $__typename,
  });
  CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
    TRes
  >
  get ownerProfileConversation;
  CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
    TRes
  >
  get otherProfileConversation;
  CopyWith$Query$Conversations$conversations$items$lastMessage<TRes>
  get lastMessage;
}

class _CopyWithImpl$Query$Conversations$conversations$items<TRes>
    implements CopyWith$Query$Conversations$conversations$items<TRes> {
  _CopyWithImpl$Query$Conversations$conversations$items(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$items _instance;

  final TRes Function(Query$Conversations$conversations$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userIds = _undefined,
    Object? requestId = _undefined,
    Object? status = _undefined,
    Object? ownerProfileConversation = _undefined,
    Object? otherProfileConversation = _undefined,
    Object? lastMessage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations$conversations$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      userIds: userIds == _undefined || userIds == null
          ? _instance.userIds
          : (userIds as List<String>),
      requestId: requestId == _undefined
          ? _instance.requestId
          : (requestId as String?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$ConversationStatus),
      ownerProfileConversation:
          ownerProfileConversation == _undefined ||
              ownerProfileConversation == null
          ? _instance.ownerProfileConversation
          : (ownerProfileConversation
                as Query$Conversations$conversations$items$ownerProfileConversation),
      otherProfileConversation:
          otherProfileConversation == _undefined ||
              otherProfileConversation == null
          ? _instance.otherProfileConversation
          : (otherProfileConversation
                as Query$Conversations$conversations$items$otherProfileConversation),
      lastMessage: lastMessage == _undefined
          ? _instance.lastMessage
          : (lastMessage
                as Query$Conversations$conversations$items$lastMessage?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
    TRes
  >
  get ownerProfileConversation {
    final local$ownerProfileConversation = _instance.ownerProfileConversation;
    return CopyWith$Query$Conversations$conversations$items$ownerProfileConversation(
      local$ownerProfileConversation,
      (e) => call(ownerProfileConversation: e),
    );
  }

  CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
    TRes
  >
  get otherProfileConversation {
    final local$otherProfileConversation = _instance.otherProfileConversation;
    return CopyWith$Query$Conversations$conversations$items$otherProfileConversation(
      local$otherProfileConversation,
      (e) => call(otherProfileConversation: e),
    );
  }

  CopyWith$Query$Conversations$conversations$items$lastMessage<TRes>
  get lastMessage {
    final local$lastMessage = _instance.lastMessage;
    return local$lastMessage == null
        ? CopyWith$Query$Conversations$conversations$items$lastMessage.stub(
            _then(_instance),
          )
        : CopyWith$Query$Conversations$conversations$items$lastMessage(
            local$lastMessage,
            (e) => call(lastMessage: e),
          );
  }
}

class _CopyWithStubImpl$Query$Conversations$conversations$items<TRes>
    implements CopyWith$Query$Conversations$conversations$items<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations$items(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? userIds,
    String? requestId,
    Enum$ConversationStatus? status,
    Query$Conversations$conversations$items$ownerProfileConversation?
    ownerProfileConversation,
    Query$Conversations$conversations$items$otherProfileConversation?
    otherProfileConversation,
    Query$Conversations$conversations$items$lastMessage? lastMessage,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
    TRes
  >
  get ownerProfileConversation =>
      CopyWith$Query$Conversations$conversations$items$ownerProfileConversation.stub(
        _res,
      );

  CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
    TRes
  >
  get otherProfileConversation =>
      CopyWith$Query$Conversations$conversations$items$otherProfileConversation.stub(
        _res,
      );

  CopyWith$Query$Conversations$conversations$items$lastMessage<TRes>
  get lastMessage =>
      CopyWith$Query$Conversations$conversations$items$lastMessage.stub(_res);
}

class Query$Conversations$conversations$items$ownerProfileConversation {
  Query$Conversations$conversations$items$ownerProfileConversation({
    required this.avatar,
    required this.nickname,
    this.artistId,
    this.$__typename = 'ConversationResponse',
  });

  factory Query$Conversations$conversations$items$ownerProfileConversation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$avatar = json['avatar'];
    final l$nickname = json['nickname'];
    final l$artistId = json['artistId'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$items$ownerProfileConversation(
      avatar: (l$avatar as String),
      nickname: (l$nickname as String),
      artistId: (l$artistId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String avatar;

  final String nickname;

  final String? artistId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$artistId = artistId;
    _resultData['artistId'] = l$artistId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$nickname = nickname;
    final l$artistId = artistId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$avatar, l$nickname, l$artistId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Conversations$conversations$items$ownerProfileConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
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

extension UtilityExtension$Query$Conversations$conversations$items$ownerProfileConversation
    on Query$Conversations$conversations$items$ownerProfileConversation {
  CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
    Query$Conversations$conversations$items$ownerProfileConversation
  >
  get copyWith =>
      CopyWith$Query$Conversations$conversations$items$ownerProfileConversation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
  TRes
> {
  factory CopyWith$Query$Conversations$conversations$items$ownerProfileConversation(
    Query$Conversations$conversations$items$ownerProfileConversation instance,
    TRes Function(
      Query$Conversations$conversations$items$ownerProfileConversation,
    )
    then,
  ) = _CopyWithImpl$Query$Conversations$conversations$items$ownerProfileConversation;

  factory CopyWith$Query$Conversations$conversations$items$ownerProfileConversation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Conversations$conversations$items$ownerProfileConversation;

  TRes call({
    String? avatar,
    String? nickname,
    String? artistId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversations$conversations$items$ownerProfileConversation<
  TRes
>
    implements
        CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
          TRes
        > {
  _CopyWithImpl$Query$Conversations$conversations$items$ownerProfileConversation(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$items$ownerProfileConversation
  _instance;

  final TRes Function(
    Query$Conversations$conversations$items$ownerProfileConversation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? nickname = _undefined,
    Object? artistId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations$conversations$items$ownerProfileConversation(
      avatar: avatar == _undefined || avatar == null
          ? _instance.avatar
          : (avatar as String),
      nickname: nickname == _undefined || nickname == null
          ? _instance.nickname
          : (nickname as String),
      artistId: artistId == _undefined
          ? _instance.artistId
          : (artistId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Conversations$conversations$items$ownerProfileConversation<
  TRes
>
    implements
        CopyWith$Query$Conversations$conversations$items$ownerProfileConversation<
          TRes
        > {
  _CopyWithStubImpl$Query$Conversations$conversations$items$ownerProfileConversation(
    this._res,
  );

  TRes _res;

  call({
    String? avatar,
    String? nickname,
    String? artistId,
    String? $__typename,
  }) => _res;
}

class Query$Conversations$conversations$items$otherProfileConversation {
  Query$Conversations$conversations$items$otherProfileConversation({
    required this.avatar,
    required this.nickname,
    this.artistId,
    this.$__typename = 'ConversationResponse',
  });

  factory Query$Conversations$conversations$items$otherProfileConversation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$avatar = json['avatar'];
    final l$nickname = json['nickname'];
    final l$artistId = json['artistId'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$items$otherProfileConversation(
      avatar: (l$avatar as String),
      nickname: (l$nickname as String),
      artistId: (l$artistId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String avatar;

  final String nickname;

  final String? artistId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$artistId = artistId;
    _resultData['artistId'] = l$artistId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$nickname = nickname;
    final l$artistId = artistId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$avatar, l$nickname, l$artistId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Conversations$conversations$items$otherProfileConversation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
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

extension UtilityExtension$Query$Conversations$conversations$items$otherProfileConversation
    on Query$Conversations$conversations$items$otherProfileConversation {
  CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
    Query$Conversations$conversations$items$otherProfileConversation
  >
  get copyWith =>
      CopyWith$Query$Conversations$conversations$items$otherProfileConversation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
  TRes
> {
  factory CopyWith$Query$Conversations$conversations$items$otherProfileConversation(
    Query$Conversations$conversations$items$otherProfileConversation instance,
    TRes Function(
      Query$Conversations$conversations$items$otherProfileConversation,
    )
    then,
  ) = _CopyWithImpl$Query$Conversations$conversations$items$otherProfileConversation;

  factory CopyWith$Query$Conversations$conversations$items$otherProfileConversation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Conversations$conversations$items$otherProfileConversation;

  TRes call({
    String? avatar,
    String? nickname,
    String? artistId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversations$conversations$items$otherProfileConversation<
  TRes
>
    implements
        CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
          TRes
        > {
  _CopyWithImpl$Query$Conversations$conversations$items$otherProfileConversation(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$items$otherProfileConversation
  _instance;

  final TRes Function(
    Query$Conversations$conversations$items$otherProfileConversation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? nickname = _undefined,
    Object? artistId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations$conversations$items$otherProfileConversation(
      avatar: avatar == _undefined || avatar == null
          ? _instance.avatar
          : (avatar as String),
      nickname: nickname == _undefined || nickname == null
          ? _instance.nickname
          : (nickname as String),
      artistId: artistId == _undefined
          ? _instance.artistId
          : (artistId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Conversations$conversations$items$otherProfileConversation<
  TRes
>
    implements
        CopyWith$Query$Conversations$conversations$items$otherProfileConversation<
          TRes
        > {
  _CopyWithStubImpl$Query$Conversations$conversations$items$otherProfileConversation(
    this._res,
  );

  TRes _res;

  call({
    String? avatar,
    String? nickname,
    String? artistId,
    String? $__typename,
  }) => _res;
}

class Query$Conversations$conversations$items$lastMessage {
  Query$Conversations$conversations$items$lastMessage({
    required this.text,
    required this.senderId,
    required this.sentAt,
    required this.isReadBy,
    this.$__typename = 'LastMessage',
  });

  factory Query$Conversations$conversations$items$lastMessage.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$text = json['text'];
    final l$senderId = json['senderId'];
    final l$sentAt = json['sentAt'];
    final l$isReadBy = json['isReadBy'];
    final l$$__typename = json['__typename'];
    return Query$Conversations$conversations$items$lastMessage(
      text: (l$text as String),
      senderId: (l$senderId as String),
      sentAt: DateTime.parse((l$sentAt as String)),
      isReadBy: (l$isReadBy as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String senderId;

  final DateTime sentAt;

  final List<String> isReadBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$text = text;
    _resultData['text'] = l$text;
    final l$senderId = senderId;
    _resultData['senderId'] = l$senderId;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = l$sentAt.toIso8601String();
    final l$isReadBy = isReadBy;
    _resultData['isReadBy'] = l$isReadBy.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$senderId = senderId;
    final l$sentAt = sentAt;
    final l$isReadBy = isReadBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$text,
      l$senderId,
      l$sentAt,
      Object.hashAll(l$isReadBy.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Conversations$conversations$items$lastMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$senderId = senderId;
    final lOther$senderId = other.senderId;
    if (l$senderId != lOther$senderId) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$isReadBy = isReadBy;
    final lOther$isReadBy = other.isReadBy;
    if (l$isReadBy.length != lOther$isReadBy.length) {
      return false;
    }
    for (int i = 0; i < l$isReadBy.length; i++) {
      final l$isReadBy$entry = l$isReadBy[i];
      final lOther$isReadBy$entry = lOther$isReadBy[i];
      if (l$isReadBy$entry != lOther$isReadBy$entry) {
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

extension UtilityExtension$Query$Conversations$conversations$items$lastMessage
    on Query$Conversations$conversations$items$lastMessage {
  CopyWith$Query$Conversations$conversations$items$lastMessage<
    Query$Conversations$conversations$items$lastMessage
  >
  get copyWith => CopyWith$Query$Conversations$conversations$items$lastMessage(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$Conversations$conversations$items$lastMessage<
  TRes
> {
  factory CopyWith$Query$Conversations$conversations$items$lastMessage(
    Query$Conversations$conversations$items$lastMessage instance,
    TRes Function(Query$Conversations$conversations$items$lastMessage) then,
  ) = _CopyWithImpl$Query$Conversations$conversations$items$lastMessage;

  factory CopyWith$Query$Conversations$conversations$items$lastMessage.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Conversations$conversations$items$lastMessage;

  TRes call({
    String? text,
    String? senderId,
    DateTime? sentAt,
    List<String>? isReadBy,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Conversations$conversations$items$lastMessage<TRes>
    implements
        CopyWith$Query$Conversations$conversations$items$lastMessage<TRes> {
  _CopyWithImpl$Query$Conversations$conversations$items$lastMessage(
    this._instance,
    this._then,
  );

  final Query$Conversations$conversations$items$lastMessage _instance;

  final TRes Function(Query$Conversations$conversations$items$lastMessage)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? senderId = _undefined,
    Object? sentAt = _undefined,
    Object? isReadBy = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Conversations$conversations$items$lastMessage(
      text: text == _undefined || text == null
          ? _instance.text
          : (text as String),
      senderId: senderId == _undefined || senderId == null
          ? _instance.senderId
          : (senderId as String),
      sentAt: sentAt == _undefined || sentAt == null
          ? _instance.sentAt
          : (sentAt as DateTime),
      isReadBy: isReadBy == _undefined || isReadBy == null
          ? _instance.isReadBy
          : (isReadBy as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Conversations$conversations$items$lastMessage<
  TRes
>
    implements
        CopyWith$Query$Conversations$conversations$items$lastMessage<TRes> {
  _CopyWithStubImpl$Query$Conversations$conversations$items$lastMessage(
    this._res,
  );

  TRes _res;

  call({
    String? text,
    String? senderId,
    DateTime? sentAt,
    List<String>? isReadBy,
    String? $__typename,
  }) => _res;
}

class Variables$Query$Messages {
  factory Variables$Query$Messages({
    Input$MessageFilterInput? where,
    int? last,
    String? before,
  }) => Variables$Query$Messages._({
    if (where != null) r'where': where,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
  });

  Variables$Query$Messages._(this._$data);

  factory Variables$Query$Messages.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$MessageFilterInput.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    return Variables$Query$Messages._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MessageFilterInput? get where =>
      (_$data['where'] as Input$MessageFilterInput?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Messages<Variables$Query$Messages> get copyWith =>
      CopyWith$Variables$Query$Messages(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Messages ||
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
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Messages<TRes> {
  factory CopyWith$Variables$Query$Messages(
    Variables$Query$Messages instance,
    TRes Function(Variables$Query$Messages) then,
  ) = _CopyWithImpl$Variables$Query$Messages;

  factory CopyWith$Variables$Query$Messages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Messages;

  TRes call({Input$MessageFilterInput? where, int? last, String? before});
}

class _CopyWithImpl$Variables$Query$Messages<TRes>
    implements CopyWith$Variables$Query$Messages<TRes> {
  _CopyWithImpl$Variables$Query$Messages(this._instance, this._then);

  final Variables$Query$Messages _instance;

  final TRes Function(Variables$Query$Messages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) => _then(
    Variables$Query$Messages._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as Input$MessageFilterInput?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Messages<TRes>
    implements CopyWith$Variables$Query$Messages<TRes> {
  _CopyWithStubImpl$Variables$Query$Messages(this._res);

  TRes _res;

  call({Input$MessageFilterInput? where, int? last, String? before}) => _res;
}

class Query$Messages {
  Query$Messages({this.messages, this.$__typename = 'QueryInitialization'});

  factory Query$Messages.fromJson(Map<String, dynamic> json) {
    final l$messages = json['messages'];
    final l$$__typename = json['__typename'];
    return Query$Messages(
      messages: l$messages == null
          ? null
          : Query$Messages$messages.fromJson(
              (l$messages as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Messages$messages? messages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$messages = messages;
    _resultData['messages'] = l$messages?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$messages = messages;
    final l$$__typename = $__typename;
    return Object.hashAll([l$messages, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Messages || runtimeType != other.runtimeType) {
      return false;
    }
    final l$messages = messages;
    final lOther$messages = other.messages;
    if (l$messages != lOther$messages) {
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

extension UtilityExtension$Query$Messages on Query$Messages {
  CopyWith$Query$Messages<Query$Messages> get copyWith =>
      CopyWith$Query$Messages(this, (i) => i);
}

abstract class CopyWith$Query$Messages<TRes> {
  factory CopyWith$Query$Messages(
    Query$Messages instance,
    TRes Function(Query$Messages) then,
  ) = _CopyWithImpl$Query$Messages;

  factory CopyWith$Query$Messages.stub(TRes res) =
      _CopyWithStubImpl$Query$Messages;

  TRes call({Query$Messages$messages? messages, String? $__typename});
  CopyWith$Query$Messages$messages<TRes> get messages;
}

class _CopyWithImpl$Query$Messages<TRes>
    implements CopyWith$Query$Messages<TRes> {
  _CopyWithImpl$Query$Messages(this._instance, this._then);

  final Query$Messages _instance;

  final TRes Function(Query$Messages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? messages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Messages(
      messages: messages == _undefined
          ? _instance.messages
          : (messages as Query$Messages$messages?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Messages$messages<TRes> get messages {
    final local$messages = _instance.messages;
    return local$messages == null
        ? CopyWith$Query$Messages$messages.stub(_then(_instance))
        : CopyWith$Query$Messages$messages(
            local$messages,
            (e) => call(messages: e),
          );
  }
}

class _CopyWithStubImpl$Query$Messages<TRes>
    implements CopyWith$Query$Messages<TRes> {
  _CopyWithStubImpl$Query$Messages(this._res);

  TRes _res;

  call({Query$Messages$messages? messages, String? $__typename}) => _res;

  CopyWith$Query$Messages$messages<TRes> get messages =>
      CopyWith$Query$Messages$messages.stub(_res);
}

const documentNodeQueryMessages = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Messages'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'MessageFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'last')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'before')),
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
            name: NameNode(value: 'messages'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'where')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'cursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
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
                              name: NameNode(value: 'conversationId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'senderId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'receiverId'),
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
                              name: NameNode(value: 'text'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sentAt'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'deletedForIds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'senderProfileMessages'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'avatar'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'nickname'),
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
Query$Messages _parserFn$Query$Messages(Map<String, dynamic> data) =>
    Query$Messages.fromJson(data);
typedef OnQueryComplete$Query$Messages =
    FutureOr<void> Function(Map<String, dynamic>?, Query$Messages?);

class Options$Query$Messages extends graphql.QueryOptions<Query$Messages> {
  Options$Query$Messages({
    String? operationName,
    Variables$Query$Messages? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Messages? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Messages? onComplete,
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
                 data == null ? null : _parserFn$Query$Messages(data),
               ),
         onError: onError,
         document: documentNodeQueryMessages,
         parserFn: _parserFn$Query$Messages,
       );

  final OnQueryComplete$Query$Messages? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$Messages
    extends graphql.WatchQueryOptions<Query$Messages> {
  WatchOptions$Query$Messages({
    String? operationName,
    Variables$Query$Messages? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Messages? typedOptimisticResult,
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
         document: documentNodeQueryMessages,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$Messages,
       );
}

class FetchMoreOptions$Query$Messages extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Messages({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Messages? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryMessages,
       );
}

extension ClientExtension$Query$Messages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Messages>> query$Messages([
    Options$Query$Messages? options,
  ]) async => await this.query(options ?? Options$Query$Messages());

  graphql.ObservableQuery<Query$Messages> watchQuery$Messages([
    WatchOptions$Query$Messages? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$Messages());

  void writeQuery$Messages({
    required Query$Messages data,
    Variables$Query$Messages? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryMessages),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$Messages? readQuery$Messages({
    Variables$Query$Messages? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMessages),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Messages.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Messages> useQuery$Messages([
  Options$Query$Messages? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$Messages());
graphql.ObservableQuery<Query$Messages> useWatchQuery$Messages([
  WatchOptions$Query$Messages? options,
]) => graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Messages());

class Query$Messages$Widget extends graphql_flutter.Query<Query$Messages> {
  Query$Messages$Widget({
    widgets.Key? key,
    Options$Query$Messages? options,
    required graphql_flutter.QueryBuilder<Query$Messages> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$Messages(),
         builder: builder,
       );
}

class Query$Messages$messages {
  Query$Messages$messages({
    this.edges,
    required this.totalCount,
    this.$__typename = 'MessagesConnection',
  });

  factory Query$Messages$messages.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$Messages$messages(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$Messages$messages$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Messages$messages$edges>? edges;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Messages$messages || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$Messages$messages on Query$Messages$messages {
  CopyWith$Query$Messages$messages<Query$Messages$messages> get copyWith =>
      CopyWith$Query$Messages$messages(this, (i) => i);
}

abstract class CopyWith$Query$Messages$messages<TRes> {
  factory CopyWith$Query$Messages$messages(
    Query$Messages$messages instance,
    TRes Function(Query$Messages$messages) then,
  ) = _CopyWithImpl$Query$Messages$messages;

  factory CopyWith$Query$Messages$messages.stub(TRes res) =
      _CopyWithStubImpl$Query$Messages$messages;

  TRes call({
    List<Query$Messages$messages$edges>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$Messages$messages$edges>? Function(
      Iterable<
        CopyWith$Query$Messages$messages$edges<Query$Messages$messages$edges>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Messages$messages<TRes>
    implements CopyWith$Query$Messages$messages<TRes> {
  _CopyWithImpl$Query$Messages$messages(this._instance, this._then);

  final Query$Messages$messages _instance;

  final TRes Function(Query$Messages$messages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Messages$messages(
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$Messages$messages$edges>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$Messages$messages$edges>? Function(
      Iterable<
        CopyWith$Query$Messages$messages$edges<Query$Messages$messages$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$Messages$messages$edges(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$Messages$messages<TRes>
    implements CopyWith$Query$Messages$messages<TRes> {
  _CopyWithStubImpl$Query$Messages$messages(this._res);

  TRes _res;

  call({
    List<Query$Messages$messages$edges>? edges,
    int? totalCount,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;
}

class Query$Messages$messages$edges {
  Query$Messages$messages$edges({
    required this.cursor,
    required this.node,
    this.$__typename = 'MessagesEdge',
  });

  factory Query$Messages$messages$edges.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Messages$messages$edges(
      cursor: (l$cursor as String),
      node: Query$Messages$messages$edges$node.fromJson(
        (l$node as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Query$Messages$messages$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cursor, l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Messages$messages$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$Messages$messages$edges
    on Query$Messages$messages$edges {
  CopyWith$Query$Messages$messages$edges<Query$Messages$messages$edges>
  get copyWith => CopyWith$Query$Messages$messages$edges(this, (i) => i);
}

abstract class CopyWith$Query$Messages$messages$edges<TRes> {
  factory CopyWith$Query$Messages$messages$edges(
    Query$Messages$messages$edges instance,
    TRes Function(Query$Messages$messages$edges) then,
  ) = _CopyWithImpl$Query$Messages$messages$edges;

  factory CopyWith$Query$Messages$messages$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Messages$messages$edges;

  TRes call({
    String? cursor,
    Query$Messages$messages$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Messages$messages$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Messages$messages$edges<TRes>
    implements CopyWith$Query$Messages$messages$edges<TRes> {
  _CopyWithImpl$Query$Messages$messages$edges(this._instance, this._then);

  final Query$Messages$messages$edges _instance;

  final TRes Function(Query$Messages$messages$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Messages$messages$edges(
      cursor: cursor == _undefined || cursor == null
          ? _instance.cursor
          : (cursor as String),
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Query$Messages$messages$edges$node),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Messages$messages$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Messages$messages$edges$node(
      local$node,
      (e) => call(node: e),
    );
  }
}

class _CopyWithStubImpl$Query$Messages$messages$edges<TRes>
    implements CopyWith$Query$Messages$messages$edges<TRes> {
  _CopyWithStubImpl$Query$Messages$messages$edges(this._res);

  TRes _res;

  call({
    String? cursor,
    Query$Messages$messages$edges$node? node,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Messages$messages$edges$node<TRes> get node =>
      CopyWith$Query$Messages$messages$edges$node.stub(_res);
}

class Query$Messages$messages$edges$node {
  Query$Messages$messages$edges$node({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.receiverId,
    required this.isRead,
    required this.text,
    required this.sentAt,
    required this.deletedForIds,
    required this.senderProfileMessages,
    this.$__typename = 'Message',
  });

  factory Query$Messages$messages$edges$node.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$conversationId = json['conversationId'];
    final l$senderId = json['senderId'];
    final l$receiverId = json['receiverId'];
    final l$isRead = json['isRead'];
    final l$text = json['text'];
    final l$sentAt = json['sentAt'];
    final l$deletedForIds = json['deletedForIds'];
    final l$senderProfileMessages = json['senderProfileMessages'];
    final l$$__typename = json['__typename'];
    return Query$Messages$messages$edges$node(
      id: (l$id as String),
      conversationId: (l$conversationId as String),
      senderId: (l$senderId as String),
      receiverId: (l$receiverId as String),
      isRead: (l$isRead as bool),
      text: (l$text as String),
      sentAt: DateTime.parse((l$sentAt as String)),
      deletedForIds: (l$deletedForIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      senderProfileMessages:
          Query$Messages$messages$edges$node$senderProfileMessages.fromJson(
            (l$senderProfileMessages as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String conversationId;

  final String senderId;

  final String receiverId;

  final bool isRead;

  final String text;

  final DateTime sentAt;

  final List<String> deletedForIds;

  final Query$Messages$messages$edges$node$senderProfileMessages
  senderProfileMessages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$conversationId = conversationId;
    _resultData['conversationId'] = l$conversationId;
    final l$senderId = senderId;
    _resultData['senderId'] = l$senderId;
    final l$receiverId = receiverId;
    _resultData['receiverId'] = l$receiverId;
    final l$isRead = isRead;
    _resultData['isRead'] = l$isRead;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = l$sentAt.toIso8601String();
    final l$deletedForIds = deletedForIds;
    _resultData['deletedForIds'] = l$deletedForIds.map((e) => e).toList();
    final l$senderProfileMessages = senderProfileMessages;
    _resultData['senderProfileMessages'] = l$senderProfileMessages.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$conversationId = conversationId;
    final l$senderId = senderId;
    final l$receiverId = receiverId;
    final l$isRead = isRead;
    final l$text = text;
    final l$sentAt = sentAt;
    final l$deletedForIds = deletedForIds;
    final l$senderProfileMessages = senderProfileMessages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$conversationId,
      l$senderId,
      l$receiverId,
      l$isRead,
      l$text,
      l$sentAt,
      Object.hashAll(l$deletedForIds.map((v) => v)),
      l$senderProfileMessages,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Messages$messages$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$conversationId = conversationId;
    final lOther$conversationId = other.conversationId;
    if (l$conversationId != lOther$conversationId) {
      return false;
    }
    final l$senderId = senderId;
    final lOther$senderId = other.senderId;
    if (l$senderId != lOther$senderId) {
      return false;
    }
    final l$receiverId = receiverId;
    final lOther$receiverId = other.receiverId;
    if (l$receiverId != lOther$receiverId) {
      return false;
    }
    final l$isRead = isRead;
    final lOther$isRead = other.isRead;
    if (l$isRead != lOther$isRead) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$deletedForIds = deletedForIds;
    final lOther$deletedForIds = other.deletedForIds;
    if (l$deletedForIds.length != lOther$deletedForIds.length) {
      return false;
    }
    for (int i = 0; i < l$deletedForIds.length; i++) {
      final l$deletedForIds$entry = l$deletedForIds[i];
      final lOther$deletedForIds$entry = lOther$deletedForIds[i];
      if (l$deletedForIds$entry != lOther$deletedForIds$entry) {
        return false;
      }
    }
    final l$senderProfileMessages = senderProfileMessages;
    final lOther$senderProfileMessages = other.senderProfileMessages;
    if (l$senderProfileMessages != lOther$senderProfileMessages) {
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

extension UtilityExtension$Query$Messages$messages$edges$node
    on Query$Messages$messages$edges$node {
  CopyWith$Query$Messages$messages$edges$node<
    Query$Messages$messages$edges$node
  >
  get copyWith => CopyWith$Query$Messages$messages$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$Messages$messages$edges$node<TRes> {
  factory CopyWith$Query$Messages$messages$edges$node(
    Query$Messages$messages$edges$node instance,
    TRes Function(Query$Messages$messages$edges$node) then,
  ) = _CopyWithImpl$Query$Messages$messages$edges$node;

  factory CopyWith$Query$Messages$messages$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Messages$messages$edges$node;

  TRes call({
    String? id,
    String? conversationId,
    String? senderId,
    String? receiverId,
    bool? isRead,
    String? text,
    DateTime? sentAt,
    List<String>? deletedForIds,
    Query$Messages$messages$edges$node$senderProfileMessages?
    senderProfileMessages,
    String? $__typename,
  });
  CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<TRes>
  get senderProfileMessages;
}

class _CopyWithImpl$Query$Messages$messages$edges$node<TRes>
    implements CopyWith$Query$Messages$messages$edges$node<TRes> {
  _CopyWithImpl$Query$Messages$messages$edges$node(this._instance, this._then);

  final Query$Messages$messages$edges$node _instance;

  final TRes Function(Query$Messages$messages$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? conversationId = _undefined,
    Object? senderId = _undefined,
    Object? receiverId = _undefined,
    Object? isRead = _undefined,
    Object? text = _undefined,
    Object? sentAt = _undefined,
    Object? deletedForIds = _undefined,
    Object? senderProfileMessages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Messages$messages$edges$node(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      conversationId: conversationId == _undefined || conversationId == null
          ? _instance.conversationId
          : (conversationId as String),
      senderId: senderId == _undefined || senderId == null
          ? _instance.senderId
          : (senderId as String),
      receiverId: receiverId == _undefined || receiverId == null
          ? _instance.receiverId
          : (receiverId as String),
      isRead: isRead == _undefined || isRead == null
          ? _instance.isRead
          : (isRead as bool),
      text: text == _undefined || text == null
          ? _instance.text
          : (text as String),
      sentAt: sentAt == _undefined || sentAt == null
          ? _instance.sentAt
          : (sentAt as DateTime),
      deletedForIds: deletedForIds == _undefined || deletedForIds == null
          ? _instance.deletedForIds
          : (deletedForIds as List<String>),
      senderProfileMessages:
          senderProfileMessages == _undefined || senderProfileMessages == null
          ? _instance.senderProfileMessages
          : (senderProfileMessages
                as Query$Messages$messages$edges$node$senderProfileMessages),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<TRes>
  get senderProfileMessages {
    final local$senderProfileMessages = _instance.senderProfileMessages;
    return CopyWith$Query$Messages$messages$edges$node$senderProfileMessages(
      local$senderProfileMessages,
      (e) => call(senderProfileMessages: e),
    );
  }
}

class _CopyWithStubImpl$Query$Messages$messages$edges$node<TRes>
    implements CopyWith$Query$Messages$messages$edges$node<TRes> {
  _CopyWithStubImpl$Query$Messages$messages$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? conversationId,
    String? senderId,
    String? receiverId,
    bool? isRead,
    String? text,
    DateTime? sentAt,
    List<String>? deletedForIds,
    Query$Messages$messages$edges$node$senderProfileMessages?
    senderProfileMessages,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<TRes>
  get senderProfileMessages =>
      CopyWith$Query$Messages$messages$edges$node$senderProfileMessages.stub(
        _res,
      );
}

class Query$Messages$messages$edges$node$senderProfileMessages {
  Query$Messages$messages$edges$node$senderProfileMessages({
    required this.avatar,
    required this.nickname,
    this.$__typename = 'MessageResponse',
  });

  factory Query$Messages$messages$edges$node$senderProfileMessages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$avatar = json['avatar'];
    final l$nickname = json['nickname'];
    final l$$__typename = json['__typename'];
    return Query$Messages$messages$edges$node$senderProfileMessages(
      avatar: (l$avatar as String),
      nickname: (l$nickname as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String avatar;

  final String nickname;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$nickname = nickname;
    _resultData['nickname'] = l$nickname;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$nickname = nickname;
    final l$$__typename = $__typename;
    return Object.hashAll([l$avatar, l$nickname, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Messages$messages$edges$node$senderProfileMessages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (l$nickname != lOther$nickname) {
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

extension UtilityExtension$Query$Messages$messages$edges$node$senderProfileMessages
    on Query$Messages$messages$edges$node$senderProfileMessages {
  CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<
    Query$Messages$messages$edges$node$senderProfileMessages
  >
  get copyWith =>
      CopyWith$Query$Messages$messages$edges$node$senderProfileMessages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<
  TRes
> {
  factory CopyWith$Query$Messages$messages$edges$node$senderProfileMessages(
    Query$Messages$messages$edges$node$senderProfileMessages instance,
    TRes Function(Query$Messages$messages$edges$node$senderProfileMessages)
    then,
  ) = _CopyWithImpl$Query$Messages$messages$edges$node$senderProfileMessages;

  factory CopyWith$Query$Messages$messages$edges$node$senderProfileMessages.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Messages$messages$edges$node$senderProfileMessages;

  TRes call({String? avatar, String? nickname, String? $__typename});
}

class _CopyWithImpl$Query$Messages$messages$edges$node$senderProfileMessages<
  TRes
>
    implements
        CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<
          TRes
        > {
  _CopyWithImpl$Query$Messages$messages$edges$node$senderProfileMessages(
    this._instance,
    this._then,
  );

  final Query$Messages$messages$edges$node$senderProfileMessages _instance;

  final TRes Function(Query$Messages$messages$edges$node$senderProfileMessages)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? nickname = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Messages$messages$edges$node$senderProfileMessages(
      avatar: avatar == _undefined || avatar == null
          ? _instance.avatar
          : (avatar as String),
      nickname: nickname == _undefined || nickname == null
          ? _instance.nickname
          : (nickname as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Messages$messages$edges$node$senderProfileMessages<
  TRes
>
    implements
        CopyWith$Query$Messages$messages$edges$node$senderProfileMessages<
          TRes
        > {
  _CopyWithStubImpl$Query$Messages$messages$edges$node$senderProfileMessages(
    this._res,
  );

  TRes _res;

  call({String? avatar, String? nickname, String? $__typename}) => _res;
}
