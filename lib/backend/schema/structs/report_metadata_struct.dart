// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReportMetadataStruct extends FFFirebaseStruct {
  ReportMetadataStruct({
    String? totalTime,
    String? sitTime,
    String? standTime,
    double? sitPercentage,
    double? standPercentage,
    int? postureChanges,
    String? averageSitPeriod,
    String? shortestSitPeriod,
    String? longestSitPeriod,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalTime = totalTime,
        _sitTime = sitTime,
        _standTime = standTime,
        _sitPercentage = sitPercentage,
        _standPercentage = standPercentage,
        _postureChanges = postureChanges,
        _averageSitPeriod = averageSitPeriod,
        _shortestSitPeriod = shortestSitPeriod,
        _longestSitPeriod = longestSitPeriod,
        super(firestoreUtilData);

  // "totalTime" field.
  String? _totalTime;
  String get totalTime => _totalTime ?? '';
  set totalTime(String? val) => _totalTime = val;

  bool hasTotalTime() => _totalTime != null;

  // "sitTime" field.
  String? _sitTime;
  String get sitTime => _sitTime ?? '';
  set sitTime(String? val) => _sitTime = val;

  bool hasSitTime() => _sitTime != null;

  // "standTime" field.
  String? _standTime;
  String get standTime => _standTime ?? '';
  set standTime(String? val) => _standTime = val;

  bool hasStandTime() => _standTime != null;

  // "sitPercentage" field.
  double? _sitPercentage;
  double get sitPercentage => _sitPercentage ?? 0.0;
  set sitPercentage(double? val) => _sitPercentage = val;

  void incrementSitPercentage(double amount) =>
      sitPercentage = sitPercentage + amount;

  bool hasSitPercentage() => _sitPercentage != null;

  // "standPercentage" field.
  double? _standPercentage;
  double get standPercentage => _standPercentage ?? 0.0;
  set standPercentage(double? val) => _standPercentage = val;

  void incrementStandPercentage(double amount) =>
      standPercentage = standPercentage + amount;

  bool hasStandPercentage() => _standPercentage != null;

  // "postureChanges" field.
  int? _postureChanges;
  int get postureChanges => _postureChanges ?? 0;
  set postureChanges(int? val) => _postureChanges = val;

  void incrementPostureChanges(int amount) =>
      postureChanges = postureChanges + amount;

  bool hasPostureChanges() => _postureChanges != null;

  // "averageSitPeriod" field.
  String? _averageSitPeriod;
  String get averageSitPeriod => _averageSitPeriod ?? '';
  set averageSitPeriod(String? val) => _averageSitPeriod = val;

  bool hasAverageSitPeriod() => _averageSitPeriod != null;

  // "shortestSitPeriod" field.
  String? _shortestSitPeriod;
  String get shortestSitPeriod => _shortestSitPeriod ?? '';
  set shortestSitPeriod(String? val) => _shortestSitPeriod = val;

  bool hasShortestSitPeriod() => _shortestSitPeriod != null;

  // "longestSitPeriod" field.
  String? _longestSitPeriod;
  String get longestSitPeriod => _longestSitPeriod ?? '';
  set longestSitPeriod(String? val) => _longestSitPeriod = val;

  bool hasLongestSitPeriod() => _longestSitPeriod != null;

  static ReportMetadataStruct fromMap(Map<String, dynamic> data) =>
      ReportMetadataStruct(
        totalTime: data['totalTime'] as String?,
        sitTime: data['sitTime'] as String?,
        standTime: data['standTime'] as String?,
        sitPercentage: castToType<double>(data['sitPercentage']),
        standPercentage: castToType<double>(data['standPercentage']),
        postureChanges: castToType<int>(data['postureChanges']),
        averageSitPeriod: data['averageSitPeriod'] as String?,
        shortestSitPeriod: data['shortestSitPeriod'] as String?,
        longestSitPeriod: data['longestSitPeriod'] as String?,
      );

  static ReportMetadataStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportMetadataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalTime': _totalTime,
        'sitTime': _sitTime,
        'standTime': _standTime,
        'sitPercentage': _sitPercentage,
        'standPercentage': _standPercentage,
        'postureChanges': _postureChanges,
        'averageSitPeriod': _averageSitPeriod,
        'shortestSitPeriod': _shortestSitPeriod,
        'longestSitPeriod': _longestSitPeriod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalTime': serializeParam(
          _totalTime,
          ParamType.String,
        ),
        'sitTime': serializeParam(
          _sitTime,
          ParamType.String,
        ),
        'standTime': serializeParam(
          _standTime,
          ParamType.String,
        ),
        'sitPercentage': serializeParam(
          _sitPercentage,
          ParamType.double,
        ),
        'standPercentage': serializeParam(
          _standPercentage,
          ParamType.double,
        ),
        'postureChanges': serializeParam(
          _postureChanges,
          ParamType.int,
        ),
        'averageSitPeriod': serializeParam(
          _averageSitPeriod,
          ParamType.String,
        ),
        'shortestSitPeriod': serializeParam(
          _shortestSitPeriod,
          ParamType.String,
        ),
        'longestSitPeriod': serializeParam(
          _longestSitPeriod,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportMetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportMetadataStruct(
        totalTime: deserializeParam(
          data['totalTime'],
          ParamType.String,
          false,
        ),
        sitTime: deserializeParam(
          data['sitTime'],
          ParamType.String,
          false,
        ),
        standTime: deserializeParam(
          data['standTime'],
          ParamType.String,
          false,
        ),
        sitPercentage: deserializeParam(
          data['sitPercentage'],
          ParamType.double,
          false,
        ),
        standPercentage: deserializeParam(
          data['standPercentage'],
          ParamType.double,
          false,
        ),
        postureChanges: deserializeParam(
          data['postureChanges'],
          ParamType.int,
          false,
        ),
        averageSitPeriod: deserializeParam(
          data['averageSitPeriod'],
          ParamType.String,
          false,
        ),
        shortestSitPeriod: deserializeParam(
          data['shortestSitPeriod'],
          ParamType.String,
          false,
        ),
        longestSitPeriod: deserializeParam(
          data['longestSitPeriod'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportMetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportMetadataStruct &&
        totalTime == other.totalTime &&
        sitTime == other.sitTime &&
        standTime == other.standTime &&
        sitPercentage == other.sitPercentage &&
        standPercentage == other.standPercentage &&
        postureChanges == other.postureChanges &&
        averageSitPeriod == other.averageSitPeriod &&
        shortestSitPeriod == other.shortestSitPeriod &&
        longestSitPeriod == other.longestSitPeriod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalTime,
        sitTime,
        standTime,
        sitPercentage,
        standPercentage,
        postureChanges,
        averageSitPeriod,
        shortestSitPeriod,
        longestSitPeriod
      ]);
}

ReportMetadataStruct createReportMetadataStruct({
  String? totalTime,
  String? sitTime,
  String? standTime,
  double? sitPercentage,
  double? standPercentage,
  int? postureChanges,
  String? averageSitPeriod,
  String? shortestSitPeriod,
  String? longestSitPeriod,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportMetadataStruct(
      totalTime: totalTime,
      sitTime: sitTime,
      standTime: standTime,
      sitPercentage: sitPercentage,
      standPercentage: standPercentage,
      postureChanges: postureChanges,
      averageSitPeriod: averageSitPeriod,
      shortestSitPeriod: shortestSitPeriod,
      longestSitPeriod: longestSitPeriod,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportMetadataStruct? updateReportMetadataStruct(
  ReportMetadataStruct? reportMetadata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reportMetadata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportMetadataStructData(
  Map<String, dynamic> firestoreData,
  ReportMetadataStruct? reportMetadata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reportMetadata == null) {
    return;
  }
  if (reportMetadata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reportMetadata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportMetadataData =
      getReportMetadataFirestoreData(reportMetadata, forFieldValue);
  final nestedData =
      reportMetadataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reportMetadata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportMetadataFirestoreData(
  ReportMetadataStruct? reportMetadata, [
  bool forFieldValue = false,
]) {
  if (reportMetadata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reportMetadata.toMap());

  // Add any Firestore field values
  reportMetadata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportMetadataListFirestoreData(
  List<ReportMetadataStruct>? reportMetadatas,
) =>
    reportMetadatas
        ?.map((e) => getReportMetadataFirestoreData(e, true))
        .toList() ??
    [];
