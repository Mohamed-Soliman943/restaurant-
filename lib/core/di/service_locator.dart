import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;


Future<void> setupGetIt()async{

  getIt.registerLazySingleton<Dio>(()=>DioFactory.getDio());

  getIt.registerLazySingleton<RegisterRepo>(()=>RegisterRepo(getIt()));

}