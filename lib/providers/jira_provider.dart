import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/models/models.dart';
import 'package:jira_tracker/providers/shared.dart';
import 'package:jira_tracker/services/jira.dart';

final jiraServiceProvider = Provider((ref) {
  var dio = ref.watch(dioProvider);
  return JiraService(dio);
});

final jiraCaseListProvider = FutureProvider<List<Issue>>((ref) async {
  var jiraService = ref.watch(jiraServiceProvider);
  var response = await jiraService.getJiracases(JiraCaseQuery());
  return response.sections[0].issues;
});
