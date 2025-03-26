class AddCostManagement {
  final double? amount;
  final String? costName; // This variable is initialized in the constructor
  final String? entryDateCost;
  final List<String>? costType;
  final String? billImage;

  // Constructor
  AddCostManagement({
    this.amount,
    this.costName,
    this.entryDateCost,
    this.costType,
    this.billImage,
  });
}

// factory CostManagement.fromJson(Map<String, dynamic> json) {
//   return CostManagement(
//     Amount: json['Amount'] as double,
//     costName: json['costName'] as String,
//     EntryDateCost: json['EntryDateCost'] as String,
//     CostType: json['CostType'] as String,
//     BillImage: json['BillImage'] as String,
//   );
// }