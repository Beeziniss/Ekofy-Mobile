import '../../generated/schema.graphql.dart';
import 'dart:async';
import 'dart:core';
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

class Variables$Mutation$UpdatePublicRequest {
  factory Variables$Mutation$UpdatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    required double min,
    required double max,
    Enum$RequestStatus? status,
  }) => Variables$Mutation$UpdatePublicRequest._({
    r'id': id,
    if (title != null) r'title': title,
    if (summary != null) r'summary': summary,
    if (detailDescription != null) r'detailDescription': detailDescription,
    if (duration != null) r'duration': duration,
    r'min': min,
    r'max': max,
    if (status != null) r'status': status,
  });

  Variables$Mutation$UpdatePublicRequest._(this._$data);

  factory Variables$Mutation$UpdatePublicRequest.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('summary')) {
      final l$summary = data['summary'];
      result$data['summary'] = (l$summary as String?);
    }
    if (data.containsKey('detailDescription')) {
      final l$detailDescription = data['detailDescription'];
      result$data['detailDescription'] = (l$detailDescription as String?);
    }
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = (l$duration as int?);
    }
    final l$min = data['min'];
    result$data['min'] = (l$min as num).toDouble();
    final l$max = data['max'];
    result$data['max'] = (l$max as num).toDouble();
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$RequestStatus((l$status as String));
    }
    return Variables$Mutation$UpdatePublicRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get title => (_$data['title'] as String?);

  String? get summary => (_$data['summary'] as String?);

  String? get detailDescription => (_$data['detailDescription'] as String?);

  int? get duration => (_$data['duration'] as int?);

  double get min => (_$data['min'] as double);

  double get max => (_$data['max'] as double);

  Enum$RequestStatus? get status => (_$data['status'] as Enum$RequestStatus?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('summary')) {
      final l$summary = summary;
      result$data['summary'] = l$summary;
    }
    if (_$data.containsKey('detailDescription')) {
      final l$detailDescription = detailDescription;
      result$data['detailDescription'] = l$detailDescription;
    }
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] = l$duration;
    }
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson$Enum$RequestStatus(l$status);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePublicRequest<
    Variables$Mutation$UpdatePublicRequest
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdatePublicRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePublicRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (_$data.containsKey('summary') != other._$data.containsKey('summary')) {
      return false;
    }
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$detailDescription = detailDescription;
    final lOther$detailDescription = other.detailDescription;
    if (_$data.containsKey('detailDescription') !=
        other._$data.containsKey('detailDescription')) {
      return false;
    }
    if (l$detailDescription != lOther$detailDescription) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$summary = summary;
    final l$detailDescription = detailDescription;
    final l$duration = duration;
    final l$min = min;
    final l$max = max;
    final l$status = status;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('summary') ? l$summary : const {},
      _$data.containsKey('detailDescription') ? l$detailDescription : const {},
      _$data.containsKey('duration') ? l$duration : const {},
      l$min,
      l$max,
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePublicRequest<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePublicRequest(
    Variables$Mutation$UpdatePublicRequest instance,
    TRes Function(Variables$Mutation$UpdatePublicRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePublicRequest;

  factory CopyWith$Variables$Mutation$UpdatePublicRequest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePublicRequest;

  TRes call({
    String? id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
    Enum$RequestStatus? status,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdatePublicRequest<TRes>
    implements CopyWith$Variables$Mutation$UpdatePublicRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePublicRequest(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePublicRequest _instance;

  final TRes Function(Variables$Mutation$UpdatePublicRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? summary = _undefined,
    Object? detailDescription = _undefined,
    Object? duration = _undefined,
    Object? min = _undefined,
    Object? max = _undefined,
    Object? status = _undefined,
  }) => _then(
    Variables$Mutation$UpdatePublicRequest._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (title != _undefined) 'title': (title as String?),
      if (summary != _undefined) 'summary': (summary as String?),
      if (detailDescription != _undefined)
        'detailDescription': (detailDescription as String?),
      if (duration != _undefined) 'duration': (duration as int?),
      if (min != _undefined && min != null) 'min': (min as double),
      if (max != _undefined && max != null) 'max': (max as double),
      if (status != _undefined) 'status': (status as Enum$RequestStatus?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePublicRequest<TRes>
    implements CopyWith$Variables$Mutation$UpdatePublicRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePublicRequest(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
    Enum$RequestStatus? status,
  }) => _res;
}

class Mutation$UpdatePublicRequest {
  Mutation$UpdatePublicRequest({
    required this.updatePublicRequest,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$UpdatePublicRequest.fromJson(Map<String, dynamic> json) {
    final l$updatePublicRequest = json['updatePublicRequest'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePublicRequest(
      updatePublicRequest: (l$updatePublicRequest as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updatePublicRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePublicRequest = updatePublicRequest;
    _resultData['updatePublicRequest'] = l$updatePublicRequest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePublicRequest = updatePublicRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePublicRequest, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePublicRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePublicRequest = updatePublicRequest;
    final lOther$updatePublicRequest = other.updatePublicRequest;
    if (l$updatePublicRequest != lOther$updatePublicRequest) {
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

extension UtilityExtension$Mutation$UpdatePublicRequest
    on Mutation$UpdatePublicRequest {
  CopyWith$Mutation$UpdatePublicRequest<Mutation$UpdatePublicRequest>
  get copyWith => CopyWith$Mutation$UpdatePublicRequest(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdatePublicRequest<TRes> {
  factory CopyWith$Mutation$UpdatePublicRequest(
    Mutation$UpdatePublicRequest instance,
    TRes Function(Mutation$UpdatePublicRequest) then,
  ) = _CopyWithImpl$Mutation$UpdatePublicRequest;

  factory CopyWith$Mutation$UpdatePublicRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePublicRequest;

  TRes call({bool? updatePublicRequest, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePublicRequest<TRes>
    implements CopyWith$Mutation$UpdatePublicRequest<TRes> {
  _CopyWithImpl$Mutation$UpdatePublicRequest(this._instance, this._then);

  final Mutation$UpdatePublicRequest _instance;

  final TRes Function(Mutation$UpdatePublicRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePublicRequest = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePublicRequest(
      updatePublicRequest:
          updatePublicRequest == _undefined || updatePublicRequest == null
          ? _instance.updatePublicRequest
          : (updatePublicRequest as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePublicRequest<TRes>
    implements CopyWith$Mutation$UpdatePublicRequest<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePublicRequest(this._res);

  TRes _res;

  call({bool? updatePublicRequest, String? $__typename}) => _res;
}

const documentNodeMutationUpdatePublicRequest = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdatePublicRequest'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'title')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'summary')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detailDescription')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'duration')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'status')),
          type: NamedTypeNode(
            name: NameNode(value: 'RequestStatus'),
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
            name: NameNode(value: 'updatePublicRequest'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
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
                    ObjectFieldNode(
                      name: NameNode(value: 'status'),
                      value: VariableNode(name: NameNode(value: 'status')),
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
Mutation$UpdatePublicRequest _parserFn$Mutation$UpdatePublicRequest(
  Map<String, dynamic> data,
) => Mutation$UpdatePublicRequest.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePublicRequest =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$UpdatePublicRequest?,
    );

class Options$Mutation$UpdatePublicRequest
    extends graphql.MutationOptions<Mutation$UpdatePublicRequest> {
  Options$Mutation$UpdatePublicRequest({
    String? operationName,
    required Variables$Mutation$UpdatePublicRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePublicRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePublicRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePublicRequest>? update,
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
                     : _parserFn$Mutation$UpdatePublicRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdatePublicRequest,
         parserFn: _parserFn$Mutation$UpdatePublicRequest,
       );

  final OnMutationCompleted$Mutation$UpdatePublicRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UpdatePublicRequest
    extends graphql.WatchQueryOptions<Mutation$UpdatePublicRequest> {
  WatchOptions$Mutation$UpdatePublicRequest({
    String? operationName,
    required Variables$Mutation$UpdatePublicRequest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePublicRequest? typedOptimisticResult,
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
         document: documentNodeMutationUpdatePublicRequest,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UpdatePublicRequest,
       );
}

extension ClientExtension$Mutation$UpdatePublicRequest
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePublicRequest>>
  mutate$UpdatePublicRequest(
    Options$Mutation$UpdatePublicRequest options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$UpdatePublicRequest>
  watchMutation$UpdatePublicRequest(
    WatchOptions$Mutation$UpdatePublicRequest options,
  ) => this.watchMutation(options);
}

class Mutation$UpdatePublicRequest$HookResult {
  Mutation$UpdatePublicRequest$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdatePublicRequest runMutation;

  final graphql.QueryResult<Mutation$UpdatePublicRequest> result;
}

Mutation$UpdatePublicRequest$HookResult useMutation$UpdatePublicRequest([
  WidgetOptions$Mutation$UpdatePublicRequest? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$UpdatePublicRequest(),
  );
  return Mutation$UpdatePublicRequest$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdatePublicRequest>
useWatchMutation$UpdatePublicRequest(
  WatchOptions$Mutation$UpdatePublicRequest options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdatePublicRequest
    extends graphql.MutationOptions<Mutation$UpdatePublicRequest> {
  WidgetOptions$Mutation$UpdatePublicRequest({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePublicRequest? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePublicRequest? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePublicRequest>? update,
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
                     : _parserFn$Mutation$UpdatePublicRequest(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdatePublicRequest,
         parserFn: _parserFn$Mutation$UpdatePublicRequest,
       );

  final OnMutationCompleted$Mutation$UpdatePublicRequest? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$UpdatePublicRequest =
    graphql.MultiSourceResult<Mutation$UpdatePublicRequest> Function(
      Variables$Mutation$UpdatePublicRequest, {
      Object? optimisticResult,
      Mutation$UpdatePublicRequest? typedOptimisticResult,
    });
typedef Builder$Mutation$UpdatePublicRequest =
    widgets.Widget Function(
      RunMutation$Mutation$UpdatePublicRequest,
      graphql.QueryResult<Mutation$UpdatePublicRequest>?,
    );

class Mutation$UpdatePublicRequest$Widget
    extends graphql_flutter.Mutation<Mutation$UpdatePublicRequest> {
  Mutation$UpdatePublicRequest$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdatePublicRequest? options,
    required Builder$Mutation$UpdatePublicRequest builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$UpdatePublicRequest(),
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

class Variables$Mutation$SendRequest {
  factory Variables$Mutation$SendRequest({
    required String publicRequestId,
    required String artistId,
    String? requirements,
    required String packageId,
    required bool isDirectRequest,
  }) => Variables$Mutation$SendRequest._({
    r'publicRequestId': publicRequestId,
    r'artistId': artistId,
    if (requirements != null) r'requirements': requirements,
    r'packageId': packageId,
    r'isDirectRequest': isDirectRequest,
  });

  Variables$Mutation$SendRequest._(this._$data);

  factory Variables$Mutation$SendRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$publicRequestId = data['publicRequestId'];
    result$data['publicRequestId'] = (l$publicRequestId as String);
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

  String get publicRequestId => (_$data['publicRequestId'] as String);

  String get artistId => (_$data['artistId'] as String);

  String? get requirements => (_$data['requirements'] as String?);

  String get packageId => (_$data['packageId'] as String);

  bool get isDirectRequest => (_$data['isDirectRequest'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$publicRequestId = publicRequestId;
    result$data['publicRequestId'] = l$publicRequestId;
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
      l$publicRequestId,
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
      if (publicRequestId != _undefined && publicRequestId != null)
        'publicRequestId': (publicRequestId as String),
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
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
                      name: NameNode(value: 'publicRequestId'),
                      value: VariableNode(
                        name: NameNode(value: 'publicRequestId'),
                      ),
                    ),
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

class Variables$Mutation$ChangeRequestStatus {
  factory Variables$Mutation$ChangeRequestStatus({
    required String requestId,
    required Enum$RequestStatus status,
  }) => Variables$Mutation$ChangeRequestStatus._({
    r'requestId': requestId,
    r'status': status,
  });

  Variables$Mutation$ChangeRequestStatus._(this._$data);

  factory Variables$Mutation$ChangeRequestStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$RequestStatus((l$status as String));
    return Variables$Mutation$ChangeRequestStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);

  Enum$RequestStatus get status => (_$data['status'] as Enum$RequestStatus);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$status = status;
    result$data['status'] = toJson$Enum$RequestStatus(l$status);
    return result$data;
  }

  CopyWith$Variables$Mutation$ChangeRequestStatus<
    Variables$Mutation$ChangeRequestStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ChangeRequestStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ChangeRequestStatus ||
        runtimeType != other.runtimeType) {
      return false;
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
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    final l$status = status;
    return Object.hashAll([l$requestId, l$status]);
  }
}

abstract class CopyWith$Variables$Mutation$ChangeRequestStatus<TRes> {
  factory CopyWith$Variables$Mutation$ChangeRequestStatus(
    Variables$Mutation$ChangeRequestStatus instance,
    TRes Function(Variables$Mutation$ChangeRequestStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$ChangeRequestStatus;

  factory CopyWith$Variables$Mutation$ChangeRequestStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChangeRequestStatus;

  TRes call({String? requestId, Enum$RequestStatus? status});
}

class _CopyWithImpl$Variables$Mutation$ChangeRequestStatus<TRes>
    implements CopyWith$Variables$Mutation$ChangeRequestStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$ChangeRequestStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ChangeRequestStatus _instance;

  final TRes Function(Variables$Mutation$ChangeRequestStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? requestId = _undefined, Object? status = _undefined}) =>
      _then(
        Variables$Mutation$ChangeRequestStatus._({
          ..._instance._$data,
          if (requestId != _undefined && requestId != null)
            'requestId': (requestId as String),
          if (status != _undefined && status != null)
            'status': (status as Enum$RequestStatus),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$ChangeRequestStatus<TRes>
    implements CopyWith$Variables$Mutation$ChangeRequestStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChangeRequestStatus(this._res);

  TRes _res;

  call({String? requestId, Enum$RequestStatus? status}) => _res;
}

class Mutation$ChangeRequestStatus {
  Mutation$ChangeRequestStatus({
    required this.changeRequestStatus,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$ChangeRequestStatus.fromJson(Map<String, dynamic> json) {
    final l$changeRequestStatus = json['changeRequestStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$ChangeRequestStatus(
      changeRequestStatus: (l$changeRequestStatus as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool changeRequestStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeRequestStatus = changeRequestStatus;
    _resultData['changeRequestStatus'] = l$changeRequestStatus;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeRequestStatus = changeRequestStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeRequestStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ChangeRequestStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeRequestStatus = changeRequestStatus;
    final lOther$changeRequestStatus = other.changeRequestStatus;
    if (l$changeRequestStatus != lOther$changeRequestStatus) {
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

extension UtilityExtension$Mutation$ChangeRequestStatus
    on Mutation$ChangeRequestStatus {
  CopyWith$Mutation$ChangeRequestStatus<Mutation$ChangeRequestStatus>
  get copyWith => CopyWith$Mutation$ChangeRequestStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$ChangeRequestStatus<TRes> {
  factory CopyWith$Mutation$ChangeRequestStatus(
    Mutation$ChangeRequestStatus instance,
    TRes Function(Mutation$ChangeRequestStatus) then,
  ) = _CopyWithImpl$Mutation$ChangeRequestStatus;

  factory CopyWith$Mutation$ChangeRequestStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangeRequestStatus;

  TRes call({bool? changeRequestStatus, String? $__typename});
}

class _CopyWithImpl$Mutation$ChangeRequestStatus<TRes>
    implements CopyWith$Mutation$ChangeRequestStatus<TRes> {
  _CopyWithImpl$Mutation$ChangeRequestStatus(this._instance, this._then);

  final Mutation$ChangeRequestStatus _instance;

  final TRes Function(Mutation$ChangeRequestStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeRequestStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ChangeRequestStatus(
      changeRequestStatus:
          changeRequestStatus == _undefined || changeRequestStatus == null
          ? _instance.changeRequestStatus
          : (changeRequestStatus as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ChangeRequestStatus<TRes>
    implements CopyWith$Mutation$ChangeRequestStatus<TRes> {
  _CopyWithStubImpl$Mutation$ChangeRequestStatus(this._res);

  TRes _res;

  call({bool? changeRequestStatus, String? $__typename}) => _res;
}

const documentNodeMutationChangeRequestStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ChangeRequestStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'requestId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'status')),
          type: NamedTypeNode(
            name: NameNode(value: 'RequestStatus'),
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
            name: NameNode(value: 'changeRequestStatus'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'requestId'),
                      value: VariableNode(name: NameNode(value: 'requestId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'status'),
                      value: VariableNode(name: NameNode(value: 'status')),
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
Mutation$ChangeRequestStatus _parserFn$Mutation$ChangeRequestStatus(
  Map<String, dynamic> data,
) => Mutation$ChangeRequestStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$ChangeRequestStatus =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ChangeRequestStatus?,
    );

class Options$Mutation$ChangeRequestStatus
    extends graphql.MutationOptions<Mutation$ChangeRequestStatus> {
  Options$Mutation$ChangeRequestStatus({
    String? operationName,
    required Variables$Mutation$ChangeRequestStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeRequestStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ChangeRequestStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$ChangeRequestStatus>? update,
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
                     : _parserFn$Mutation$ChangeRequestStatus(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationChangeRequestStatus,
         parserFn: _parserFn$Mutation$ChangeRequestStatus,
       );

  final OnMutationCompleted$Mutation$ChangeRequestStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ChangeRequestStatus
    extends graphql.WatchQueryOptions<Mutation$ChangeRequestStatus> {
  WatchOptions$Mutation$ChangeRequestStatus({
    String? operationName,
    required Variables$Mutation$ChangeRequestStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeRequestStatus? typedOptimisticResult,
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
         document: documentNodeMutationChangeRequestStatus,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ChangeRequestStatus,
       );
}

extension ClientExtension$Mutation$ChangeRequestStatus
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChangeRequestStatus>>
  mutate$ChangeRequestStatus(
    Options$Mutation$ChangeRequestStatus options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ChangeRequestStatus>
  watchMutation$ChangeRequestStatus(
    WatchOptions$Mutation$ChangeRequestStatus options,
  ) => this.watchMutation(options);
}

class Mutation$ChangeRequestStatus$HookResult {
  Mutation$ChangeRequestStatus$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ChangeRequestStatus runMutation;

  final graphql.QueryResult<Mutation$ChangeRequestStatus> result;
}

Mutation$ChangeRequestStatus$HookResult useMutation$ChangeRequestStatus([
  WidgetOptions$Mutation$ChangeRequestStatus? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ChangeRequestStatus(),
  );
  return Mutation$ChangeRequestStatus$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ChangeRequestStatus>
useWatchMutation$ChangeRequestStatus(
  WatchOptions$Mutation$ChangeRequestStatus options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ChangeRequestStatus
    extends graphql.MutationOptions<Mutation$ChangeRequestStatus> {
  WidgetOptions$Mutation$ChangeRequestStatus({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeRequestStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ChangeRequestStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$ChangeRequestStatus>? update,
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
                     : _parserFn$Mutation$ChangeRequestStatus(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationChangeRequestStatus,
         parserFn: _parserFn$Mutation$ChangeRequestStatus,
       );

  final OnMutationCompleted$Mutation$ChangeRequestStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ChangeRequestStatus =
    graphql.MultiSourceResult<Mutation$ChangeRequestStatus> Function(
      Variables$Mutation$ChangeRequestStatus, {
      Object? optimisticResult,
      Mutation$ChangeRequestStatus? typedOptimisticResult,
    });
typedef Builder$Mutation$ChangeRequestStatus =
    widgets.Widget Function(
      RunMutation$Mutation$ChangeRequestStatus,
      graphql.QueryResult<Mutation$ChangeRequestStatus>?,
    );

class Mutation$ChangeRequestStatus$Widget
    extends graphql_flutter.Mutation<Mutation$ChangeRequestStatus> {
  Mutation$ChangeRequestStatus$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ChangeRequestStatus? options,
    required Builder$Mutation$ChangeRequestStatus builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ChangeRequestStatus(),
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

class Variables$Mutation$CreatePaymentCheckoutSession {
  factory Variables$Mutation$CreatePaymentCheckoutSession({
    required String packageId,
    required String requestId,
    required String successUrl,
    required String cancelUrl,
    required bool isSavePaymentMethod,
    required bool isReceiptEmail,
    required String requirements,
    required List<Input$PackageOrderDeliveryInput> deliveries,
    required int duration,
  }) => Variables$Mutation$CreatePaymentCheckoutSession._({
    r'packageId': packageId,
    r'requestId': requestId,
    r'successUrl': successUrl,
    r'cancelUrl': cancelUrl,
    r'isSavePaymentMethod': isSavePaymentMethod,
    r'isReceiptEmail': isReceiptEmail,
    r'requirements': requirements,
    r'deliveries': deliveries,
    r'duration': duration,
  });

  Variables$Mutation$CreatePaymentCheckoutSession._(this._$data);

  factory Variables$Mutation$CreatePaymentCheckoutSession.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$packageId = data['packageId'];
    result$data['packageId'] = (l$packageId as String);
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$successUrl = data['successUrl'];
    result$data['successUrl'] = (l$successUrl as String);
    final l$cancelUrl = data['cancelUrl'];
    result$data['cancelUrl'] = (l$cancelUrl as String);
    final l$isSavePaymentMethod = data['isSavePaymentMethod'];
    result$data['isSavePaymentMethod'] = (l$isSavePaymentMethod as bool);
    final l$isReceiptEmail = data['isReceiptEmail'];
    result$data['isReceiptEmail'] = (l$isReceiptEmail as bool);
    final l$requirements = data['requirements'];
    result$data['requirements'] = (l$requirements as String);
    final l$deliveries = data['deliveries'];
    result$data['deliveries'] = (l$deliveries as List<dynamic>)
        .map(
          (e) => Input$PackageOrderDeliveryInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    return Variables$Mutation$CreatePaymentCheckoutSession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get packageId => (_$data['packageId'] as String);

  String get requestId => (_$data['requestId'] as String);

  String get successUrl => (_$data['successUrl'] as String);

  String get cancelUrl => (_$data['cancelUrl'] as String);

  bool get isSavePaymentMethod => (_$data['isSavePaymentMethod'] as bool);

  bool get isReceiptEmail => (_$data['isReceiptEmail'] as bool);

  String get requirements => (_$data['requirements'] as String);

  List<Input$PackageOrderDeliveryInput> get deliveries =>
      (_$data['deliveries'] as List<Input$PackageOrderDeliveryInput>);

  int get duration => (_$data['duration'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$packageId = packageId;
    result$data['packageId'] = l$packageId;
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$successUrl = successUrl;
    result$data['successUrl'] = l$successUrl;
    final l$cancelUrl = cancelUrl;
    result$data['cancelUrl'] = l$cancelUrl;
    final l$isSavePaymentMethod = isSavePaymentMethod;
    result$data['isSavePaymentMethod'] = l$isSavePaymentMethod;
    final l$isReceiptEmail = isReceiptEmail;
    result$data['isReceiptEmail'] = l$isReceiptEmail;
    final l$requirements = requirements;
    result$data['requirements'] = l$requirements;
    final l$deliveries = deliveries;
    result$data['deliveries'] = l$deliveries.map((e) => e.toJson()).toList();
    final l$duration = duration;
    result$data['duration'] = l$duration;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePaymentCheckoutSession<
    Variables$Mutation$CreatePaymentCheckoutSession
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreatePaymentCheckoutSession(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePaymentCheckoutSession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$packageId = packageId;
    final lOther$packageId = other.packageId;
    if (l$packageId != lOther$packageId) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$successUrl = successUrl;
    final lOther$successUrl = other.successUrl;
    if (l$successUrl != lOther$successUrl) {
      return false;
    }
    final l$cancelUrl = cancelUrl;
    final lOther$cancelUrl = other.cancelUrl;
    if (l$cancelUrl != lOther$cancelUrl) {
      return false;
    }
    final l$isSavePaymentMethod = isSavePaymentMethod;
    final lOther$isSavePaymentMethod = other.isSavePaymentMethod;
    if (l$isSavePaymentMethod != lOther$isSavePaymentMethod) {
      return false;
    }
    final l$isReceiptEmail = isReceiptEmail;
    final lOther$isReceiptEmail = other.isReceiptEmail;
    if (l$isReceiptEmail != lOther$isReceiptEmail) {
      return false;
    }
    final l$requirements = requirements;
    final lOther$requirements = other.requirements;
    if (l$requirements != lOther$requirements) {
      return false;
    }
    final l$deliveries = deliveries;
    final lOther$deliveries = other.deliveries;
    if (l$deliveries.length != lOther$deliveries.length) {
      return false;
    }
    for (int i = 0; i < l$deliveries.length; i++) {
      final l$deliveries$entry = l$deliveries[i];
      final lOther$deliveries$entry = lOther$deliveries[i];
      if (l$deliveries$entry != lOther$deliveries$entry) {
        return false;
      }
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$packageId = packageId;
    final l$requestId = requestId;
    final l$successUrl = successUrl;
    final l$cancelUrl = cancelUrl;
    final l$isSavePaymentMethod = isSavePaymentMethod;
    final l$isReceiptEmail = isReceiptEmail;
    final l$requirements = requirements;
    final l$deliveries = deliveries;
    final l$duration = duration;
    return Object.hashAll([
      l$packageId,
      l$requestId,
      l$successUrl,
      l$cancelUrl,
      l$isSavePaymentMethod,
      l$isReceiptEmail,
      l$requirements,
      Object.hashAll(l$deliveries.map((v) => v)),
      l$duration,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePaymentCheckoutSession<TRes> {
  factory CopyWith$Variables$Mutation$CreatePaymentCheckoutSession(
    Variables$Mutation$CreatePaymentCheckoutSession instance,
    TRes Function(Variables$Mutation$CreatePaymentCheckoutSession) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePaymentCheckoutSession;

  factory CopyWith$Variables$Mutation$CreatePaymentCheckoutSession.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$CreatePaymentCheckoutSession;

  TRes call({
    String? packageId,
    String? requestId,
    String? successUrl,
    String? cancelUrl,
    bool? isSavePaymentMethod,
    bool? isReceiptEmail,
    String? requirements,
    List<Input$PackageOrderDeliveryInput>? deliveries,
    int? duration,
  });
}

class _CopyWithImpl$Variables$Mutation$CreatePaymentCheckoutSession<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentCheckoutSession<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePaymentCheckoutSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePaymentCheckoutSession _instance;

  final TRes Function(Variables$Mutation$CreatePaymentCheckoutSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageId = _undefined,
    Object? requestId = _undefined,
    Object? successUrl = _undefined,
    Object? cancelUrl = _undefined,
    Object? isSavePaymentMethod = _undefined,
    Object? isReceiptEmail = _undefined,
    Object? requirements = _undefined,
    Object? deliveries = _undefined,
    Object? duration = _undefined,
  }) => _then(
    Variables$Mutation$CreatePaymentCheckoutSession._({
      ..._instance._$data,
      if (packageId != _undefined && packageId != null)
        'packageId': (packageId as String),
      if (requestId != _undefined && requestId != null)
        'requestId': (requestId as String),
      if (successUrl != _undefined && successUrl != null)
        'successUrl': (successUrl as String),
      if (cancelUrl != _undefined && cancelUrl != null)
        'cancelUrl': (cancelUrl as String),
      if (isSavePaymentMethod != _undefined && isSavePaymentMethod != null)
        'isSavePaymentMethod': (isSavePaymentMethod as bool),
      if (isReceiptEmail != _undefined && isReceiptEmail != null)
        'isReceiptEmail': (isReceiptEmail as bool),
      if (requirements != _undefined && requirements != null)
        'requirements': (requirements as String),
      if (deliveries != _undefined && deliveries != null)
        'deliveries': (deliveries as List<Input$PackageOrderDeliveryInput>),
      if (duration != _undefined && duration != null)
        'duration': (duration as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreatePaymentCheckoutSession<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentCheckoutSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePaymentCheckoutSession(this._res);

  TRes _res;

  call({
    String? packageId,
    String? requestId,
    String? successUrl,
    String? cancelUrl,
    bool? isSavePaymentMethod,
    bool? isReceiptEmail,
    String? requirements,
    List<Input$PackageOrderDeliveryInput>? deliveries,
    int? duration,
  }) => _res;
}

class Mutation$CreatePaymentCheckoutSession {
  Mutation$CreatePaymentCheckoutSession({
    required this.createPaymentCheckoutSession,
    this.$__typename = 'MutationInitialization',
  });

  factory Mutation$CreatePaymentCheckoutSession.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createPaymentCheckoutSession = json['createPaymentCheckoutSession'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentCheckoutSession(
      createPaymentCheckoutSession:
          Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession.fromJson(
            (l$createPaymentCheckoutSession as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession
  createPaymentCheckoutSession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPaymentCheckoutSession = createPaymentCheckoutSession;
    _resultData['createPaymentCheckoutSession'] = l$createPaymentCheckoutSession
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPaymentCheckoutSession = createPaymentCheckoutSession;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPaymentCheckoutSession, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePaymentCheckoutSession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPaymentCheckoutSession = createPaymentCheckoutSession;
    final lOther$createPaymentCheckoutSession =
        other.createPaymentCheckoutSession;
    if (l$createPaymentCheckoutSession != lOther$createPaymentCheckoutSession) {
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

extension UtilityExtension$Mutation$CreatePaymentCheckoutSession
    on Mutation$CreatePaymentCheckoutSession {
  CopyWith$Mutation$CreatePaymentCheckoutSession<
    Mutation$CreatePaymentCheckoutSession
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentCheckoutSession(this, (i) => i);
}

abstract class CopyWith$Mutation$CreatePaymentCheckoutSession<TRes> {
  factory CopyWith$Mutation$CreatePaymentCheckoutSession(
    Mutation$CreatePaymentCheckoutSession instance,
    TRes Function(Mutation$CreatePaymentCheckoutSession) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentCheckoutSession;

  factory CopyWith$Mutation$CreatePaymentCheckoutSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession;

  TRes call({
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession?
    createPaymentCheckoutSession,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
    TRes
  >
  get createPaymentCheckoutSession;
}

class _CopyWithImpl$Mutation$CreatePaymentCheckoutSession<TRes>
    implements CopyWith$Mutation$CreatePaymentCheckoutSession<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentCheckoutSession(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentCheckoutSession _instance;

  final TRes Function(Mutation$CreatePaymentCheckoutSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPaymentCheckoutSession = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentCheckoutSession(
      createPaymentCheckoutSession:
          createPaymentCheckoutSession == _undefined ||
              createPaymentCheckoutSession == null
          ? _instance.createPaymentCheckoutSession
          : (createPaymentCheckoutSession
                as Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
    TRes
  >
  get createPaymentCheckoutSession {
    final local$createPaymentCheckoutSession =
        _instance.createPaymentCheckoutSession;
    return CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
      local$createPaymentCheckoutSession,
      (e) => call(createPaymentCheckoutSession: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession<TRes>
    implements CopyWith$Mutation$CreatePaymentCheckoutSession<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession(this._res);

  TRes _res;

  call({
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession?
    createPaymentCheckoutSession,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
    TRes
  >
  get createPaymentCheckoutSession =>
      CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession.stub(
        _res,
      );
}

const documentNodeMutationCreatePaymentCheckoutSession = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreatePaymentCheckoutSession'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'packageId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'requestId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'successUrl')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'cancelUrl')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isSavePaymentMethod')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isReceiptEmail')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'requirements')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deliveries')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'PackageOrderDeliveryInput'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'duration')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createPaymentCheckoutSession'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'createPaymentCheckoutSessionRequest'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'packageId'),
                      value: VariableNode(name: NameNode(value: 'packageId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'requestId'),
                      value: VariableNode(name: NameNode(value: 'requestId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'successUrl'),
                      value: VariableNode(name: NameNode(value: 'successUrl')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'cancelUrl'),
                      value: VariableNode(name: NameNode(value: 'cancelUrl')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isSavePaymentMethod'),
                      value: VariableNode(
                        name: NameNode(value: 'isSavePaymentMethod'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isReceiptEmail'),
                      value: VariableNode(
                        name: NameNode(value: 'isReceiptEmail'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'requirements'),
                      value: VariableNode(
                        name: NameNode(value: 'requirements'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'deliveries'),
                      value: VariableNode(name: NameNode(value: 'deliveries')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'duration'),
                      value: VariableNode(name: NameNode(value: 'duration')),
                    ),
                  ],
                ),
              ),
            ],
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
                  name: NameNode(value: 'url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'successUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'cancelUrl'),
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
                  name: NameNode(value: 'created'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'expired'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mode'),
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
Mutation$CreatePaymentCheckoutSession
_parserFn$Mutation$CreatePaymentCheckoutSession(Map<String, dynamic> data) =>
    Mutation$CreatePaymentCheckoutSession.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePaymentCheckoutSession =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$CreatePaymentCheckoutSession?,
    );

class Options$Mutation$CreatePaymentCheckoutSession
    extends graphql.MutationOptions<Mutation$CreatePaymentCheckoutSession> {
  Options$Mutation$CreatePaymentCheckoutSession({
    String? operationName,
    required Variables$Mutation$CreatePaymentCheckoutSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentCheckoutSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePaymentCheckoutSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePaymentCheckoutSession>? update,
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
                     : _parserFn$Mutation$CreatePaymentCheckoutSession(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreatePaymentCheckoutSession,
         parserFn: _parserFn$Mutation$CreatePaymentCheckoutSession,
       );

  final OnMutationCompleted$Mutation$CreatePaymentCheckoutSession?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$CreatePaymentCheckoutSession
    extends graphql.WatchQueryOptions<Mutation$CreatePaymentCheckoutSession> {
  WatchOptions$Mutation$CreatePaymentCheckoutSession({
    String? operationName,
    required Variables$Mutation$CreatePaymentCheckoutSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentCheckoutSession? typedOptimisticResult,
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
         document: documentNodeMutationCreatePaymentCheckoutSession,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$CreatePaymentCheckoutSession,
       );
}

extension ClientExtension$Mutation$CreatePaymentCheckoutSession
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePaymentCheckoutSession>>
  mutate$CreatePaymentCheckoutSession(
    Options$Mutation$CreatePaymentCheckoutSession options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$CreatePaymentCheckoutSession>
  watchMutation$CreatePaymentCheckoutSession(
    WatchOptions$Mutation$CreatePaymentCheckoutSession options,
  ) => this.watchMutation(options);
}

class Mutation$CreatePaymentCheckoutSession$HookResult {
  Mutation$CreatePaymentCheckoutSession$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreatePaymentCheckoutSession runMutation;

  final graphql.QueryResult<Mutation$CreatePaymentCheckoutSession> result;
}

Mutation$CreatePaymentCheckoutSession$HookResult
useMutation$CreatePaymentCheckoutSession([
  WidgetOptions$Mutation$CreatePaymentCheckoutSession? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$CreatePaymentCheckoutSession(),
  );
  return Mutation$CreatePaymentCheckoutSession$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePaymentCheckoutSession>
useWatchMutation$CreatePaymentCheckoutSession(
  WatchOptions$Mutation$CreatePaymentCheckoutSession options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePaymentCheckoutSession
    extends graphql.MutationOptions<Mutation$CreatePaymentCheckoutSession> {
  WidgetOptions$Mutation$CreatePaymentCheckoutSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentCheckoutSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePaymentCheckoutSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePaymentCheckoutSession>? update,
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
                     : _parserFn$Mutation$CreatePaymentCheckoutSession(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationCreatePaymentCheckoutSession,
         parserFn: _parserFn$Mutation$CreatePaymentCheckoutSession,
       );

  final OnMutationCompleted$Mutation$CreatePaymentCheckoutSession?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$CreatePaymentCheckoutSession =
    graphql.MultiSourceResult<Mutation$CreatePaymentCheckoutSession> Function(
      Variables$Mutation$CreatePaymentCheckoutSession, {
      Object? optimisticResult,
      Mutation$CreatePaymentCheckoutSession? typedOptimisticResult,
    });
typedef Builder$Mutation$CreatePaymentCheckoutSession =
    widgets.Widget Function(
      RunMutation$Mutation$CreatePaymentCheckoutSession,
      graphql.QueryResult<Mutation$CreatePaymentCheckoutSession>?,
    );

class Mutation$CreatePaymentCheckoutSession$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePaymentCheckoutSession> {
  Mutation$CreatePaymentCheckoutSession$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePaymentCheckoutSession? options,
    required Builder$Mutation$CreatePaymentCheckoutSession builder,
  }) : super(
         key: key,
         options:
             options ?? WidgetOptions$Mutation$CreatePaymentCheckoutSession(),
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

class Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession {
  Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession({
    required this.id,
    required this.url,
    required this.successUrl,
    required this.cancelUrl,
    required this.status,
    required this.created,
    required this.expired,
    required this.mode,
    this.$__typename = 'CheckoutSessionResponse',
  });

  factory Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$url = json['url'];
    final l$successUrl = json['successUrl'];
    final l$cancelUrl = json['cancelUrl'];
    final l$status = json['status'];
    final l$created = json['created'];
    final l$expired = json['expired'];
    final l$mode = json['mode'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
      id: (l$id as String),
      url: (l$url as String),
      successUrl: (l$successUrl as String),
      cancelUrl: (l$cancelUrl as String),
      status: (l$status as String),
      created: DateTime.parse((l$created as String)),
      expired: DateTime.parse((l$expired as String)),
      mode: (l$mode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String url;

  final String successUrl;

  final String cancelUrl;

  final String status;

  final DateTime created;

  final DateTime expired;

  final String mode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$successUrl = successUrl;
    _resultData['successUrl'] = l$successUrl;
    final l$cancelUrl = cancelUrl;
    _resultData['cancelUrl'] = l$cancelUrl;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$created = created;
    _resultData['created'] = l$created.toIso8601String();
    final l$expired = expired;
    _resultData['expired'] = l$expired.toIso8601String();
    final l$mode = mode;
    _resultData['mode'] = l$mode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$url = url;
    final l$successUrl = successUrl;
    final l$cancelUrl = cancelUrl;
    final l$status = status;
    final l$created = created;
    final l$expired = expired;
    final l$mode = mode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$url,
      l$successUrl,
      l$cancelUrl,
      l$status,
      l$created,
      l$expired,
      l$mode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$successUrl = successUrl;
    final lOther$successUrl = other.successUrl;
    if (l$successUrl != lOther$successUrl) {
      return false;
    }
    final l$cancelUrl = cancelUrl;
    final lOther$cancelUrl = other.cancelUrl;
    if (l$cancelUrl != lOther$cancelUrl) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$expired = expired;
    final lOther$expired = other.expired;
    if (l$expired != lOther$expired) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
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

extension UtilityExtension$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession
    on Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession {
  CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
  TRes
> {
  factory CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession instance,
    TRes Function(
      Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession;

  factory CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession;

  TRes call({
    String? id,
    String? url,
    String? successUrl,
    String? cancelUrl,
    String? status,
    DateTime? created,
    DateTime? expired,
    String? mode,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
          TRes
        > {
  _CopyWithImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession
  _instance;

  final TRes Function(
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? url = _undefined,
    Object? successUrl = _undefined,
    Object? cancelUrl = _undefined,
    Object? status = _undefined,
    Object? created = _undefined,
    Object? expired = _undefined,
    Object? mode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      successUrl: successUrl == _undefined || successUrl == null
          ? _instance.successUrl
          : (successUrl as String),
      cancelUrl: cancelUrl == _undefined || cancelUrl == null
          ? _instance.cancelUrl
          : (cancelUrl as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as DateTime),
      expired: expired == _undefined || expired == null
          ? _instance.expired
          : (expired as DateTime),
      mode: mode == _undefined || mode == null
          ? _instance.mode
          : (mode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreatePaymentCheckoutSession$createPaymentCheckoutSession(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? url,
    String? successUrl,
    String? cancelUrl,
    String? status,
    DateTime? created,
    DateTime? expired,
    String? mode,
    String? $__typename,
  }) => _res;
}
