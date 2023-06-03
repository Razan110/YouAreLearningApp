abstract class RegisterEvents {
  const RegisterEvents();
}

class UserNamevents extends RegisterEvents {
  final String userName;

  const UserNamevents(this.userName);
}

class Emailevents extends RegisterEvents {
  final String email;

  const Emailevents(this.email);
}

class PasswordEvents extends RegisterEvents {
  final String password;

  const PasswordEvents(this.password);
}

class RePasswordEvents extends RegisterEvents {
  final String rePassword;

  const RePasswordEvents(this.rePassword);
}
