// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worklog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JiraWorklog _$JiraWorklogFromJson(Map<String, dynamic> json) => JiraWorklog(
      attributes: json['attributes'],
      billableSeconds: json['billableSeconds'] as int?,
      workerId: json['workerId'] as String?,
      comment: json['comment'] as String?,
      started: json['started'] == null
          ? null
          : DateTime.parse(json['started'] as String),
      timeSpentSeconds: json['timeSpentSeconds'] as int?,
      originTaskId: json['originTaskId'] as String?,
      remainingEstimate: json['remainingEstimate'],
    );

Map<String, dynamic> _$JiraWorklogToJson(JiraWorklog instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'billableSeconds': instance.billableSeconds,
      'comment': instance.comment,
      'originTaskId': instance.originTaskId,
      'remainingEstimate': instance.remainingEstimate,
      'started': instance.started?.toIso8601String(),
      'timeSpentSeconds': instance.timeSpentSeconds,
      'workerId': instance.workerId,
    };
