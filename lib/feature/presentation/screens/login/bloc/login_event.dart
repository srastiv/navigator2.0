part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}


class LoginTextChangedEvent extends LoginEvent {
  final String email;
  final String password;
  LoginTextChangedEvent({required this.email, required this.password});
}
