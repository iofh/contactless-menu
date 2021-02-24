import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/application/auth/auth_bloc.dart';
import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:contactless_menu/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart'
    as app_router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<OrderBloc>(),
        )
      ],
      child: MaterialApp(
        title: 'Contactless Menu',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator.builder(router: app_router.Router()),
        theme: ThemeData.dark().copyWith(),
      ),
    );
  }
}
