import 'package:json_annotation/json_annotation.dart';
part 'worklog.g.dart';

@JsonSerializable()
class JiraWorklog {
  JiraWorklog({
    this.attributes,
    this.billableSeconds,
    this.workerId,
    this.comment,
    this.started,
    this.timeSpentSeconds,
    this.originTaskId,
    this.remainingEstimate,
  });

  factory JiraWorklog.fromJson(Map<String, dynamic> json) =>
      _$JiraWorklogFromJson(json);

  dynamic attributes;
  int? billableSeconds;
  String? comment;
  String? originTaskId;
  dynamic remainingEstimate;
  DateTime? started;
  int? timeSpentSeconds;
  String? workerId;

  Map<String, dynamic> toJson() => _$JiraWorklogToJson(this);
}

// @JsonSerializable()
// class Attributes {
//   Attributes();
//   // factory from
// }
