import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$AddConversationGeneral {
  factory Variables$Mutation$AddConversationGeneral({required String userId}) =>
      Variables$Mutation$AddConversationGeneral._({r'userId': userId});

  Variables$Mutation$AddConversationGeneral._(this._$data);

  factory Variables$Mutation$AddConversationGeneral.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Mutation$AddConversationGeneral._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddConversationGeneral<
    Variables$Mutation$AddConversationGeneral
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddConversationGeneral(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddConversationGeneral ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Mutation$AddConversationGeneral<TRes> {
  factory CopyWith$Variables$Mutation$AddConversationGeneral(
    Variables$Mutation$AddConversationGeneral instance,
    TRes Function(Variables$Mutation$AddConversationGeneral) then,
  ) = _CopyWithImpl$Variables$Mutation$AddConversationGeneral;

  factory CopyWith$Variables$Mutation$AddConversationGeneral.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddConversationGeneral;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Mutation$AddConversationGeneral<TRes>
    implements CopyWith$Variables$Mutation$AddConversationGeneral<TRes> {
  _CopyWithImpl$Variables$Mutation$AddConversationGeneral(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddConversationGeneral _instance;

  final TRes Function(Variables$Mutation$AddConversationGeneral) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) => _then(
    Variables$Mutation$AddConversationGeneral._({
      ..._instance._$data,
      if (userId != _undefined && userId != null) 'userId': (userId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddConversationGeneral<TRes>
    implements CopyWith$Variables$Mutation$AddConversationGeneral<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddConversationGeneral(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Mutation$AddConversationGeneral {
  Mutation$AddConversationGeneral({
    required this.addConversationGeneral,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$AddConversationGeneral.fromJson(Map<String, dynamic> json) {
    final l$addConversationGeneral = json['addConversationGeneral'];
    final l$$__typename = json['__typename'];
    return Mutation$AddConversationGeneral(
      addConversationGeneral: (l$addConversationGeneral as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String addConversationGeneral;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addConversationGeneral = addConversationGeneral;
    _resultData['addConversationGeneral'] = l$addConversationGeneral;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addConversationGeneral = addConversationGeneral;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addConversationGeneral, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddConversationGeneral ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addConversationGeneral = addConversationGeneral;
    final lOther$addConversationGeneral = other.addConversationGeneral;
    if (l$addConversationGeneral != lOther$addConversationGeneral) {
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

extension UtilityExtension$Mutation$AddConversationGeneral
    on Mutation$AddConversationGeneral {
  CopyWith$Mutation$AddConversationGeneral<Mutation$AddConversationGeneral>
  get copyWith => CopyWith$Mutation$AddConversationGeneral(this, (i) => i);
}

abstract class CopyWith$Mutation$AddConversationGeneral<TRes> {
  factory CopyWith$Mutation$AddConversationGeneral(
    Mutation$AddConversationGeneral instance,
    TRes Function(Mutation$AddConversationGeneral) then,
  ) = _CopyWithImpl$Mutation$AddConversationGeneral;

  factory CopyWith$Mutation$AddConversationGeneral.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddConversationGeneral;

  TRes call({String? addConversationGeneral, String? $__typename});
}

class _CopyWithImpl$Mutation$AddConversationGeneral<TRes>
    implements CopyWith$Mutation$AddConversationGeneral<TRes> {
  _CopyWithImpl$Mutation$AddConversationGeneral(this._instance, this._then);

  final Mutation$AddConversationGeneral _instance;

  final TRes Function(Mutation$AddConversationGeneral) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addConversationGeneral = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddConversationGeneral(
      addConversationGeneral:
          addConversationGeneral == _undefined || addConversationGeneral == null
          ? _instance.addConversationGeneral
          : (addConversationGeneral as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddConversationGeneral<TRes>
    implements CopyWith$Mutation$AddConversationGeneral<TRes> {
  _CopyWithStubImpl$Mutation$AddConversationGeneral(this._res);

  TRes _res;

  call({String? addConversationGeneral, String? $__typename}) => _res;
}

const documentNodeMutationAddConversationGeneral = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddConversationGeneral'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'addConversationGeneral'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'otherUserId'),
                value: VariableNode(name: NameNode(value: 'userId')),
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
Mutation$AddConversationGeneral _parserFn$Mutation$AddConversationGeneral(
  Map<String, dynamic> data,
) => Mutation$AddConversationGeneral.fromJson(data);
typedef OnMutationCompleted$Mutation$AddConversationGeneral =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$AddConversationGeneral?,
    );

class Options$Mutation$AddConversationGeneral
    extends graphql.MutationOptions<Mutation$AddConversationGeneral> {
  Options$Mutation$AddConversationGeneral({
    String? operationName,
    required Variables$Mutation$AddConversationGeneral variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationGeneral? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddConversationGeneral? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddConversationGeneral>? update,
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
                 data == null
                     ? null
                     : _parserFn$Mutation$AddConversationGeneral(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAddConversationGeneral,
         parserFn: _parserFn$Mutation$AddConversationGeneral,
       );

  final OnMutationCompleted$Mutation$AddConversationGeneral?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$AddConversationGeneral
    extends graphql.WatchQueryOptions<Mutation$AddConversationGeneral> {
  WatchOptions$Mutation$AddConversationGeneral({
    String? operationName,
    required Variables$Mutation$AddConversationGeneral variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationGeneral? typedOptimisticResult,
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
         document: documentNodeMutationAddConversationGeneral,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$AddConversationGeneral,
       );
}

extension ClientExtension$Mutation$AddConversationGeneral
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddConversationGeneral>>
  mutate$AddConversationGeneral(
    Options$Mutation$AddConversationGeneral options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$AddConversationGeneral>
  watchMutation$AddConversationGeneral(
    WatchOptions$Mutation$AddConversationGeneral options,
  ) => this.watchMutation(options);
}

class Mutation$AddConversationGeneral$HookResult {
  Mutation$AddConversationGeneral$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$AddConversationGeneral runMutation;

  final graphql.QueryResult<Mutation$AddConversationGeneral> result;
}

Mutation$AddConversationGeneral$HookResult useMutation$AddConversationGeneral([
  WidgetOptions$Mutation$AddConversationGeneral? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$AddConversationGeneral(),
  );
  return Mutation$AddConversationGeneral$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddConversationGeneral>
useWatchMutation$AddConversationGeneral(
  WatchOptions$Mutation$AddConversationGeneral options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddConversationGeneral
    extends graphql.MutationOptions<Mutation$AddConversationGeneral> {
  WidgetOptions$Mutation$AddConversationGeneral({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationGeneral? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddConversationGeneral? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddConversationGeneral>? update,
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
                     : _parserFn$Mutation$AddConversationGeneral(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAddConversationGeneral,
         parserFn: _parserFn$Mutation$AddConversationGeneral,
       );

  final OnMutationCompleted$Mutation$AddConversationGeneral?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$AddConversationGeneral =
    graphql.MultiSourceResult<Mutation$AddConversationGeneral> Function(
      Variables$Mutation$AddConversationGeneral, {
      Object? optimisticResult,
      Mutation$AddConversationGeneral? typedOptimisticResult,
    });
typedef Builder$Mutation$AddConversationGeneral =
    widgets.Widget Function(
      RunMutation$Mutation$AddConversationGeneral,
      graphql.QueryResult<Mutation$AddConversationGeneral>?,
    );

class Mutation$AddConversationGeneral$Widget
    extends graphql_flutter.Mutation<Mutation$AddConversationGeneral> {
  Mutation$AddConversationGeneral$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddConversationGeneral? options,
    required Builder$Mutation$AddConversationGeneral builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$AddConversationGeneral(),
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

class Variables$Mutation$AddConversationFromRequestHub {
  factory Variables$Mutation$AddConversationFromRequestHub({
    String? otherUserId,
    String? requestId,
  }) => Variables$Mutation$AddConversationFromRequestHub._({
    if (otherUserId != null) r'otherUserId': otherUserId,
    if (requestId != null) r'requestId': requestId,
  });

  Variables$Mutation$AddConversationFromRequestHub._(this._$data);

  factory Variables$Mutation$AddConversationFromRequestHub.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('otherUserId')) {
      final l$otherUserId = data['otherUserId'];
      result$data['otherUserId'] = (l$otherUserId as String?);
    }
    if (data.containsKey('requestId')) {
      final l$requestId = data['requestId'];
      result$data['requestId'] = (l$requestId as String?);
    }
    return Variables$Mutation$AddConversationFromRequestHub._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get otherUserId => (_$data['otherUserId'] as String?);

  String? get requestId => (_$data['requestId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('otherUserId')) {
      final l$otherUserId = otherUserId;
      result$data['otherUserId'] = l$otherUserId;
    }
    if (_$data.containsKey('requestId')) {
      final l$requestId = requestId;
      result$data['requestId'] = l$requestId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$AddConversationFromRequestHub<
    Variables$Mutation$AddConversationFromRequestHub
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddConversationFromRequestHub(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddConversationFromRequestHub ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$otherUserId = otherUserId;
    final lOther$otherUserId = other.otherUserId;
    if (_$data.containsKey('otherUserId') !=
        other._$data.containsKey('otherUserId')) {
      return false;
    }
    if (l$otherUserId != lOther$otherUserId) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (_$data.containsKey('requestId') !=
        other._$data.containsKey('requestId')) {
      return false;
    }
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$otherUserId = otherUserId;
    final l$requestId = requestId;
    return Object.hashAll([
      _$data.containsKey('otherUserId') ? l$otherUserId : const {},
      _$data.containsKey('requestId') ? l$requestId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddConversationFromRequestHub<TRes> {
  factory CopyWith$Variables$Mutation$AddConversationFromRequestHub(
    Variables$Mutation$AddConversationFromRequestHub instance,
    TRes Function(Variables$Mutation$AddConversationFromRequestHub) then,
  ) = _CopyWithImpl$Variables$Mutation$AddConversationFromRequestHub;

  factory CopyWith$Variables$Mutation$AddConversationFromRequestHub.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$AddConversationFromRequestHub;

  TRes call({String? otherUserId, String? requestId});
}

class _CopyWithImpl$Variables$Mutation$AddConversationFromRequestHub<TRes>
    implements CopyWith$Variables$Mutation$AddConversationFromRequestHub<TRes> {
  _CopyWithImpl$Variables$Mutation$AddConversationFromRequestHub(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddConversationFromRequestHub _instance;

  final TRes Function(Variables$Mutation$AddConversationFromRequestHub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? otherUserId = _undefined,
    Object? requestId = _undefined,
  }) => _then(
    Variables$Mutation$AddConversationFromRequestHub._({
      ..._instance._$data,
      if (otherUserId != _undefined) 'otherUserId': (otherUserId as String?),
      if (requestId != _undefined) 'requestId': (requestId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddConversationFromRequestHub<TRes>
    implements CopyWith$Variables$Mutation$AddConversationFromRequestHub<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddConversationFromRequestHub(this._res);

  TRes _res;

  call({String? otherUserId, String? requestId}) => _res;
}

class Mutation$AddConversationFromRequestHub {
  Mutation$AddConversationFromRequestHub({
    required this.addConversationFromRequestHub,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$AddConversationFromRequestHub.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addConversationFromRequestHub =
        json['addConversationFromRequestHub'];
    final l$$__typename = json['__typename'];
    return Mutation$AddConversationFromRequestHub(
      addConversationFromRequestHub:
          (l$addConversationFromRequestHub as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String addConversationFromRequestHub;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addConversationFromRequestHub = addConversationFromRequestHub;
    _resultData['addConversationFromRequestHub'] =
        l$addConversationFromRequestHub;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addConversationFromRequestHub = addConversationFromRequestHub;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addConversationFromRequestHub, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddConversationFromRequestHub ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addConversationFromRequestHub = addConversationFromRequestHub;
    final lOther$addConversationFromRequestHub =
        other.addConversationFromRequestHub;
    if (l$addConversationFromRequestHub !=
        lOther$addConversationFromRequestHub) {
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

extension UtilityExtension$Mutation$AddConversationFromRequestHub
    on Mutation$AddConversationFromRequestHub {
  CopyWith$Mutation$AddConversationFromRequestHub<
    Mutation$AddConversationFromRequestHub
  >
  get copyWith =>
      CopyWith$Mutation$AddConversationFromRequestHub(this, (i) => i);
}

abstract class CopyWith$Mutation$AddConversationFromRequestHub<TRes> {
  factory CopyWith$Mutation$AddConversationFromRequestHub(
    Mutation$AddConversationFromRequestHub instance,
    TRes Function(Mutation$AddConversationFromRequestHub) then,
  ) = _CopyWithImpl$Mutation$AddConversationFromRequestHub;

  factory CopyWith$Mutation$AddConversationFromRequestHub.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddConversationFromRequestHub;

  TRes call({String? addConversationFromRequestHub, String? $__typename});
}

class _CopyWithImpl$Mutation$AddConversationFromRequestHub<TRes>
    implements CopyWith$Mutation$AddConversationFromRequestHub<TRes> {
  _CopyWithImpl$Mutation$AddConversationFromRequestHub(
    this._instance,
    this._then,
  );

  final Mutation$AddConversationFromRequestHub _instance;

  final TRes Function(Mutation$AddConversationFromRequestHub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addConversationFromRequestHub = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddConversationFromRequestHub(
      addConversationFromRequestHub:
          addConversationFromRequestHub == _undefined ||
              addConversationFromRequestHub == null
          ? _instance.addConversationFromRequestHub
          : (addConversationFromRequestHub as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddConversationFromRequestHub<TRes>
    implements CopyWith$Mutation$AddConversationFromRequestHub<TRes> {
  _CopyWithStubImpl$Mutation$AddConversationFromRequestHub(this._res);

  TRes _res;

  call({String? addConversationFromRequestHub, String? $__typename}) => _res;
}

const documentNodeMutationAddConversationFromRequestHub = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddConversationFromRequestHub'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'otherUserId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'requestId')),
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
            name: NameNode(value: 'addConversationFromRequestHub'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'otherUserId'),
                      value: VariableNode(name: NameNode(value: 'otherUserId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'requestId'),
                      value: VariableNode(name: NameNode(value: 'requestId')),
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
Mutation$AddConversationFromRequestHub
_parserFn$Mutation$AddConversationFromRequestHub(Map<String, dynamic> data) =>
    Mutation$AddConversationFromRequestHub.fromJson(data);
typedef OnMutationCompleted$Mutation$AddConversationFromRequestHub =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$AddConversationFromRequestHub?,
    );

class Options$Mutation$AddConversationFromRequestHub
    extends graphql.MutationOptions<Mutation$AddConversationFromRequestHub> {
  Options$Mutation$AddConversationFromRequestHub({
    String? operationName,
    Variables$Mutation$AddConversationFromRequestHub? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationFromRequestHub? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddConversationFromRequestHub? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddConversationFromRequestHub>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables?.toJson() ?? {},
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
                     : _parserFn$Mutation$AddConversationFromRequestHub(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAddConversationFromRequestHub,
         parserFn: _parserFn$Mutation$AddConversationFromRequestHub,
       );

  final OnMutationCompleted$Mutation$AddConversationFromRequestHub?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$AddConversationFromRequestHub
    extends graphql.WatchQueryOptions<Mutation$AddConversationFromRequestHub> {
  WatchOptions$Mutation$AddConversationFromRequestHub({
    String? operationName,
    Variables$Mutation$AddConversationFromRequestHub? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationFromRequestHub? typedOptimisticResult,
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
         document: documentNodeMutationAddConversationFromRequestHub,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$AddConversationFromRequestHub,
       );
}

extension ClientExtension$Mutation$AddConversationFromRequestHub
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddConversationFromRequestHub>>
  mutate$AddConversationFromRequestHub([
    Options$Mutation$AddConversationFromRequestHub? options,
  ]) async => await this.mutate(
    options ?? Options$Mutation$AddConversationFromRequestHub(),
  );

  graphql.ObservableQuery<Mutation$AddConversationFromRequestHub>
  watchMutation$AddConversationFromRequestHub([
    WatchOptions$Mutation$AddConversationFromRequestHub? options,
  ]) => this.watchMutation(
    options ?? WatchOptions$Mutation$AddConversationFromRequestHub(),
  );
}

class Mutation$AddConversationFromRequestHub$HookResult {
  Mutation$AddConversationFromRequestHub$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddConversationFromRequestHub runMutation;

  final graphql.QueryResult<Mutation$AddConversationFromRequestHub> result;
}

Mutation$AddConversationFromRequestHub$HookResult
useMutation$AddConversationFromRequestHub([
  WidgetOptions$Mutation$AddConversationFromRequestHub? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$AddConversationFromRequestHub(),
  );
  return Mutation$AddConversationFromRequestHub$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables?.toJson() ?? const {},
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddConversationFromRequestHub>
useWatchMutation$AddConversationFromRequestHub([
  WatchOptions$Mutation$AddConversationFromRequestHub? options,
]) => graphql_flutter.useWatchMutation(
  options ?? WatchOptions$Mutation$AddConversationFromRequestHub(),
);

class WidgetOptions$Mutation$AddConversationFromRequestHub
    extends graphql.MutationOptions<Mutation$AddConversationFromRequestHub> {
  WidgetOptions$Mutation$AddConversationFromRequestHub({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddConversationFromRequestHub? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddConversationFromRequestHub? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddConversationFromRequestHub>? update,
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
                     : _parserFn$Mutation$AddConversationFromRequestHub(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAddConversationFromRequestHub,
         parserFn: _parserFn$Mutation$AddConversationFromRequestHub,
       );

  final OnMutationCompleted$Mutation$AddConversationFromRequestHub?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$AddConversationFromRequestHub =
    graphql.MultiSourceResult<Mutation$AddConversationFromRequestHub> Function({
      Variables$Mutation$AddConversationFromRequestHub? variables,
      Object? optimisticResult,
      Mutation$AddConversationFromRequestHub? typedOptimisticResult,
    });
typedef Builder$Mutation$AddConversationFromRequestHub =
    widgets.Widget Function(
      RunMutation$Mutation$AddConversationFromRequestHub,
      graphql.QueryResult<Mutation$AddConversationFromRequestHub>?,
    );

class Mutation$AddConversationFromRequestHub$Widget
    extends graphql_flutter.Mutation<Mutation$AddConversationFromRequestHub> {
  Mutation$AddConversationFromRequestHub$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddConversationFromRequestHub? options,
    required Builder$Mutation$AddConversationFromRequestHub builder,
  }) : super(
         key: key,
         options:
             options ?? WidgetOptions$Mutation$AddConversationFromRequestHub(),
         builder: (run, result) => builder(
           ({variables, optimisticResult, typedOptimisticResult}) => run(
             variables?.toJson() ?? const {},
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}
