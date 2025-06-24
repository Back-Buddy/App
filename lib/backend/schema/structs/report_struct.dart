// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportStruct extends FFFirebaseStruct {
  ReportStruct({
    String? id,
    String? name,
    ReportVisibilityType? visibilityType,
    String? deviceId,
    String? startTime,
    String? endTime,
    List<String>? usedLogsIds,
    List<DeviceLogStruct>? usedLogs,
    ReportMetadataStruct? metadata,
    String? createdAt,
    int? likeCount,
    String? creatorId,
    UserStruct? creator,
    bool? isLikedByRequester,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _visibilityType = visibilityType,
        _deviceId = deviceId,
        _startTime = startTime,
        _endTime = endTime,
        _usedLogsIds = usedLogsIds,
        _usedLogs = usedLogs,
        _metadata = metadata,
        _createdAt = createdAt,
        _likeCount = likeCount,
        _creatorId = creatorId,
        _creator = creator,
        _isLikedByRequester = isLikedByRequester,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "visibilityType" field.
  ReportVisibilityType? _visibilityType;
  ReportVisibilityType? get visibilityType => _visibilityType;
  set visibilityType(ReportVisibilityType? val) => _visibilityType = val;

  bool hasVisibilityType() => _visibilityType != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  set endTime(String? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "usedLogsIds" field.
  List<String>? _usedLogsIds;
  List<String> get usedLogsIds => _usedLogsIds ?? const [];
  set usedLogsIds(List<String>? val) => _usedLogsIds = val;

  void updateUsedLogsIds(Function(List<String>) updateFn) {
    updateFn(_usedLogsIds ??= []);
  }

  bool hasUsedLogsIds() => _usedLogsIds != null;

  // "usedLogs" field.
  List<DeviceLogStruct>? _usedLogs;
  List<DeviceLogStruct> get usedLogs => _usedLogs ?? const [];
  set usedLogs(List<DeviceLogStruct>? val) => _usedLogs = val;

  void updateUsedLogs(Function(List<DeviceLogStruct>) updateFn) {
    updateFn(_usedLogs ??= []);
  }

  bool hasUsedLogs() => _usedLogs != null;

  // "metadata" field.
  ReportMetadataStruct? _metadata;
  ReportMetadataStruct get metadata => _metadata ?? ReportMetadataStruct();
  set metadata(ReportMetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(ReportMetadataStruct) updateFn) {
    updateFn(_metadata ??= ReportMetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "likeCount" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "creatorId" field.
  String? _creatorId;
  String get creatorId => _creatorId ?? '';
  set creatorId(String? val) => _creatorId = val;

  bool hasCreatorId() => _creatorId != null;

  // "creator" field.
  UserStruct? _creator;
  UserStruct get creator => _creator ?? UserStruct();
  set creator(UserStruct? val) => _creator = val;

  void updateCreator(Function(UserStruct) updateFn) {
    updateFn(_creator ??= UserStruct());
  }

  bool hasCreator() => _creator != null;

  // "isLikedByRequester" field.
  bool? _isLikedByRequester;
  bool get isLikedByRequester => _isLikedByRequester ?? false;
  set isLikedByRequester(bool? val) => _isLikedByRequester = val;

  bool hasIsLikedByRequester() => _isLikedByRequester != null;

  static ReportStruct fromMap(Map<String, dynamic> data) => ReportStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        visibilityType: data['visibilityType'] is ReportVisibilityType
            ? data['visibilityType']
            : deserializeEnum<ReportVisibilityType>(data['visibilityType']),
        deviceId: data['deviceId'] as String?,
        startTime: data['startTime'] as String?,
        endTime: data['endTime'] as String?,
        usedLogsIds: getDataList(data['usedLogsIds']),
        usedLogs: getStructList(
          data['usedLogs'],
          DeviceLogStruct.fromMap,
        ),
        metadata: data['metadata'] is ReportMetadataStruct
            ? data['metadata']
            : ReportMetadataStruct.maybeFromMap(data['metadata']),
        createdAt: data['createdAt'] as String?,
        likeCount: castToType<int>(data['likeCount']),
        creatorId: data['creatorId'] as String?,
        creator: data['creator'] is UserStruct
            ? data['creator']
            : UserStruct.maybeFromMap(data['creator']),
        isLikedByRequester: data['isLikedByRequester'] as bool?,
      );

  static ReportStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReportStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'visibilityType': _visibilityType?.serialize(),
        'deviceId': _deviceId,
        'startTime': _startTime,
        'endTime': _endTime,
        'usedLogsIds': _usedLogsIds,
        'usedLogs': _usedLogs?.map((e) => e.toMap()).toList(),
        'metadata': _metadata?.toMap(),
        'createdAt': _createdAt,
        'likeCount': _likeCount,
        'creatorId': _creatorId,
        'creator': _creator?.toMap(),
        'isLikedByRequester': _isLikedByRequester,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'visibilityType': serializeParam(
          _visibilityType,
          ParamType.Enum,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.String,
        ),
        'usedLogsIds': serializeParam(
          _usedLogsIds,
          ParamType.String,
          isList: true,
        ),
        'usedLogs': serializeParam(
          _usedLogs,
          ParamType.DataStruct,
          isList: true,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'likeCount': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'creatorId': serializeParam(
          _creatorId,
          ParamType.String,
        ),
        'creator': serializeParam(
          _creator,
          ParamType.DataStruct,
        ),
        'isLikedByRequester': serializeParam(
          _isLikedByRequester,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ReportStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        visibilityType: deserializeParam<ReportVisibilityType>(
          data['visibilityType'],
          ParamType.Enum,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.String,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.String,
          false,
        ),
        usedLogsIds: deserializeParam<String>(
          data['usedLogsIds'],
          ParamType.String,
          true,
        ),
        usedLogs: deserializeStructParam<DeviceLogStruct>(
          data['usedLogs'],
          ParamType.DataStruct,
          true,
          structBuilder: DeviceLogStruct.fromSerializableMap,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: ReportMetadataStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        likeCount: deserializeParam(
          data['likeCount'],
          ParamType.int,
          false,
        ),
        creatorId: deserializeParam(
          data['creatorId'],
          ParamType.String,
          false,
        ),
        creator: deserializeStructParam(
          data['creator'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        isLikedByRequester: deserializeParam(
          data['isLikedByRequester'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ReportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReportStruct &&
        id == other.id &&
        name == other.name &&
        visibilityType == other.visibilityType &&
        deviceId == other.deviceId &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        listEquality.equals(usedLogsIds, other.usedLogsIds) &&
        listEquality.equals(usedLogs, other.usedLogs) &&
        metadata == other.metadata &&
        createdAt == other.createdAt &&
        likeCount == other.likeCount &&
        creatorId == other.creatorId &&
        creator == other.creator &&
        isLikedByRequester == other.isLikedByRequester;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        visibilityType,
        deviceId,
        startTime,
        endTime,
        usedLogsIds,
        usedLogs,
        metadata,
        createdAt,
        likeCount,
        creatorId,
        creator,
        isLikedByRequester
      ]);
}

ReportStruct createReportStruct({
  String? id,
  String? name,
  ReportVisibilityType? visibilityType,
  String? deviceId,
  String? startTime,
  String? endTime,
  ReportMetadataStruct? metadata,
  String? createdAt,
  int? likeCount,
  String? creatorId,
  UserStruct? creator,
  bool? isLikedByRequester,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportStruct(
      id: id,
      name: name,
      visibilityType: visibilityType,
      deviceId: deviceId,
      startTime: startTime,
      endTime: endTime,
      metadata: metadata ?? (clearUnsetFields ? ReportMetadataStruct() : null),
      createdAt: createdAt,
      likeCount: likeCount,
      creatorId: creatorId,
      creator: creator ?? (clearUnsetFields ? UserStruct() : null),
      isLikedByRequester: isLikedByRequester,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportStruct? updateReportStruct(
  ReportStruct? report, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    report
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportStructData(
  Map<String, dynamic> firestoreData,
  ReportStruct? report,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (report == null) {
    return;
  }
  if (report.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && report.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportData = getReportFirestoreData(report, forFieldValue);
  final nestedData = reportData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = report.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportFirestoreData(
  ReportStruct? report, [
  bool forFieldValue = false,
]) {
  if (report == null) {
    return {};
  }
  final firestoreData = mapToFirestore(report.toMap());

  // Handle nested data for "metadata" field.
  addReportMetadataStructData(
    firestoreData,
    report.hasMetadata() ? report.metadata : null,
    'metadata',
    forFieldValue,
  );

  // Handle nested data for "creator" field.
  addUserStructData(
    firestoreData,
    report.hasCreator() ? report.creator : null,
    'creator',
    forFieldValue,
  );

  // Add any Firestore field values
  report.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportListFirestoreData(
  List<ReportStruct>? reports,
) =>
    reports?.map((e) => getReportFirestoreData(e, true)).toList() ?? [];
