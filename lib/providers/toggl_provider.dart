import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/models/models.dart';
import 'package:jira_tracker/services/interceptors.dart';
import 'package:jira_tracker/services/services.dart';
import 'package:dio/dio.dart';

class TogglNotifier extends StateNotifier<List<TogglTimer>> {
  final TogglService _togglService = TogglService(Dio());
  TogglNotifier() : super(const []);

  Future<List<TogglTimer>> get getTogglTimers => _togglService.getTimeEntries(
      DateTime.now().toIso8601String(), DateTime.now().toIso8601String());
}

final dioProvider = Provider((ref) {
  Dio dio = Dio();
  dio.interceptors.add(BaseInterceptors());
  return dio;
});

final togglServiceProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return TogglService(dio);
});

final togglTimerProvider =
    StateNotifierProvider<TogglNotifier, List<TogglTimer>>(
  (_) => TogglNotifier(),
);

final togglTimerListProvider = FutureProvider<List<TogglTimer>>((ref) async {
  final togglService = ref.watch(togglServiceProvider);
  var timers = await togglService.getTimeEntries(
      DateTime.parse("2021-11-11T00:00:00+02:00").toIso8601String(),
      DateTime.parse("2021-11-12T00:00:00+02:00").toIso8601String());
  timers = timers.fold([], (val, element) {
    var getVal = val.indexWhere((e) => e.description == element.description);
    if (getVal != -1) {
      val[getVal].duration += element.duration;
      return val;
    } else {
      return val..add(element);
    }
  });

  return timers.jiraRounded().withSum();
});
final togglMeProvider = FutureProvider<TogglUser>((ref) {
  final togglService = ref.watch(togglServiceProvider);
  return togglService.getMe();
});
