// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JiraCaseList _$JiraCaseListFromJson(Map<String, dynamic> json) => JiraCaseList(
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JiraCaseListToJson(JiraCaseList instance) =>
    <String, dynamic>{
      'sections': instance.sections,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      label: json['label'] as String?,
      sub: json['sub'] as String?,
      id: json['id'] as String?,
      issues: (json['issues'] as List<dynamic>)
          .map((e) => Issue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'issues': instance.issues,
      'label': instance.label,
      'sub': instance.sub,
    };

Issue _$IssueFromJson(Map<String, dynamic> json) => Issue(
      id: json['id'] as int?,
      key: json['key'] as String,
      keyHtml: json['keyHtml'] as String?,
      img: json['img'] as String?,
      summary: json['summary'] as String,
      summaryText: json['summaryText'] as String?,
    );

Map<String, dynamic> _$IssueToJson(Issue instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'key': instance.key,
      'keyHtml': instance.keyHtml,
      'summary': instance.summary,
      'summaryText': instance.summaryText,
    };
