// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elevate_task/features/home/data/models/product_model/rating.dart';
import 'package:hive/hive.dart';
part "product_entity.g.dart";
@HiveType(typeId: 0)
class ProductEntity {
@HiveField(0)
  int? id;
@HiveField(1)
  String? title;
@HiveField(2)
  double? price;
@HiveField(3)
  String? description;
@HiveField(4)
  String? category;
@HiveField(5)
  String? image;

  ProductEntity({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });


}
