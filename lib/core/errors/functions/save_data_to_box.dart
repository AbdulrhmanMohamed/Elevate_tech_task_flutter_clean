import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:hive/hive.dart';

void save_data_to_box(List<ProductEntity> products,String boxName) {
    var box= Hive.box<ProductEntity>("product_box");
    box.addAll(products);
  }



