// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LogStruct extends FFFirebaseStruct {
  LogStruct({
    String? id,
    String? startTime,
    String? endTime,
    String? logType,
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
  String? _logType;
  String get logType => _logType ?? '';
  set logType(String? val) => _logType = val;

  bool hasLogType() => _logType != null;

  static LogStruct fromMap(Map<String, dynamic> data) => LogStruct(
        id: data['id'] as String?,
        startTime: data['startTime'] as String?,
        endTime: data['endTime'] as String?,
        logType: data['logType'] as String?,
      );

  static LogStruct? maybeFromMap(dynamic data) =>
      data is Map ? LogStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'startTime': _startTime,
        'endTime': _endTime,
        'logType': _logType,
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
          ParamType.String,
        ),
      }.withoutNulls;

  static LogStruct fromSerializableMap(Map<String, dynamic> data) => LogStruct(
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
        logType: deserializeParam(
          data['logType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LogStruct &&
        id == other.id &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        logType == other.logType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, startTime, endTime, logType]);
}

LogStruct createLogStruct({
  String? id,
  String? startTime,
  String? endTime,
  String? logType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LogStruct(
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

LogStruct? updateLogStruct(
  LogStruct? log, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    log
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLogStructData(
  Map<String, dynamic> firestoreData,
  LogStruct? log,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (log == null) {
    return;
  }
  if (log.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && log.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final logData = getLogFirestoreData(log, forFieldValue);
  final nestedData = logData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = log.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLogFirestoreData(
  LogStruct? log, [
  bool forFieldValue = false,
]) {
  if (log == null) {
    return {};
  }
  final firestoreData = mapToFirestore(log.toMap());

  // Add any Firestore field values
  log.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLogListFirestoreData(
  List<LogStruct>? logs,
) =>
    logs?.map((e) => getLogFirestoreData(e, true)).toList() ?? [];
