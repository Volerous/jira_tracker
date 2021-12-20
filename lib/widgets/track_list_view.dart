import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/providers/providers.dart';
import 'package:jira_tracker/models/toggl/toggl_timer.dart';

class TimerListView extends ConsumerWidget {
  const TimerListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var togglList = ref.watch(togglTimerListProvider);

    return togglList.when(data: (data) {
      return ListView.builder(
        itemBuilder: (context, index) {
          var timer = data[index];
          return ListTile(
            title: Text(timer.description),
            // subtitle: Text(),
            trailing: Text(timer.duration.toSimpleString()),
          );
        },
        itemCount: data.length,
      );
    }, error: (error, stackTrace) {
      return Center(
        child: Text("${error.toString()}- ${stackTrace.toString()}"),
      );
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}
