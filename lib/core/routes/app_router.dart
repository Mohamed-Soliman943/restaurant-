import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/service_locator.dart';
import 'app_routes.dart';


class AppRouter {

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => RegisterCubit(getIt()),
              child: RegisterScreen(),
            ));


      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_)=>HomeScreen());
    }
  }


}
