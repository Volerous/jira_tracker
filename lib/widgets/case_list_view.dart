import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jira_tracker/providers/providers.dart';

class CaseListView extends ConsumerWidget {
  const CaseListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var togglList = ref.watch(jiraCaseListProvider);

    return togglList.when(data: (data) {
      return ListView.builder(
        itemBuilder: (context, index) {
          var timer = data[index];
          return ListTile(
            title: Text(timer.key),
            // subtitle: Text(),
            trailing: Text(timer.summary),
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
