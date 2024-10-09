import 'package:elevate_task/core/functions/setup_service_locator.dart';
import 'package:elevate_task/core/simple_bloc_observer.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

main_setup()async{

  setup_service_locator();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>('product_box');
}