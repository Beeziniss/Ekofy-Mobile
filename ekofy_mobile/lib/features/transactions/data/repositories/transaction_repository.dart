//INFO: Repository interface for UI-only mock transactions.
import '../../domain/models/transaction_item.dart';

abstract class TransactionRepository {
  Future<List<TransactionItem>> listTransactions();
  Future<TransactionItem?> getById(String id);
}
