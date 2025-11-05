import 'request_status.dart';

class RequestItem {
  final String id;
  final String title;
  final String description;
  final String type;
  final DateTime createdAt;
  final double amount;
  final String currency;
  final bool free;
  final RequestStatus status;

  RequestItem({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.createdAt,
    required this.amount,
    required this.currency,
    required this.free,
    required this.status,
  });

  factory RequestItem.fromJson(Map<String, dynamic> json) {
    return RequestItem(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'USD',
      free: json['free'] as bool? ?? false,
      status: RequestStatus.fromString(json['status'] as String),
    );
  }
}
