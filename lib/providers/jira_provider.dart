import 'package:jira_tracker/models/jira_case.dart';
import 'package:jira_tracker/services/jira.dart';

class JiraStateNotifier {
  final JiraService _jiraService = JiraService();

  Future<List<JiraCase>> get getJiraCases =>
      _jiraService.getTaskAssignedToUser(1);
}
