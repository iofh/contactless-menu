import 'package:auto_route/auto_route.dart';
import 'package:contactless_menu/application/auth/auth_bloc.dart';
import 'package:contactless_menu/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:contactless_menu/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context).replace(Routes.menuPage);
              context.read().add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Contactless Menu',
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Contactless Menu',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  BlocProvider.of<SignInFormBloc>(context, listen: false)
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                color: Colors.purple,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ]
            ],
          ),
        );
      },
    );
  }
}
