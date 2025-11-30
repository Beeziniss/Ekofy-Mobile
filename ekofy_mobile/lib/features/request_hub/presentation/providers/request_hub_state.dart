import 'package:ekofy_mobile/features/request_hub/data/models/request.dart';

class RequestHubState {
  final List<RequestItem> items;
  final bool isLoading;

  RequestHubState({this.items = const [], this.isLoading = false});

  RequestHubState copyWith({List<RequestItem>? items, bool? isLoading}) {
    return RequestHubState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
