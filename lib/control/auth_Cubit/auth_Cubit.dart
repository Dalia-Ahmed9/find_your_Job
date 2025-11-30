import 'package:find_job/control/auth_Cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  // for create account
  FirebaseAuth auth = FirebaseAuth.instance;

  void createUserByFirebase({required String email, required String password}) {
    emit(AuthLoadingState());
    auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
          emit(AuthSuccessState());
        })
        .catchError((error) {
          emit(AuthErrorState(error.toString()));
        });
  }
}
