class RegisterStates {
  final String userName;
  final String email;
  final String password;
  final String rePassword;
  const RegisterStates({
    this.userName = '',
    this.email = '',
    this.rePassword = '',
    this.password = '',
  });

  RegisterStates copyWith(
      {String? userName, String? rePassword, String? email, String? password}) {
    return RegisterStates(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      rePassword: rePassword ?? this.rePassword,
    );
  }
}


//we use a final and const here to make this class immutable => we do this to make the class safe.
//immutable = means cant change..
//thread safe.