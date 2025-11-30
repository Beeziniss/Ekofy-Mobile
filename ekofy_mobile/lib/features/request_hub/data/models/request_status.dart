import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

enum RequestStatus {
  rejected,
  open,
  confirmed,
  cancelled;

  static RequestStatus fromString(String value) {
    switch (value.toLowerCase()) {
      case 'open':
        return RequestStatus.open;
      case 'rejected':
        return RequestStatus.rejected;
      case 'canceled':
      case 'cancelled':
        return RequestStatus.cancelled;
      case 'confirmed':
        return RequestStatus.confirmed;
      default:
        return RequestStatus.cancelled;
    }
  }

  static RequestStatus fromEnum(Enum$RequestStatus value) {
    switch (value) {
      case Enum$RequestStatus.OPEN:
        return RequestStatus.open;
      case Enum$RequestStatus.REJECTED:
        return RequestStatus.rejected;
      case Enum$RequestStatus.CANCELED:
        return RequestStatus.cancelled;
      case Enum$RequestStatus.CONFIRMED:
        return RequestStatus.confirmed;
      default:
        return RequestStatus.cancelled;
    }
  }

  String get label {
    switch (this) {
      case RequestStatus.open:
        return 'Open';
      case RequestStatus.rejected:
        return 'Rejected';
      case RequestStatus.confirmed:
        return 'Confirmed';
      case RequestStatus.cancelled:
        return 'Cancelled';
    }
  }
}
