import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
enum RequestType {
  public,
  direct;

  static RequestType fromString(String value) {
    switch (value.toLowerCase()) {
      case 'public':
        return RequestType.public;
      default:
        return RequestType.direct;
    }
  }

  static RequestType fromEnum(Enum$RequestType value) {
    switch (value) {
      case Enum$RequestType.PUBLIC_REQUEST:
        return RequestType.public;
      default:
        return RequestType.direct;
    }
  }

  String get label {
    switch (this) {
      case RequestType.public:
        return 'Public';
      case RequestType.direct:
        return 'Direct';
    }
  }
}
