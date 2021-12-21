import 'package:json_annotation/json_annotation.dart';
part 'case_list.g.dart';

@JsonSerializable()
class JiraCaseList {
  JiraCaseList({
    required this.sections,
  });

  factory JiraCaseList.fromJson(Map<String, dynamic> json) =>
      _$JiraCaseListFromJson(json);

  List<Section> sections;

  Map<String, dynamic> toJson() => _$JiraCaseListToJson(this);
}

@JsonSerializable()
class Section {
  Section({
    this.label,
    this.sub,
    this.id,
    required this.issues,
  });

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);

  String? id;
  List<Issue> issues;
  String? label;
  String? sub;

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable()
class Issue {
  Issue({
    this.id,
    required this.key,
    this.keyHtml,
    this.img,
    required this.summary,
    this.summaryText,
  });

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);

  int? id;
  String? img;
  String key;
  String? keyHtml;
  String summary;
  String? summaryText;

  Map<String, dynamic> toJson() => _$IssueToJson(this);
}
