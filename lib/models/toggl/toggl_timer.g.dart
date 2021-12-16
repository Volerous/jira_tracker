// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggl_timer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TogglTimer _$TogglTimerFromJson(Map<String, dynamic> json) => TogglTimer(
      id: json['id'] as int,
      guid: json['guid'] as String,
      wid: json['wid'] as int,
      pid: json['pid'] as int,
      billable: json['billable'] as bool,
      start: DateTime.parse(json['start'] as String),
      stop: DateTime.parse(json['stop'] as String),
      duration: Duration(microseconds: json['duration'] as int),
      description: json['description'] as String,
      duronly: json['duronly'] as bool,
      at: DateTime.parse(json['at'] as String),
      uid: json['uid'] as int,
    );

Map<String, dynamic> _$TogglTimerToJson(TogglTimer instance) =>
    <String, dynamic>{
      'at': instance.at.toIso8601String(),
      'billable': instance.billable,
      'description': instance.description,
      'duration': instance.duration.inMicroseconds,
      'duronly': instance.duronly,
      'guid': instance.guid,
      'id': instance.id,
      'pid': instance.pid,
      'start': instance.start.toIso8601String(),
      'stop': instance.stop.toIso8601String(),
      'uid': instance.uid,
      'wid': instance.wid,
    };
