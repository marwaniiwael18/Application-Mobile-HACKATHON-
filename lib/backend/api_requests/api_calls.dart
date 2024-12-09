import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MailWelcomeCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? userName = '',
  }) async {
    const ffApiRequestBody = '''
{
  "sk-bf-1692c12e-88ec-479e-b4a9-1e8b42b2b1a4": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'mailWelcome',
      apiUrl:
          'https://api.backendflow.io/v1/email?templateId=y2taUtkDDEurBVNWoRZ8&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName&UserName=$userName',
      callType: ApiCallType.POST,
      headers: {},
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

class EmailVisitCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? userName = '',
    String? clientname = '',
    String? date = '',
    String? type = '',
    String? relation = '',
    String? price = '',
  }) async {
    const ffApiRequestBody = '''
{
  "sk-bf-1692c12e-88ec-479e-b4a9-1e8b42b2b1a4": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EmailVisit',
      apiUrl:
          'https://api.backendflow.io/v1/email?templateId=py9ApaObPjHfS09sqRZN&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName&UserName=$userName&Clientname=$clientname&Date=$date&type=$type&relation=$relation&price=$price',
      callType: ApiCallType.POST,
      headers: {},
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
