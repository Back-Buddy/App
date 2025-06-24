import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BackBuddy API Group Code

class BackBuddyAPIGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'https://api.backbuddy.tech';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
  };
  static ApiV1DeviceidGETCall apiV1DeviceidGETCall = ApiV1DeviceidGETCall();
  static ApivDeviceidPATCHACTIVECall apivDeviceidPATCHACTIVECall =
      ApivDeviceidPATCHACTIVECall();
  static ApiV1DeviceidDELETECall apiV1DeviceidDELETECall =
      ApiV1DeviceidDELETECall();
  static ApivDeviceGETACTIVECall apivDeviceGETACTIVECall =
      ApivDeviceGETACTIVECall();
  static ApivDeviceGETCall apivDeviceGETCall = ApivDeviceGETCall();
  static ApivDeviceidPATCHNAMECall apivDeviceidPATCHNAMECall =
      ApivDeviceidPATCHNAMECall();
  static ApivDeviceidPATCHThresholdCall apivDeviceidPATCHThresholdCall =
      ApivDeviceidPATCHThresholdCall();
  static ApiNotificationCall apiNotificationCall = ApiNotificationCall();
  static ApivUserSearchCall apivUserSearchCall = ApivUserSearchCall();
  static ApiGetUserCall apiGetUserCall = ApiGetUserCall();
  static ApiGetRelationCall apiGetRelationCall = ApiGetRelationCall();
  static ApiFollowUserCall apiFollowUserCall = ApiFollowUserCall();
  static ApiUnfollowUserCall apiUnfollowUserCall = ApiUnfollowUserCall();
  static ApiReportFeedGETCall apiReportFeedGETCall = ApiReportFeedGETCall();
  static ApiReportLikeCall apiReportLikeCall = ApiReportLikeCall();
  static ApiGetFollowersCall apiGetFollowersCall = ApiGetFollowersCall();
  static ApiReportSingleUserCall apiReportSingleUserCall =
      ApiReportSingleUserCall();
  static ApiReportGetStreakCall apiReportGetStreakCall =
      ApiReportGetStreakCall();
  static ApiGetFollowingCall apiGetFollowingCall = ApiGetFollowingCall();
  static ApiCreateReportCall apiCreateReportCall = ApiCreateReportCall();
  static ApiReportLikesCall apiReportLikesCall = ApiReportLikesCall();
  static ApivReportEditCall apivReportEditCall = ApivReportEditCall();
  static ApiReportGetCall apiReportGetCall = ApiReportGetCall();
  static ApivReportDeleteCall apivReportDeleteCall = ApivReportDeleteCall();
  static ApiDeviceLogsCall apiDeviceLogsCall = ApiDeviceLogsCall();
  static ApiDeviceLogCall apiDeviceLogCall = ApiDeviceLogCall();
  static ApiV1DevicePOSTCall apiV1DevicePOSTCall = ApiV1DevicePOSTCall();
}

class ApiV1DeviceidGETCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/Device/{id} GET',
      apiUrl: '${baseUrl}/api/v1/Device/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivDeviceidPATCHACTIVECall {
  Future<ApiCallResponse> call({
    String? id = '',
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "active": ${active}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apivDeviceid PATCH ACTIVE',
      apiUrl: '${baseUrl}/api/v1/Device/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiV1DeviceidDELETECall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/Device/{id} DELETE',
      apiUrl: '${baseUrl}/api/v1/Device/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivDeviceGETACTIVECall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE',
      apiUrl: '${baseUrl}/api/v1/Device',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'Active': active,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivDeviceGETCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    int? page = 1,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET',
      apiUrl: '${baseUrl}/api/v1/Device',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'Page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? deviceNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApivDeviceidPATCHNAMECall {
  Future<ApiCallResponse> call({
    String? name = '\"\"',
    String? id = '\"\"',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apivDeviceid PATCH NAME',
      apiUrl: '${baseUrl}/api/v1/Device/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivDeviceidPATCHThresholdCall {
  Future<ApiCallResponse> call({
    String? threshold = '\"00:10:00\"',
    String? id = '\"\"',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "threshold": "${escapeStringForJson(threshold)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apivDeviceid PATCH Threshold',
      apiUrl: '${baseUrl}/api/v1/Device/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiNotificationCall {
  Future<ApiCallResponse> call({
    String? fcmToken = '\"\"',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
"fcmToken": "${escapeStringForJson(fcmToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'api Notification',
      apiUrl: '${baseUrl}/api/v1/Notification',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivUserSearchCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? searchTerm = '10',
    String? expandType = 'None',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivUser Search',
      apiUrl: '${baseUrl}/api/v1/User/Search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Limit': limit,
        'SearchTerm': searchTerm,
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? expandType = 'None',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api GetUser',
      apiUrl: '${baseUrl}/api/v1/User/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetRelationCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api GetRelation',
      apiUrl: '${baseUrl}/api/v1/User/${userId}/relation',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiFollowUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api FollowUser',
      apiUrl: '${baseUrl}/api/v1/user/${userId}/follow',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUnfollowUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api UnfollowUser',
      apiUrl: '${baseUrl}/api/v1/user/${userId}/follow',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportFeedGETCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    int? page = 1,
    String? expandType = 'None',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api ReportFeed GET',
      apiUrl: '${baseUrl}/api/v1/Report/feed',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'Page': page,
        'ExpandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportLikeCall {
  Future<ApiCallResponse> call({
    String? reportId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api Report Like',
      apiUrl: '${baseUrl}/api/v1/Report/${reportId}/like',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetFollowersCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? size = 10,
    int? page = 1,
    String? expandType = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api get Followers',
      apiUrl: '${baseUrl}/api/v1/User/${userId}/followers',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'userId': userId,
        'Size': size,
        'Page': page,
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportSingleUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? size,
    int? page,
    String? expandType = 'Creator',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api Report single user',
      apiUrl: '${baseUrl}/api/v1/Report',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'userId': userId,
        'size': size,
        'page': page,
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportGetStreakCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? size,
    int? page,
    String? expandType = 'Creator',
    String? startTime = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api Report get streak',
      apiUrl: '${baseUrl}/api/v1/Report',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'userId': userId,
        'size': size,
        'page': page,
        'expandType': expandType,
        'startTime': startTime,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetFollowingCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? size = 10,
    int? page = 1,
    String? expandType = 'Relations',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api get Following',
      apiUrl: '${baseUrl}/api/v1/User/${userId}/following',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'page': page,
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCreateReportCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? visibilityType = '',
    String? deviceId = '',
    String? startTime = '',
    String? endTime = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "visibilityType": "${escapeStringForJson(visibilityType)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "startTime": "${escapeStringForJson(startTime)}",
  "endTime": "${escapeStringForJson(endTime)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'api createReport',
      apiUrl: '${baseUrl}/api/v1/Report',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportLikesCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    int? page = 1,
    String? reportId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api Report Likes',
      apiUrl: '${baseUrl}/api/v1/Report/${reportId}/likes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'Page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivReportEditCall {
  Future<ApiCallResponse> call({
    String? reportId = '',
    String? name = '',
    String? visibilityType = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "visibilityType": "${escapeStringForJson(visibilityType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apivReport edit',
      apiUrl: '${baseUrl}/api/v1/Report/${reportId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiReportGetCall {
  Future<ApiCallResponse> call({
    String? reportId = '',
    String? expandType = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api Report get',
      apiUrl: '${baseUrl}/api/v1/Report/${reportId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'expandType': expandType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApivReportDeleteCall {
  Future<ApiCallResponse> call({
    String? reportId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivReport delete',
      apiUrl: '${baseUrl}/api/v1/Report/${reportId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeviceLogsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    int? page = 1,
    int? size = 10,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api DeviceLogs',
      apiUrl: '${baseUrl}/api/v1/Device/${deviceId}/DeviceLog',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Size': size,
        'Page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeviceLogCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? logId = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'api DeviceLog',
      apiUrl: '${baseUrl}/api/v1/Device/${deviceId}/DeviceLog/${logId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiV1DevicePOSTCall {
  Future<ApiCallResponse> call({
    String? deviceName = '',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(deviceName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: '/api/v1/Device POST',
      apiUrl: '${baseUrl}/api/v1/Device',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BackBuddy API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
