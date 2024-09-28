part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginUpdate extends LoginState {
  final String id;

  LoginUpdate(this.id);
}
