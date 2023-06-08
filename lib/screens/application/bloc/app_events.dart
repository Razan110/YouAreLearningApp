abstract class AppEvents {
  const AppEvents();
}

class TriggerAppEvents extends AppEvents {
  final int index;

  const TriggerAppEvents(this.index) : super();
}
