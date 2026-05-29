import 'package:hive/hive.dart';

part 'credit_sales_item_model.g.dart';

@HiveType(typeId: 0)
class CreditSalesItemModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String price;
  @HiveField(2)
  String notes;

  CreditSalesItemModel({
    required this.name,
    required this.price,
    required this.notes,
  });
}
