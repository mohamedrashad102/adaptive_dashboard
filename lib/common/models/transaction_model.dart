class TransactionModel {
  final String transaction;
  final String date;
  final double price;
  final bool isSpecial;

  const TransactionModel({
    required this.transaction,
    required this.date,
    required this.price,
    required this.isSpecial,
  });
}
