import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKay = GlobalKey();
  GlobalKey<FormState> signInFormKay = GlobalKey();
  bool termsAndConditionCheckBoxValue = false;
  bool showOrHideTextValue = true;
  IconData icon = Icons.remove_red_eye_outlined;
  createUserWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errorMessage: 'The account already exists for that email.'));
      } else if (e.code == 'invalid-email') {
        emit(SignUpFailureState(errorMessage: 'The email is invalid'));
      } else {
        emit(SignUpFailureState(errorMessage: e.toString()));
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  showOrHideText() {
    showOrHideTextValue = !showOrHideTextValue;
    if (showOrHideTextValue) {
      icon = Icons.remove_red_eye_outlined;
    } else {
      icon = Icons.remove_red_eye;
    }
    emit(ShowOrHideTextUpdateState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState(
            errorMessage: 'Wrong password provided for that user.'));
      } else {
        print(e.code);
        emit(SignInFailureState(errorMessage: 'ensure email and password'));
      }
    } catch (e) {
      emit(SignInFailureState(errorMessage: e.toString()));
    }
  }
  verifyEmail()async{
   await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
}
