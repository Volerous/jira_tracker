import 'dart:io';

import 'package:jira_tracker/models/jira/case_list.dart';
import 'package:jira_tracker/models/models.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;
part 'jira.g.dart';

@RestApi(baseUrl: "https://novicell.atlassian.net/rest/api/3/")
abstract class JiraService {
  factory JiraService(Dio dio) => _JiraService(dio);
  @POST("/search")
  @Headers(<String, dynamic>{
    "Authorization":
        "Basic cG1jQG5vdmljZWxsLmRrOnhzdENBWlQ4aW9qaVdoc3R5RGxjNjA4MA==",
    "authority": "novicell.atlassian.net",
    "pragma": " no-cache",
    "cache-control": " no-cache",
    "sec-ch-ua": " ^\^",
    "Content-Type": " application/json",
    "X-Atlassian-Token": "no-check"
  })
  Future<JiraCaseList> getJiracases(@Body() JiraCaseQuery query);
}

// @RestApi(baseUrl: "")