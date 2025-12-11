import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SendRequest {
  factory Variables$Mutation$SendRequest({
    String? publicRequestId,
    required String artistId,
    String? requirements,
    required String packageId,
    required bool isDirectRequest,
  }) => Variables$Mutation$SendRequest._({
    if (publicRequestId != null) r'publicRequestId': publicRequestId,
    r'artistId': artistId,
    if (requirements != null) r'requirements': requirements,
    r'packageId': packageId,
    r'isDirectRequest': isDirectRequest,
  });

  Variables$Mutation$SendRequest._(this._$data);

  factory Variables$Mutation$SendRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('publicRequestId')) {
      final l$publicRequestId = data['publicRequestId'];
      result$data['publicRequestId'] = (l$publicRequestId as String?);
    }
    final l$artistId = data['artistId'];
    result$data['artistId'] = (l$artistId as String);
    if (data.containsKey('requirements')) {
      final l$requirements = data['requirements'];
      result$data['requirements'] = (l$requirements as String?);
    }
    final l$packageId = data['packageId'];
    result$data['packageId'] = (l$packageId as String);
    final l$isDirectRequest = data['isDirectRequest'];
    result$data['isDirectRequest'] = (l$isDirectRequest as bool);
    return Variables$Mutation$SendRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get publicRequestId => (_$data['publicRequestId'] as String?);

  String get artistId => (_$data['artistId'] as String);

  String? get requirements => (_$data['requirements'] as String?);

  String get packageId => (_$data['packageId'] as String);

  bool get isDirectRequest => (_$data['isDirectRequest'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('publicRequestId')) {
      final l$publicRequestId = publicRequestId;
      result$data['publicRequestId'] = l$publicRequestId;
    }
    final l$artistId = artistId;
    result$data['artistId'] = l$artistId;
    if (_$data.containsKey('requirements')) {
      final l$requirements = requirements;
      result$data['requirements'] = l$requirements;
    }
    final l$packageId = packageId;
    result$data['packageId'] = l$packageId;
    final l$isDirectRequest = isDirectRequest;
    result$data['isDirectRequest'] = l$isDirectRequest;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendRequest<Variables$Mutation$SendRequest>
  get copyWith => CopyWith$Variables$Mutation$SendRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicRequestId = publicRequestId;
    final lOther$publicRequestId = other.publicRequestId;
    if (_$data.containsKey('publicRequestId') !=
        other._$data.containsKey('publicRequestId')) {
      return false;
    }
    if (l$publicRequestId != lOther$publicRequestId) {
      return false;
    }
    final l$artistId = artistId;
    final lOther$artistId = other.artistId;
    if (l$artistId != lOther$artistId) {
      return false;
    }
    final l$requirements = requirements;
    final lOther$requirements = other.requirements;
    if (_$data.containsKey('requirements') !=
        other._$data.containsKey('requirements')) {
      return false;
    }
    if (l$requirements != lOther$requirements) {
      return false;
    }
    final l$packageId = packageId;
    final lOther$packageId = other.packageId;
    if (l$packageId != lOther$packageId) {
      return false;
    }
    final l$isDirectRequest = isDirectRequest;
    final lOther$isDirectRequest = other.isDirectRequest;
    if (l$isDirectRequest != lOther$isDirectRequest) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$publicRequestId = publicRequestId;
    final l$artistId = artistId;
    final l$requirements = requirements;
    final l$packageId = packageId;
    final l$isDirectRequest = isDirectRequest;
    return Object.hashAll([
      _$data.containsKey('publicRequestId') ? l$publicRequestId : const {},
      l$artistId,
      _$data.containsKey('requirements') ? l$requirements : const {},
      l$packageId,
      l$isDirectRequest,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SendRequest<TRes> {
  factory CopyWith$Variables$Mutation$SendRequest(
    Variables$Mutation$SendRequest instance,
    TRes Function(Variables$Mutation$SendRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$SendRequest;

  factory CopyWith$Variables$Mutation$SendRequest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendRequest;

  TRes call({
    String? publicRequestId,
    String? artistId,
    String? requirements,
    String? packageId,
    bool? isDirectRequest,
  });
}

class _CopyWithImpl$Variables$Mutation$SendRequest<TRes>
    implements CopyWith$Variables$Mutation$SendRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$SendRequest(this._instance, this._then);

  final Variables$Mutation$SendRequest _instance;

  final TRes Function(Variables$Mutation$SendRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicRequestId = _undefined,
    Object? artistId = _undefined,
    Object? requirements = _undefined,
    Object? packageId = _undefined,
    Object? isDirectRequest = _undefined,
  }) => _then(
    Variables$Mutation$SendRequest._({
      ..._instance._$data,
      if (publicRequestId != _undefined)
        'publicRequestId': (publicRequestId as String?),
      if (artistId != _undefined && artistId != null)
        'artistId': (artistId as String),
      if (requirements != _undefined) 'requirements': (requirements as String?),
      if (packageId != _undefined && packageId != null)
        'packageId': (packageId as String),
      if (isDirectRequest != _undefined && isDirectRequest != null)
        'isDirectRequest': (isDirectRequest as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SendRequest<TRes>
    implements CopyWith$Variables$Mutation$SendRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendRequest(this._res);

  TRes _res;

  call({
    String? publicRequestId,
    String? artistId,
    String? requirements,
    String? packageId,
    bool? isDirectRequest,
  }) => _res;
}

class Mutation$SendRequest {
  Mutation$SendRequest({
    required this.sendRequest,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$SendRequest.fromJson(Map<String, dynamic> json) {
    final l$sendRequest = json['sendRequest'];
    final l$$__typename = json['__typename'];
    return Mutation$SendRequest(
      sendRequest: (l$sendRequest as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool sendRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sendRequest = sendRequest;
    _resultData['sendRequest'] = l$sendRequest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sendRequest = sendRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sendRequest, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendRequest = sendRequest;
    final lOther$sendRequest = other.sendRequest;
    if (l$sendRequest != lOther$sendRequest) {
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

extension UtilityExtension$Mutation$SendRequest on Mutation$SendRequest {
  CopyWith$Mutation$SendRequest<Mutation$SendRequest> get copyWith =>
      CopyWith$Mutation$SendRequest(this, (i) => i);
}

abstract class CopyWith$Mutation$SendRequest<TRes> {
  factory CopyWith$Mutation$SendRequest(
    Mutation$SendRequest instance,
    TRes Function(Mutation$SendRequest) then,
  ) = _CopyWithImpl$Mutation$SendRequest;

  factory CopyWith$Mutation$SendRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendRequest;

  TRes call({bool? sendRequest, String? $__typename});
}

class _CopyWithImpl$Mutation$SendRequest<TRes>
    implements CopyWith$Mutation$SendRequest<TRes> {
  _CopyWithImpl$Mutation$SendRequest(this._instance, this._then);

  final Mutation$SendRequest _instance;

  final TRes Function(Mutation$SendRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sendRequest = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SendRequest(
      sendRequest: sendRequest == _undefined || sendRequest == null
          ? _instance.sendRequest
          : (sendRequest as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SendRequest<TRes>
    implements CopyWith$Mutation$SendRequest<TRes> {
  _CopyWithStubImpl$Mutation$SendRequest(this._res);

  TRes _res;

  call({bool? sendRequest, String? $__typename}) => _res;
}

const documentNodeMutationSendRequest = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SendRequest'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'publicRequestId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'artistId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'requirements')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'packageId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isDirectRequest')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'sendRequest'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'artistId'),
                      value: VariableNode(name: NameNode(value: 'artistId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'requirements'),
                      value: VariableNode(
                        name: NameNode(value: 'requirements'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'packageId'),
                      value: VariableNode(name: NameNode(value: 'packageId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'publicRequestId'),
                      value: VariableNode(
                        name: NameNode(value: 'publicRequestId'),
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'isDirectRequest'),
                value: VariableNode(name: NameNode(value: 'isDirectRequest')),
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
Mutation$SendRequest _parserFn$Mutation$SendRequest(
  Map<String, dynamic> data,
) => Mutation$SendRequest.fromJson(data);
typedef OnMutationCompleted$Mutation$SendRequest =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$SendRequest?);

class Options$Mutation$SendRequest
    extends graphql.MutationOptions<Mutation$SendRequest> {
  Options$Mutation$SendRequest({
    String? operationName,
    required Variables$Mutation$SendRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendRequest>? update,
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
                 data == null ? null : _parserFn$Mutation$SendRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSendRequest,
         parserFn: _parserFn$Mutation$SendRequest,
       );

  final OnMutationCompleted$Mutation$SendRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SendRequest
    extends graphql.WatchQueryOptions<Mutation$SendRequest> {
  WatchOptions$Mutation$SendRequest({
    String? operationName,
    required Variables$Mutation$SendRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendRequest? typedOptimisticResult,
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
         document: documentNodeMutationSendRequest,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SendRequest,
       );
}

extension ClientExtension$Mutation$SendRequest on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendRequest>> mutate$SendRequest(
    Options$Mutation$SendRequest options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$SendRequest> watchMutation$SendRequest(
    WatchOptions$Mutation$SendRequest options,
  ) => this.watchMutation(options);
}

class Mutation$SendRequest$HookResult {
  Mutation$SendRequest$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SendRequest runMutation;

  final graphql.QueryResult<Mutation$SendRequest> result;
}

Mutation$SendRequest$HookResult useMutation$SendRequest([
  WidgetOptions$Mutation$SendRequest? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SendRequest(),
  );
  return Mutation$SendRequest$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SendRequest> useWatchMutation$SendRequest(
  WatchOptions$Mutation$SendRequest options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SendRequest
    extends graphql.MutationOptions<Mutation$SendRequest> {
  WidgetOptions$Mutation$SendRequest({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendRequest>? update,
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
                 data == null ? null : _parserFn$Mutation$SendRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSendRequest,
         parserFn: _parserFn$Mutation$SendRequest,
       );

  final OnMutationCompleted$Mutation$SendRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SendRequest =
    graphql.MultiSourceResult<Mutation$SendRequest> Function(
      Variables$Mutation$SendRequest, {
      Object? optimisticResult,
      Mutation$SendRequest? typedOptimisticResult,
    });
typedef Builder$Mutation$SendRequest =
    widgets.Widget Function(
      RunMutation$Mutation$SendRequest,
      graphql.QueryResult<Mutation$SendRequest>?,
    );

class Mutation$SendRequest$Widget
    extends graphql_flutter.Mutation<Mutation$SendRequest> {
  Mutation$SendRequest$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SendRequest? options,
    required Builder$Mutation$SendRequest builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SendRequest(),
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
