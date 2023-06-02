abstract class RegisterEvents {
  const RegisterEvents();
}

class Emailevents extends RegisterEvents {
  final String email;

  const Emailevents(this.email);
}

class PasswordEvents extends RegisterEvents {
  final String password;

  const PasswordEvents(this.password);
}
