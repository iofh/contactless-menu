import 'package:contactless_menu/domain/auth/auth_failure.dart';
import 'package:contactless_menu/domain/auth/user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
