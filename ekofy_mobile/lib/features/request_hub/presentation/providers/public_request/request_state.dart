import 'package:ekofy_mobile/features/request_hub/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/public_request.dart';

class RequestState {
  final List<PublicRequestItem> publicRequestItems;
  final List<OwnRequestItem> ownRequestItems;
  final bool isLoading;

  RequestState({
    this.publicRequestItems = const [],
    this.ownRequestItems = const [],
    this.isLoading = false,
  });

  RequestState copyWith({
    List<PublicRequestItem>? publicRequestItems,
    List<OwnRequestItem>? ownRequestItems,
    bool? isLoading,
  }) {
    return RequestState(
      publicRequestItems: publicRequestItems ?? this.publicRequestItems,
      ownRequestItems: ownRequestItems ?? this.ownRequestItems,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
