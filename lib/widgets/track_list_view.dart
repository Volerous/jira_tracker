import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/providers/providers.dart';

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
            subtitle: Text(timer.duration.toString()),
          );
        },
        itemCount: data.length,
      );
    }, error: (error, stackTrace) {
      return Center(child: Text(error.toString()));
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}
