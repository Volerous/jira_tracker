import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/models/models.dart';
import 'package:jira_tracker/services/services.dart';
import 'package:dio/dio.dart';

class TogglNotifier extends StateNotifier<List<TogglTimer>> {
  final TogglService _togglService = TogglService(Dio());
  TogglNotifier() : super(const []);

  Future<List<TogglTimer>> get getTogglTimers => _togglService.getTimeEntries();
}

final togglServiceProvider = Provider((ref) => TogglService(Dio()));

final togglTimerProvider =
    StateNotifierProvider<TogglNotifier, List<TogglTimer>>(
  (_) => TogglNotifier(),
);

final togglTimerListProvider = FutureProvider<List<TogglTimer>>((ref) {
  final togglService = ref.watch(togglServiceProvider);
  return togglService.getTimeEntries();
});
