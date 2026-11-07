class Order {
  final String itemName;
  final int quantity;
  final double unitPrice;

  Order({
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  double get orderTotal => quantity * unitPrice;
}
