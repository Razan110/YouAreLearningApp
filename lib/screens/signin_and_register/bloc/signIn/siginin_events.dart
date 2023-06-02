abstract class SignInEvents {
  const SignInEvents();
}

class Emailevents extends SignInEvents {
  final String email;

  const Emailevents(this.email);
}
class PasswordEvents extends SignInEvents {
  final String password;

  const PasswordEvents(this.password);
}