import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$FollowArtist {
  factory Variables$Mutation$FollowArtist({required String targetId}) =>
      Variables$Mutation$FollowArtist._({r'targetId': targetId});

  Variables$Mutation$FollowArtist._(this._$data);

  factory Variables$Mutation$FollowArtist.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$targetId = data['targetId'];
    result$data['targetId'] = (l$targetId as String);
    return Variables$Mutation$FollowArtist._(result$data);
  }

  Map<String, dynamic> _$data;

  String get targetId => (_$data['targetId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$targetId = targetId;
    result$data['targetId'] = l$targetId;
    return result$data;
  }

  CopyWith$Variables$Mutation$FollowArtist<Variables$Mutation$FollowArtist>
  get copyWith => CopyWith$Variables$Mutation$FollowArtist(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FollowArtist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$targetId = targetId;
    final lOther$targetId = other.targetId;
    if (l$targetId != lOther$targetId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$targetId = targetId;
    return Object.hashAll([l$targetId]);
  }
}

abstract class CopyWith$Variables$Mutation$FollowArtist<TRes> {
  factory CopyWith$Variables$Mutation$FollowArtist(
    Variables$Mutation$FollowArtist instance,
    TRes Function(Variables$Mutation$FollowArtist) then,
  ) = _CopyWithImpl$Variables$Mutation$FollowArtist;

  factory CopyWith$Variables$Mutation$FollowArtist.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FollowArtist;

  TRes call({String? targetId});
}

class _CopyWithImpl$Variables$Mutation$FollowArtist<TRes>
    implements CopyWith$Variables$Mutation$FollowArtist<TRes> {
  _CopyWithImpl$Variables$Mutation$FollowArtist(this._instance, this._then);

  final Variables$Mutation$FollowArtist _instance;

  final TRes Function(Variables$Mutation$FollowArtist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? targetId = _undefined}) => _then(
    Variables$Mutation$FollowArtist._({
      ..._instance._$data,
      if (targetId != _undefined && targetId != null)
        'targetId': (targetId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$FollowArtist<TRes>
    implements CopyWith$Variables$Mutation$FollowArtist<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FollowArtist(this._res);

  TRes _res;

  call({String? targetId}) => _res;
}

class Mutation$FollowArtist {
  Mutation$FollowArtist({
    required this.followUser,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$FollowArtist.fromJson(Map<String, dynamic> json) {
    final l$followUser = json['followUser'];
    final l$$__typename = json['__typename'];
    return Mutation$FollowArtist(
      followUser: (l$followUser as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool followUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followUser = followUser;
    _resultData['followUser'] = l$followUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followUser = followUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$followUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FollowArtist || runtimeType != other.runtimeType) {
      return false;
    }
    final l$followUser = followUser;
    final lOther$followUser = other.followUser;
    if (l$followUser != lOther$followUser) {
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

extension UtilityExtension$Mutation$FollowArtist on Mutation$FollowArtist {
  CopyWith$Mutation$FollowArtist<Mutation$FollowArtist> get copyWith =>
      CopyWith$Mutation$FollowArtist(this, (i) => i);
}

abstract class CopyWith$Mutation$FollowArtist<TRes> {
  factory CopyWith$Mutation$FollowArtist(
    Mutation$FollowArtist instance,
    TRes Function(Mutation$FollowArtist) then,
  ) = _CopyWithImpl$Mutation$FollowArtist;

  factory CopyWith$Mutation$FollowArtist.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FollowArtist;

  TRes call({bool? followUser, String? $__typename});
}

class _CopyWithImpl$Mutation$FollowArtist<TRes>
    implements CopyWith$Mutation$FollowArtist<TRes> {
  _CopyWithImpl$Mutation$FollowArtist(this._instance, this._then);

  final Mutation$FollowArtist _instance;

  final TRes Function(Mutation$FollowArtist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$FollowArtist(
      followUser: followUser == _undefined || followUser == null
          ? _instance.followUser
          : (followUser as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$FollowArtist<TRes>
    implements CopyWith$Mutation$FollowArtist<TRes> {
  _CopyWithStubImpl$Mutation$FollowArtist(this._res);

  TRes _res;

  call({bool? followUser, String? $__typename}) => _res;
}

const documentNodeMutationFollowArtist = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'FollowArtist'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'targetId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'followUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'targetId'),
                      value: VariableNode(name: NameNode(value: 'targetId')),
                    ),
                  ],
                ),
              ),
            ],
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
  ],
);
Mutation$FollowArtist _parserFn$Mutation$FollowArtist(
  Map<String, dynamic> data,
) => Mutation$FollowArtist.fromJson(data);
typedef OnMutationCompleted$Mutation$FollowArtist =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$FollowArtist?);

class Options$Mutation$FollowArtist
    extends graphql.MutationOptions<Mutation$FollowArtist> {
  Options$Mutation$FollowArtist({
    String? operationName,
    required Variables$Mutation$FollowArtist variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowArtist? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FollowArtist? onCompleted,
    graphql.OnMutationUpdate<Mutation$FollowArtist>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$FollowArtist(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationFollowArtist,
         parserFn: _parserFn$Mutation$FollowArtist,
       );

  final OnMutationCompleted$Mutation$FollowArtist? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$FollowArtist
    extends graphql.WatchQueryOptions<Mutation$FollowArtist> {
  WatchOptions$Mutation$FollowArtist({
    String? operationName,
    required Variables$Mutation$FollowArtist variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowArtist? typedOptimisticResult,
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
         document: documentNodeMutationFollowArtist,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$FollowArtist,
       );
}

extension ClientExtension$Mutation$FollowArtist on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FollowArtist>> mutate$FollowArtist(
    Options$Mutation$FollowArtist options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$FollowArtist> watchMutation$FollowArtist(
    WatchOptions$Mutation$FollowArtist options,
  ) => this.watchMutation(options);
}

class Mutation$FollowArtist$HookResult {
  Mutation$FollowArtist$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$FollowArtist runMutation;

  final graphql.QueryResult<Mutation$FollowArtist> result;
}

Mutation$FollowArtist$HookResult useMutation$FollowArtist([
  WidgetOptions$Mutation$FollowArtist? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$FollowArtist(),
  );
  return Mutation$FollowArtist$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FollowArtist> useWatchMutation$FollowArtist(
  WatchOptions$Mutation$FollowArtist options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FollowArtist
    extends graphql.MutationOptions<Mutation$FollowArtist> {
  WidgetOptions$Mutation$FollowArtist({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FollowArtist? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FollowArtist? onCompleted,
    graphql.OnMutationUpdate<Mutation$FollowArtist>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$FollowArtist(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationFollowArtist,
         parserFn: _parserFn$Mutation$FollowArtist,
       );

  final OnMutationCompleted$Mutation$FollowArtist? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$FollowArtist =
    graphql.MultiSourceResult<Mutation$FollowArtist> Function(
      Variables$Mutation$FollowArtist, {
      Object? optimisticResult,
      Mutation$FollowArtist? typedOptimisticResult,
    });
typedef Builder$Mutation$FollowArtist =
    widgets.Widget Function(
      RunMutation$Mutation$FollowArtist,
      graphql.QueryResult<Mutation$FollowArtist>?,
    );

class Mutation$FollowArtist$Widget
    extends graphql_flutter.Mutation<Mutation$FollowArtist> {
  Mutation$FollowArtist$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$FollowArtist? options,
    required Builder$Mutation$FollowArtist builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$FollowArtist(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}
