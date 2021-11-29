import 'package:jira_tracker/models/jira_case.dart';

class JiraService {
  String baseUrl = "jira";

  Future<List<JiraCase>> getTaskAssignedToUser(int userId) async {
    // TODO implement
    return [JiraCase("INTER-490")];
  }

  Future<bool> registerTime(JiraCase caseValue) async {
    // TODO implement
    return true;
  }
}
