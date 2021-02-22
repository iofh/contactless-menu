import 'package:contactless_menu/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:contactless_menu/injectable.dart';
import 'package:contactless_menu/presentation/pages/sign_in/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
