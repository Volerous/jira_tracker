import 'package:jira_tracker/models/models.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;

part 'toggl.g.dart';

@RestApi(baseUrl: "https://api.track.toggl.com/api/v8")
abstract class TogglService {
  factory TogglService(Dio dio, {String baseUrl}) = _TogglService;
  @GET("/time_entries")
  @Headers(<String, dynamic>{
    "Authorization":
        "Basic Y2JmMmM5MzM2MmEyZDRkMWMwMmYyOTJjNGRmYTY0MDQ6YXBpX3Rva2Vu",
  })
  Future<List<TogglTimer>> getTimeEntries(
    @Query("start_date") String startDate,
    @Query("end_date") String endDate,
  );
  @GET("/me")
  @Headers(<String, dynamic>{
    "Authorization":
        "Basic Y2JmMmM5MzM2MmEyZDRkMWMwMmYyOTJjNGRmYTY0MDQ6YXBpX3Rva2Vu",
  })
  Future<TogglUser> getMe({
    @Query("with_related_data") bool withRelatedData = true,
  });
}
