import 'package:json_annotation/json_annotation.dart';

part 'toggl_timer.g.dart';

@JsonSerializable()
@DurationConverter()
class TogglTimer {
  TogglTimer(
      {this.id,
      this.guid,
      this.wid,
      this.pid,
      this.billable,
      this.start,
      this.stop,
      required this.duration,
      required this.description,
      this.duronly,
      this.at,
      this.uid});

  factory TogglTimer.fromJson(Map<String, dynamic> json) =>
      _$TogglTimerFromJson(json);

  DateTime? at;
  bool? billable;
  String description;
  Duration duration;
  bool? duronly;
  String? guid;
  int? id;
  int? pid;
  DateTime? start;
  DateTime? stop;
  int? uid;
  int? wid;

  Map<String, dynamic> toJson() => _$TogglTimerToJson(this);
}

class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) {
    print(json);
    return Duration(seconds: json);
  }

  @override
  int toJson(Duration object) {
    return object.inSeconds;
  }
}

extension DurationStringConversion on Duration {
  String toSimpleString() {
    final hours = inHours;
    final minutes = inMinutes % 60;
    final seconds = inSeconds % 60;
    return '$hours:${minutes >= 10 ? '' : 0}$minutes:${seconds >= 10 ? '' : 0}$seconds';
  }

  Duration jiraRound() {
    int minutes = inMinutes;
    if (minutes % 15 > 3) {
      minutes += 15 - (minutes % 15);
    }
    return Duration(minutes: minutes);
  }
}

extension TogglTimerListExtensions on List<TogglTimer> {
  Duration sum() {
    return fold<Duration>(
        const Duration(), (sum, timer) => sum + timer.duration);
  }

  List<TogglTimer> jiraRounded() {
    return map((timer) {
      var hold = timer;
      hold.duration = hold.duration.jiraRound();
      return hold;
    }).toList();
  }

  List<TogglTimer> withSum() {
    add(TogglTimer(duration: sum(), description: "sum"));
    return this;
  }
}
