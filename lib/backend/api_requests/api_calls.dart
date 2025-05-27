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
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCopyCall
      apivDeviceGETACTIVECopyCopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCopyCall();
  static ApivDeviceGETACTIVECopyCopyCall apivDeviceGETACTIVECopyCopyCall =
      ApivDeviceGETACTIVECopyCopyCall();
  static ApivDeviceGETACTIVECopyCall apivDeviceGETACTIVECopyCall =
      ApivDeviceGETACTIVECopyCall();
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
    double? threshold = 10,
    String? id = '\"\"',
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "threshold": "00:${threshold}:00"
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName:
          'apivDevice GET ACTIVE Copy Copy Copy Copy Copy Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName:
          'apivDevice GET ACTIVE Copy Copy Copy Copy Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy Copy Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy Copy',
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

class ApivDeviceGETACTIVECopyCopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy Copy',
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

class ApivDeviceGETACTIVECopyCall {
  Future<ApiCallResponse> call({
    int? size = 10,
    bool? active,
    String? authToken = '',
  }) async {
    final baseUrl = BackBuddyAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'apivDevice GET ACTIVE Copy',
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
