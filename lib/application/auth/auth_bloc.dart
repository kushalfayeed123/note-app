import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const Initial()) {
    on<AuthEvent>((event, emit) async {
      emit(await event.map(authCheckRequested: (e) async {
        final userOption = await _authFacade.getSignedInUser();
        emit(
          userOption.fold(
            () => const AuthState.unAuthenticated(),
            (_) => const AuthState.authenticated(),
          ),
        );
        return state;
      }, signedOut: (e) async {
        await _authFacade.signOut();
        emit(const AuthState.unAuthenticated());
        return state;
      }));
    });
  }
}
