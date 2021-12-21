import 'package:json_annotation/json_annotation.dart';
part 'toggl_user.g.dart';

@JsonSerializable()
class TogglUser {
  int since;
  Data data;

  TogglUser({required this.since, required this.data});
  factory TogglUser.fromJson(Map<String, dynamic> json) =>
      _$TogglUserFromJson(json);
  Map<String, dynamic> toJson() => _$TogglUserToJson(this);
}

@JsonSerializable()
class Data {
  int id;
  String apiToken;
  int defaultWid;
  String email;
  String fullname;
  String jqueryTimeofdayFormat;
  String jqueryDateFormat;
  String timeofdayFormat;
  String dateFormat;
  bool storeStartAndStopTime;
  int beginningOfWeek;
  String language;
  String imageUrl;
  bool sidebarPiechart;
  String at;
  String createdAt;
  int retention;
  bool recordTimeline;
  bool renderTimeline;
  bool timelineEnabled;
  bool timelineExperiment;
  bool shouldUpgrade;
  String timezone;
  bool openidEnabled;
  bool sendProductEmails;
  bool sendWeeklyReport;
  bool sendTimerNotifications;
  List<Projects> projects;
  List<TimeEntries> timeEntries;
  List<Workspaces> workspaces;
  String durationFormat;

  Data(
      {required this.id,
      required this.apiToken,
      required this.defaultWid,
      required this.email,
      required this.fullname,
      required this.jqueryTimeofdayFormat,
      required this.jqueryDateFormat,
      required this.timeofdayFormat,
      required this.dateFormat,
      required this.storeStartAndStopTime,
      required this.beginningOfWeek,
      required this.language,
      required this.imageUrl,
      required this.sidebarPiechart,
      required this.at,
      required this.createdAt,
      required this.retention,
      required this.recordTimeline,
      required this.renderTimeline,
      required this.timelineEnabled,
      required this.timelineExperiment,
      required this.shouldUpgrade,
      required this.timezone,
      required this.openidEnabled,
      required this.sendProductEmails,
      required this.sendWeeklyReport,
      required this.sendTimerNotifications,
      required this.projects,
      required this.timeEntries,
      required this.workspaces,
      required this.durationFormat});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Projects {
  int id;
  int wid;
  String name;
  bool billable;
  bool isPrivate;
  bool active;
  bool template;
  String at;
  String createdAt;
  String color;
  bool autoEstimates;
  int actualHours;
  String hexColor;

  Projects(
      {required this.id,
      required this.wid,
      required this.name,
      required this.billable,
      required this.isPrivate,
      required this.active,
      required this.template,
      required this.at,
      required this.createdAt,
      required this.color,
      required this.autoEstimates,
      required this.actualHours,
      required this.hexColor});
  factory Projects.fromJson(Map<String, dynamic> json) =>
      _$ProjectsFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectsToJson(this);
}

@JsonSerializable()
class TimeEntries {
  int id;
  String guid;
  int wid;
  int pid;
  bool billable;
  String start;
  String stop;
  int duration;
  String description;
  bool duronly;
  String at;
  int uid;

  TimeEntries(
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
  factory TimeEntries.fromJson(Map<String, dynamic> json) =>
      _$TimeEntriesFromJson(json);
  Map<String, dynamic> toJson() => _$TimeEntriesToJson(this);
}

@JsonSerializable()
class Workspaces {
  int id;
  String name;
  int profile;
  bool premium;
  bool admin;
  int defaultHourlyRate;
  String defaultCurrency;
  bool onlyAdminsMayCreateProjects;
  bool onlyAdminsSeeBillableRates;
  bool onlyAdminsSeeTeamDashboard;
  bool projectsBillableByDefault;
  int rounding;
  int roundingMinutes;
  String apiToken;
  String at;
  bool icalEnabled;

  Workspaces(
      {required this.id,
      required this.name,
      required this.profile,
      required this.premium,
      required this.admin,
      required this.defaultHourlyRate,
      required this.defaultCurrency,
      required this.onlyAdminsMayCreateProjects,
      required this.onlyAdminsSeeBillableRates,
      required this.onlyAdminsSeeTeamDashboard,
      required this.projectsBillableByDefault,
      required this.rounding,
      required this.roundingMinutes,
      required this.apiToken,
      required this.at,
      required this.icalEnabled});
  factory Workspaces.fromJson(Map<String, dynamic> json) =>
      _$WorkspacesFromJson(json);
  Map<String, dynamic> toJson() => _$WorkspacesToJson(this);
}
