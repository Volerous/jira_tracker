import 'package:json_annotation/json_annotation.dart';
part 'request.g.dart';

@JsonSerializable()
class JiraCaseQuery {
  JiraCaseQuery({
    this.jql =
        "project in projectsWhereUserHasPermission(\"Work on issues\") order by lastViewed DESC",
    this.fields = const ["issuetype", "summary"],
    this.maxResults = 25,
  });
  factory JiraCaseQuery.fromJson(Map<String, dynamic> json) =>
      _$JiraCaseQueryFromJson(json);

  String jql;
  List<String> fields;
  int maxResults;

  Map<String, dynamic> toJson() => _$JiraCaseQueryToJson(this);
}
