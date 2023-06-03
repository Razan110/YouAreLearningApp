class SignInStates {
  final String email;
  final String password;
  const SignInStates({this.email = '', this.password = ''});

  SignInStates copyWith({//optinal name parameter
    String? email,
    String? password,
  }) {
    return SignInStates(
      //if the value is null it will be using the earlier state value.
      email: email ?? this.email, password: password ?? this.password,
    );
  }
}
