import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Mutation$UpdateListenerProfile {
  Mutation$UpdateListenerProfile({
    required this.updateListenerProfile,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$UpdateListenerProfile.fromJson(Map<String, dynamic> json) {
    final l$updateListenerProfile = json['updateListenerProfile'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateListenerProfile(
      updateListenerProfile: (l$updateListenerProfile as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateListenerProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateListenerProfile = updateListenerProfile;
    _resultData['updateListenerProfile'] = l$updateListenerProfile;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateListenerProfile = updateListenerProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateListenerProfile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateListenerProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateListenerProfile = updateListenerProfile;
    final lOther$updateListenerProfile = other.updateListenerProfile;
    if (l$updateListenerProfile != lOther$updateListenerProfile) {
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

extension UtilityExtension$Mutation$UpdateListenerProfile
    on Mutation$UpdateListenerProfile {
  CopyWith$Mutation$UpdateListenerProfile<Mutation$UpdateListenerProfile>
  get copyWith => CopyWith$Mutation$UpdateListenerProfile(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateListenerProfile<TRes> {
  factory CopyWith$Mutation$UpdateListenerProfile(
    Mutation$UpdateListenerProfile instance,
    TRes Function(Mutation$UpdateListenerProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateListenerProfile;

  factory CopyWith$Mutation$UpdateListenerProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateListenerProfile;

  TRes call({bool? updateListenerProfile, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateListenerProfile<TRes>
    implements CopyWith$Mutation$UpdateListenerProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateListenerProfile(this._instance, this._then);

  final Mutation$UpdateListenerProfile _instance;

  final TRes Function(Mutation$UpdateListenerProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateListenerProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateListenerProfile(
      updateListenerProfile:
          updateListenerProfile == _undefined || updateListenerProfile == null
          ? _instance.updateListenerProfile
          : (updateListenerProfile as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateListenerProfile<TRes>
    implements CopyWith$Mutation$UpdateListenerProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateListenerProfile(this._res);

  TRes _res;

  call({bool? updateListenerProfile, String? $__typename}) => _res;
}

const documentNodeMutationUpdateListenerProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateListenerProfile'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateListenerProfile'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateListenerRequest'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'displayName'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'avatarImage'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'bannerImage'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'email'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'phoneNumber'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'fullName'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'birthDate'),
                      value: NullValueNode(),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'gender'),
                      value: NullValueNode(),
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
Mutation$UpdateListenerProfile _parserFn$Mutation$UpdateListenerProfile(
  Map<String, dynamic> data,
) => Mutation$UpdateListenerProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateListenerProfile =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$UpdateListenerProfile?,
    );

class Options$Mutation$UpdateListenerProfile
    extends graphql.MutationOptions<Mutation$UpdateListenerProfile> {
  Options$Mutation$UpdateListenerProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateListenerProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateListenerProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateListenerProfile>? update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$UpdateListenerProfile(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateListenerProfile,
         parserFn: _parserFn$Mutation$UpdateListenerProfile,
       );

  final OnMutationCompleted$Mutation$UpdateListenerProfile?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UpdateListenerProfile
    extends graphql.WatchQueryOptions<Mutation$UpdateListenerProfile> {
  WatchOptions$Mutation$UpdateListenerProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateListenerProfile? typedOptimisticResult,
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
         document: documentNodeMutationUpdateListenerProfile,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UpdateListenerProfile,
       );
}

extension ClientExtension$Mutation$UpdateListenerProfile
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateListenerProfile>>
  mutate$UpdateListenerProfile([
    Options$Mutation$UpdateListenerProfile? options,
  ]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateListenerProfile());

  graphql.ObservableQuery<Mutation$UpdateListenerProfile>
  watchMutation$UpdateListenerProfile([
    WatchOptions$Mutation$UpdateListenerProfile? options,
  ]) => this.watchMutation(
    options ?? WatchOptions$Mutation$UpdateListenerProfile(),
  );
}

class Mutation$UpdateListenerProfile$HookResult {
  Mutation$UpdateListenerProfile$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateListenerProfile runMutation;

  final graphql.QueryResult<Mutation$UpdateListenerProfile> result;
}

Mutation$UpdateListenerProfile$HookResult useMutation$UpdateListenerProfile([
  WidgetOptions$Mutation$UpdateListenerProfile? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$UpdateListenerProfile(),
  );
  return Mutation$UpdateListenerProfile$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateListenerProfile>
useWatchMutation$UpdateListenerProfile([
  WatchOptions$Mutation$UpdateListenerProfile? options,
]) => graphql_flutter.useWatchMutation(
  options ?? WatchOptions$Mutation$UpdateListenerProfile(),
);

class WidgetOptions$Mutation$UpdateListenerProfile
    extends graphql.MutationOptions<Mutation$UpdateListenerProfile> {
  WidgetOptions$Mutation$UpdateListenerProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateListenerProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateListenerProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateListenerProfile>? update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$UpdateListenerProfile(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateListenerProfile,
         parserFn: _parserFn$Mutation$UpdateListenerProfile,
       );

  final OnMutationCompleted$Mutation$UpdateListenerProfile?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$UpdateListenerProfile =
    graphql.MultiSourceResult<Mutation$UpdateListenerProfile> Function({
      Object? optimisticResult,
      Mutation$UpdateListenerProfile? typedOptimisticResult,
    });
typedef Builder$Mutation$UpdateListenerProfile =
    widgets.Widget Function(
      RunMutation$Mutation$UpdateListenerProfile,
      graphql.QueryResult<Mutation$UpdateListenerProfile>?,
    );

class Mutation$UpdateListenerProfile$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateListenerProfile> {
  Mutation$UpdateListenerProfile$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateListenerProfile? options,
    required Builder$Mutation$UpdateListenerProfile builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$UpdateListenerProfile(),
         builder: (run, result) => builder(
           ({optimisticResult, typedOptimisticResult}) => run(
             const {},
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}
