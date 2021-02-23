import 'dart:ui';

import 'package:contactless_menu/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:contactless_menu/injectable.dart';
import 'package:contactless_menu/presentation/pages/sign_in/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://tul.imgix.net/content/article/Best-Restaurants-Dunedin-Urban-List-Prohibition-Smokehouse.jpg'),
          fit: BoxFit.cover,
        )),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: SignInForm(),
          ),
        ),
      ),
    ));
  }
}
