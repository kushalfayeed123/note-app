import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_object.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade)
      : super(_SignInFormState(
            emailAddress: EmailAddress(''),
            password: Password(''),
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.disabled,
            authFailureOrSuccessOption: none())) {
    on<SignInFormEvent>((event, emit) async {
      emit(await event.map(emailChanged: (e) {
        return state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none());
      }, passwordChanged: (e) {
        return state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none());
      }, registerWithEmailAndPasswordPressed: (e) async {
        await _performActionOnAuthFacadeWithEmailAndPassword(
            emit, _authFacade.registerWithEmailandPassword);

        return state;
      }, signInWithEmailAndPasswordPressed: (e) async {
        await _performActionOnAuthFacadeWithEmailAndPassword(
            emit, _authFacade.signInWithEmailandPassword);

        return state;
      }, signInWithGooglePressed: (e) async {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess)));

        return state;
      }));
    });
  }

  Future<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Emitter<SignInFormState> emit,
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    emit(state.copyWith(
        showErrorMessages: AutovalidateMode.always,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        isSubmitting: false));

    return state;
  }
}
