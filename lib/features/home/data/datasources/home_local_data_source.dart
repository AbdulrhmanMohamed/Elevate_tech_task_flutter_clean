import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:hive/hive.dart';

class HomeLocalDataSource {


List<ProductEntity>  getHomeProducts(){
  
  return Hive.box<ProductEntity>("product_box").values.toList() ;
  }
}