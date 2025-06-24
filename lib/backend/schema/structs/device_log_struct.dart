// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceLogStruct extends FFFirebaseStruct {
  DeviceLogStruct({
    String? id,
    String? startTime,
    String? endTime,
    LogTye? logType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _startTime = startTime,
        _endTime = endTime,
        _logType = logType,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "logType" field.
  LogTye? _logType;
  LogTye? get logType => _logType;
  set logType(LogTye? val) => _logType = val;

  bool hasLogType() => _logType != null;

  static DeviceLogStruct fromMap(Map<String, dynamic> data) => DeviceLogStruct(
        id: data['id'] as String?,
        startTime: data['startTime'] as String?,
        endTime: data['endTime'] as String?,
        logType: data['logType'] is LogTye
            ? data['logType']
            : deserializeEnum<LogTye>(data['logType']),
      );

  static DeviceLogStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'startTime': _startTime,
        'endTime': _endTime,
        'logType': _logType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'logType': serializeParam(
          _logType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static DeviceLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceLogStruct(
        id: deserializeParam(
          data['id'],
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
        logType: deserializeParam<LogTye>(
          data['logType'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'DeviceLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceLogStruct &&
        id == other.id &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        logType == other.logType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, startTime, endTime, logType]);
}

DeviceLogStruct createDeviceLogStruct({
  String? id,
  String? startTime,
  String? endTime,
  LogTye? logType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeviceLogStruct(
      id: id,
      startTime: startTime,
      endTime: endTime,
      logType: logType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeviceLogStruct? updateDeviceLogStruct(
  DeviceLogStruct? deviceLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deviceLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeviceLogStructData(
  Map<String, dynamic> firestoreData,
  DeviceLogStruct? deviceLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deviceLog == null) {
    return;
  }
  if (deviceLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deviceLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deviceLogData = getDeviceLogFirestoreData(deviceLog, forFieldValue);
  final nestedData = deviceLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deviceLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeviceLogFirestoreData(
  DeviceLogStruct? deviceLog, [
  bool forFieldValue = false,
]) {
  if (deviceLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deviceLog.toMap());

  // Add any Firestore field values
  deviceLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeviceLogListFirestoreData(
  List<DeviceLogStruct>? deviceLogs,
) =>
    deviceLogs?.map((e) => getDeviceLogFirestoreData(e, true)).toList() ?? [];
