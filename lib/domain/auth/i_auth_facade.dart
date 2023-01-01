import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'user.dart';
import 'value_object.dart';

abstract class IAuthFacade {
  Future<Option<CurrentUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailandPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailandPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
