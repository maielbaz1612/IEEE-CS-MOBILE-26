 class UserState {}

final class UserInitial extends UserState {}

final class SignInLoading extends UserState {}

final class SignInSuccess extends UserState {}

final class SignInFailer extends UserState {
  final String errMessage ;

  SignInFailer({required this.errMessage});
}
