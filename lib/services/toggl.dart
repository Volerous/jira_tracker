import 'package:jira_tracker/models/toogl_timer.dart';

class TogglService {
  String baseUrl = "toggl";

  Future<TogglTimer> getTimerByCase(String caseId) async {
    return TogglTimer(
      "first",
      const Duration(minutes: 20),
      DateTime.now(),
      DateTime.now(),
    );
  }
}
