import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CreatePublicRequest {
  factory Variables$Mutation$CreatePublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) => Variables$Mutation$CreatePublicRequest._({
    r'title': title,
    r'summary': summary,
    r'detailDescription': detailDescription,
    r'duration': duration,
    r'min': min,
    r'max': max,
  });

  Variables$Mutation$CreatePublicRequest._(this._$data);

  factory Variables$Mutation$CreatePublicRequest.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$summary = data['summary'];
    result$data['summary'] = (l$summary as String);
    final l$detailDescription = data['detailDescription'];
    result$data['detailDescription'] = (l$detailDescription as String);
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    final l$min = data['min'];
    result$data['min'] = (l$min as num).toDouble();
    final l$max = data['max'];
    result$data['max'] = (l$max as num).toDouble();
    return Variables$Mutation$CreatePublicRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String get summary => (_$data['summary'] as String);

  String get detailDescription => (_$data['detailDescription'] as String);

  int get duration => (_$data['duration'] as int);

  double get min => (_$data['min'] as double);

  double get max => (_$data['max'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    final l$summary = summary;
    result$data['summary'] = l$summary;
    final l$detailDescription = detailDescription;
    result$data['detailDescription'] = l$detailDescription;
    final l$duration = duration;
    result$data['duration'] = l$duration;
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePublicRequest<
    Variables$Mutation$CreatePublicRequest
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreatePublicRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePublicRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$detailDescription = detailDescription;
    final lOther$detailDescription = other.detailDescription;
    if (l$detailDescription != lOther$detailDescription) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$summary = summary;
    final l$detailDescription = detailDescription;
    final l$duration = duration;
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$title,
      l$summary,
      l$detailDescription,
      l$duration,
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePublicRequest<TRes> {
  factory CopyWith$Variables$Mutation$CreatePublicRequest(
    Variables$Mutation$CreatePublicRequest instance,
    TRes Function(Variables$Mutation$CreatePublicRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePublicRequest;

  factory CopyWith$Variables$Mutation$CreatePublicRequest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePublicRequest;

  TRes call({
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
  });
}

class _CopyWithImpl$Variables$Mutation$CreatePublicRequest<TRes>
    implements CopyWith$Variables$Mutation$CreatePublicRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePublicRequest(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePublicRequest _instance;

  final TRes Function(Variables$Mutation$CreatePublicRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? summary = _undefined,
    Object? detailDescription = _undefined,
    Object? duration = _undefined,
    Object? min = _undefined,
    Object? max = _undefined,
  }) => _then(
    Variables$Mutation$CreatePublicRequest._({
      ..._instance._$data,
      if (title != _undefined && title != null) 'title': (title as String),
      if (summary != _undefined && summary != null)
        'summary': (summary as String),
      if (detailDescription != _undefined && detailDescription != null)
        'detailDescription': (detailDescription as String),
      if (duration != _undefined && duration != null)
        'duration': (duration as int),
      if (min != _undefined && min != null) 'min': (min as double),
      if (max != _undefined && max != null) 'max': (max as double),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreatePublicRequest<TRes>
    implements CopyWith$Variables$Mutation$CreatePublicRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePublicRequest(this._res);

  TRes _res;

  call({
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
  }) => _res;
}

class Mutation$CreatePublicRequest {
  Mutation$CreatePublicRequest({
    required this.createPublicRequest,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$CreatePublicRequest.fromJson(Map<String, dynamic> json) {
    final l$createPublicRequest = json['createPublicRequest'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePublicRequest(
      createPublicRequest: (l$createPublicRequest as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool createPublicRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPublicRequest = createPublicRequest;
    _resultData['createPublicRequest'] = l$createPublicRequest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPublicRequest = createPublicRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPublicRequest, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePublicRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPublicRequest = createPublicRequest;
    final lOther$createPublicRequest = other.createPublicRequest;
    if (l$createPublicRequest != lOther$createPublicRequest) {
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

extension UtilityExtension$Mutation$CreatePublicRequest
    on Mutation$CreatePublicRequest {
  CopyWith$Mutation$CreatePublicRequest<Mutation$CreatePublicRequest>
  get copyWith => CopyWith$Mutation$CreatePublicRequest(this, (i) => i);
}

abstract class CopyWith$Mutation$CreatePublicRequest<TRes> {
  factory CopyWith$Mutation$CreatePublicRequest(
    Mutation$CreatePublicRequest instance,
    TRes Function(Mutation$CreatePublicRequest) then,
  ) = _CopyWithImpl$Mutation$CreatePublicRequest;

  factory CopyWith$Mutation$CreatePublicRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePublicRequest;

  TRes call({bool? createPublicRequest, String? $__typename});
}

class _CopyWithImpl$Mutation$CreatePublicRequest<TRes>
    implements CopyWith$Mutation$CreatePublicRequest<TRes> {
  _CopyWithImpl$Mutation$CreatePublicRequest(this._instance, this._then);

  final Mutation$CreatePublicRequest _instance;

  final TRes Function(Mutation$CreatePublicRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPublicRequest = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePublicRequest(
      createPublicRequest:
          createPublicRequest == _undefined || createPublicRequest == null
          ? _instance.createPublicRequest
          : (createPublicRequest as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreatePublicRequest<TRes>
    implements CopyWith$Mutation$CreatePublicRequest<TRes> {
  _CopyWithStubImpl$Mutation$CreatePublicRequest(this._res);

  TRes _res;

  call({bool? createPublicRequest, String? $__typename}) => _res;
}

const documentNodeMutationCreatePublicRequest = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreatePublicRequest'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'title')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'summary')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailDescription')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'duration')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'min')),
          type: NamedTypeNode(
            name: NameNode(value: 'Decimal'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'max')),
          type: NamedTypeNode(
            name: NameNode(value: 'Decimal'),
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
            name: NameNode(value: 'createPublicRequest'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'title'),
                      value: VariableNode(name: NameNode(value: 'title')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'summary'),
                      value: VariableNode(name: NameNode(value: 'summary')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'detailDescription'),
                      value: VariableNode(
                        name: NameNode(value: 'detailDescription'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'duration'),
                      value: VariableNode(name: NameNode(value: 'duration')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'budget'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'min'),
                            value: VariableNode(name: NameNode(value: 'min')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'max'),
                            value: VariableNode(name: NameNode(value: 'max')),
                          ),
                        ],
                      ),
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
Mutation$CreatePublicRequest _parserFn$Mutation$CreatePublicRequest(
  Map<String, dynamic> data,
) => Mutation$CreatePublicRequest.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePublicRequest =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$CreatePublicRequest?,
    );

class Options$Mutation$CreatePublicRequest
    extends graphql.MutationOptions<Mutation$CreatePublicRequest> {
  Options$Mutation$CreatePublicRequest({
    String? operationName,
    required Variables$Mutation$CreatePublicRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePublicRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePublicRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePublicRequest>? update,
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
                     : _parserFn$Mutation$CreatePublicRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreatePublicRequest,
         parserFn: _parserFn$Mutation$CreatePublicRequest,
       );

  final OnMutationCompleted$Mutation$CreatePublicRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CreatePublicRequest
    extends graphql.WatchQueryOptions<Mutation$CreatePublicRequest> {
  WatchOptions$Mutation$CreatePublicRequest({
    String? operationName,
    required Variables$Mutation$CreatePublicRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePublicRequest? typedOptimisticResult,
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
         document: documentNodeMutationCreatePublicRequest,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CreatePublicRequest,
       );
}

extension ClientExtension$Mutation$CreatePublicRequest
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePublicRequest>>
  mutate$CreatePublicRequest(
    Options$Mutation$CreatePublicRequest options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreatePublicRequest>
  watchMutation$CreatePublicRequest(
    WatchOptions$Mutation$CreatePublicRequest options,
  ) => this.watchMutation(options);
}

class Mutation$CreatePublicRequest$HookResult {
  Mutation$CreatePublicRequest$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$CreatePublicRequest runMutation;

  final graphql.QueryResult<Mutation$CreatePublicRequest> result;
}

Mutation$CreatePublicRequest$HookResult useMutation$CreatePublicRequest([
  WidgetOptions$Mutation$CreatePublicRequest? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$CreatePublicRequest(),
  );
  return Mutation$CreatePublicRequest$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePublicRequest>
useWatchMutation$CreatePublicRequest(
  WatchOptions$Mutation$CreatePublicRequest options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePublicRequest
    extends graphql.MutationOptions<Mutation$CreatePublicRequest> {
  WidgetOptions$Mutation$CreatePublicRequest({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePublicRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePublicRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePublicRequest>? update,
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
                     : _parserFn$Mutation$CreatePublicRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreatePublicRequest,
         parserFn: _parserFn$Mutation$CreatePublicRequest,
       );

  final OnMutationCompleted$Mutation$CreatePublicRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$CreatePublicRequest =
    graphql.MultiSourceResult<Mutation$CreatePublicRequest> Function(
      Variables$Mutation$CreatePublicRequest, {
      Object? optimisticResult,
      Mutation$CreatePublicRequest? typedOptimisticResult,
    });
typedef Builder$Mutation$CreatePublicRequest =
    widgets.Widget Function(
      RunMutation$Mutation$CreatePublicRequest,
      graphql.QueryResult<Mutation$CreatePublicRequest>?,
    );

class Mutation$CreatePublicRequest$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePublicRequest> {
  Mutation$CreatePublicRequest$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePublicRequest? options,
    required Builder$Mutation$CreatePublicRequest builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$CreatePublicRequest(),
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
