import 'package:json_annotation/json_annotation.dart';

part 'toggl_timer.g.dart';

@JsonSerializable()
class TogglTimer {
  TogglTimer(
      {required this.id,
      required this.guid,
      required this.wid,
      required this.pid,
      required this.billable,
      required this.start,
      required this.stop,
      required this.duration,
      required this.description,
      required this.duronly,
      required this.at,
      required this.uid});

  factory TogglTimer.fromJson(Map<String, dynamic> json) =>
      _$TogglTimerFromJson(json);

  DateTime at;
  bool billable;
  String description;
  Duration duration;
  bool duronly;
  String guid;
  int id;
  int pid;
  DateTime start;
  DateTime stop;
  int uid;
  int wid;

  Map<String, dynamic> toJson() => _$TogglTimerToJson(this);
}
