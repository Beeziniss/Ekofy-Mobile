enum RequestStatus {
  pending,
  inProgress,
  completed,
  rejected;

  static RequestStatus fromString(String value) {
    switch (value.toLowerCase()) {
      case 'pending':
        return RequestStatus.pending;
      case 'in_progress':
      case 'inprogress':
        return RequestStatus.inProgress;
      case 'completed':
      case 'paid':
        return RequestStatus.completed;
      case 'rejected':
        return RequestStatus.rejected;
      default:
        return RequestStatus.pending;
    }
  }

  String get label {
    switch (this) {
      case RequestStatus.pending:
        return 'Pending';
      case RequestStatus.inProgress:
        return 'In-progress';
      case RequestStatus.completed:
        return 'Completed';
      case RequestStatus.rejected:
        return 'Rejected';
    }
  }
}
