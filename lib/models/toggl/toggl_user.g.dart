// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggl_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TogglUser _$TogglUserFromJson(Map<String, dynamic> json) => TogglUser(
      since: json['since'] as int,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TogglUserToJson(TogglUser instance) => <String, dynamic>{
      'since': instance.since,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int,
      apiToken: json['apiToken'] as String,
      defaultWid: json['defaultWid'] as int,
      email: json['email'] as String,
      fullname: json['fullname'] as String,
      jqueryTimeofdayFormat: json['jqueryTimeofdayFormat'] as String,
      jqueryDateFormat: json['jqueryDateFormat'] as String,
      timeofdayFormat: json['timeofdayFormat'] as String,
      dateFormat: json['dateFormat'] as String,
      storeStartAndStopTime: json['storeStartAndStopTime'] as bool,
      beginningOfWeek: json['beginningOfWeek'] as int,
      language: json['language'] as String,
      imageUrl: json['imageUrl'] as String,
      sidebarPiechart: json['sidebarPiechart'] as bool,
      at: json['at'] as String,
      createdAt: json['createdAt'] as String,
      retention: json['retention'] as int,
      recordTimeline: json['recordTimeline'] as bool,
      renderTimeline: json['renderTimeline'] as bool,
      timelineEnabled: json['timelineEnabled'] as bool,
      timelineExperiment: json['timelineExperiment'] as bool,
      shouldUpgrade: json['shouldUpgrade'] as bool,
      timezone: json['timezone'] as String,
      openidEnabled: json['openidEnabled'] as bool,
      sendProductEmails: json['sendProductEmails'] as bool,
      sendWeeklyReport: json['sendWeeklyReport'] as bool,
      sendTimerNotifications: json['sendTimerNotifications'] as bool,
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Projects.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeEntries: (json['timeEntries'] as List<dynamic>)
          .map((e) => TimeEntries.fromJson(e as Map<String, dynamic>))
          .toList(),
      workspaces: (json['workspaces'] as List<dynamic>)
          .map((e) => Workspaces.fromJson(e as Map<String, dynamic>))
          .toList(),
      durationFormat: json['durationFormat'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'apiToken': instance.apiToken,
      'defaultWid': instance.defaultWid,
      'email': instance.email,
      'fullname': instance.fullname,
      'jqueryTimeofdayFormat': instance.jqueryTimeofdayFormat,
      'jqueryDateFormat': instance.jqueryDateFormat,
      'timeofdayFormat': instance.timeofdayFormat,
      'dateFormat': instance.dateFormat,
      'storeStartAndStopTime': instance.storeStartAndStopTime,
      'beginningOfWeek': instance.beginningOfWeek,
      'language': instance.language,
      'imageUrl': instance.imageUrl,
      'sidebarPiechart': instance.sidebarPiechart,
      'at': instance.at,
      'createdAt': instance.createdAt,
      'retention': instance.retention,
      'recordTimeline': instance.recordTimeline,
      'renderTimeline': instance.renderTimeline,
      'timelineEnabled': instance.timelineEnabled,
      'timelineExperiment': instance.timelineExperiment,
      'shouldUpgrade': instance.shouldUpgrade,
      'timezone': instance.timezone,
      'openidEnabled': instance.openidEnabled,
      'sendProductEmails': instance.sendProductEmails,
      'sendWeeklyReport': instance.sendWeeklyReport,
      'sendTimerNotifications': instance.sendTimerNotifications,
      'projects': instance.projects,
      'timeEntries': instance.timeEntries,
      'workspaces': instance.workspaces,
      'durationFormat': instance.durationFormat,
    };

Projects _$ProjectsFromJson(Map<String, dynamic> json) => Projects(
      id: json['id'] as int,
      wid: json['wid'] as int,
      name: json['name'] as String,
      billable: json['billable'] as bool,
      isPrivate: json['isPrivate'] as bool,
      active: json['active'] as bool,
      template: json['template'] as bool,
      at: json['at'] as String,
      createdAt: json['createdAt'] as String,
      color: json['color'] as String,
      autoEstimates: json['autoEstimates'] as bool,
      actualHours: json['actualHours'] as int,
      hexColor: json['hexColor'] as String,
    );

Map<String, dynamic> _$ProjectsToJson(Projects instance) => <String, dynamic>{
      'id': instance.id,
      'wid': instance.wid,
      'name': instance.name,
      'billable': instance.billable,
      'isPrivate': instance.isPrivate,
      'active': instance.active,
      'template': instance.template,
      'at': instance.at,
      'createdAt': instance.createdAt,
      'color': instance.color,
      'autoEstimates': instance.autoEstimates,
      'actualHours': instance.actualHours,
      'hexColor': instance.hexColor,
    };

TimeEntries _$TimeEntriesFromJson(Map<String, dynamic> json) => TimeEntries(
      id: json['id'] as int,
      guid: json['guid'] as String,
      wid: json['wid'] as int,
      pid: json['pid'] as int,
      billable: json['billable'] as bool,
      start: json['start'] as String,
      stop: json['stop'] as String,
      duration: json['duration'] as int,
      description: json['description'] as String,
      duronly: json['duronly'] as bool,
      at: json['at'] as String,
      uid: json['uid'] as int,
    );

Map<String, dynamic> _$TimeEntriesToJson(TimeEntries instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guid': instance.guid,
      'wid': instance.wid,
      'pid': instance.pid,
      'billable': instance.billable,
      'start': instance.start,
      'stop': instance.stop,
      'duration': instance.duration,
      'description': instance.description,
      'duronly': instance.duronly,
      'at': instance.at,
      'uid': instance.uid,
    };

Workspaces _$WorkspacesFromJson(Map<String, dynamic> json) => Workspaces(
      id: json['id'] as int,
      name: json['name'] as String,
      profile: json['profile'] as int,
      premium: json['premium'] as bool,
      admin: json['admin'] as bool,
      defaultHourlyRate: json['defaultHourlyRate'] as int,
      defaultCurrency: json['defaultCurrency'] as String,
      onlyAdminsMayCreateProjects: json['onlyAdminsMayCreateProjects'] as bool,
      onlyAdminsSeeBillableRates: json['onlyAdminsSeeBillableRates'] as bool,
      onlyAdminsSeeTeamDashboard: json['onlyAdminsSeeTeamDashboard'] as bool,
      projectsBillableByDefault: json['projectsBillableByDefault'] as bool,
      rounding: json['rounding'] as int,
      roundingMinutes: json['roundingMinutes'] as int,
      apiToken: json['apiToken'] as String,
      at: json['at'] as String,
      icalEnabled: json['icalEnabled'] as bool,
    );

Map<String, dynamic> _$WorkspacesToJson(Workspaces instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
      'premium': instance.premium,
      'admin': instance.admin,
      'defaultHourlyRate': instance.defaultHourlyRate,
      'defaultCurrency': instance.defaultCurrency,
      'onlyAdminsMayCreateProjects': instance.onlyAdminsMayCreateProjects,
      'onlyAdminsSeeBillableRates': instance.onlyAdminsSeeBillableRates,
      'onlyAdminsSeeTeamDashboard': instance.onlyAdminsSeeTeamDashboard,
      'projectsBillableByDefault': instance.projectsBillableByDefault,
      'rounding': instance.rounding,
      'roundingMinutes': instance.roundingMinutes,
      'apiToken': instance.apiToken,
      'at': instance.at,
      'icalEnabled': instance.icalEnabled,
    };
