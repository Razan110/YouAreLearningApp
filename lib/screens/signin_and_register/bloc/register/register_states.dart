class RegisterStates {
  final String email;
  final String password;
  const RegisterStates({this.email = '', this.password = ''});

  RegisterStates copyWith({String? email, String? password}) {
    return RegisterStates(
      //if the value is null it will be using the earlier state value.
      email: email ?? this.email, password: password ?? this.password,
    );
  }
}
