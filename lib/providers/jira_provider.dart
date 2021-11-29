import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/models/jira_case.dart';
import 'package:jira_tracker/services/jira.dart';

class JiraStateNotifier extends StateNotifier<List<JiraCase>> {
  final JiraService _jiraService = JiraService();
  JiraStateNotifier() : super(const []);
  Future<List<JiraCase>> get getJiraCases =>
      _jiraService.getTaskAssignedToUser(1);
}

final jiraStateProvider =
    StateNotifierProvider<JiraStateNotifier, List<JiraCase>>((ref) {
  return JiraStateNotifier();
});
