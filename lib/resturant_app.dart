import 'package:flutter/material.dart';

import 'core/di/service_locator.dart';

class ResturantApp extends StatelessWidget {
  const ResturantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:getInitialPage(),
      onGenerateRoute:AppRouter.onGenerateRoutes,
    );
  }
  String getInitialPage(){
    String? token = getIt<LocalStorage>().getString(AppConstants.token);
    if(token!=null){
      return AppRoutes.homeScreen;
    }else{
      return AppRoutes.registerScreen;
    }
  }
}
