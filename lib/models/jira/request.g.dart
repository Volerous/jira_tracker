// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JiraCaseQuery _$JiraCaseQueryFromJson(Map<String, dynamic> json) =>
    JiraCaseQuery(
      jql: json['jql'] as String? ??
          "project in projectsWhereUserHasPermission(\"Work on issues\") order by lastViewed DESC",
      fields: (json['fields'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["issuetype", "summary"],
      maxResults: json['maxResults'] as int? ?? 25,
    );

Map<String, dynamic> _$JiraCaseQueryToJson(JiraCaseQuery instance) =>
    <String, dynamic>{
      'jql': instance.jql,
      'fields': instance.fields,
      'maxResults': instance.maxResults,
    };
