// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SummarizeLogStruct extends FFFirebaseStruct {
  SummarizeLogStruct({
    List<DateTime>? xAxis,
    List<int>? yAxis,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAxis = xAxis,
        _yAxis = yAxis,
        super(firestoreUtilData);

  // "XAxis" field.
  List<DateTime>? _xAxis;
  List<DateTime> get xAxis => _xAxis ?? const [];
  set xAxis(List<DateTime>? val) => _xAxis = val;

  void updateXAxis(Function(List<DateTime>) updateFn) {
    updateFn(_xAxis ??= []);
  }

  bool hasXAxis() => _xAxis != null;

  // "YAxis" field.
  List<int>? _yAxis;
  List<int> get yAxis => _yAxis ?? const [];
  set yAxis(List<int>? val) => _yAxis = val;

  void updateYAxis(Function(List<int>) updateFn) {
    updateFn(_yAxis ??= []);
  }

  bool hasYAxis() => _yAxis != null;

  static SummarizeLogStruct fromMap(Map<String, dynamic> data) =>
      SummarizeLogStruct(
        xAxis: getDataList(data['XAxis']),
        yAxis: getDataList(data['YAxis']),
      );

  static SummarizeLogStruct? maybeFromMap(dynamic data) => data is Map
      ? SummarizeLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'XAxis': _xAxis,
        'YAxis': _yAxis,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'XAxis': serializeParam(
          _xAxis,
          ParamType.DateTime,
          isList: true,
        ),
        'YAxis': serializeParam(
          _yAxis,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static SummarizeLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      SummarizeLogStruct(
        xAxis: deserializeParam<DateTime>(
          data['XAxis'],
          ParamType.DateTime,
          true,
        ),
        yAxis: deserializeParam<int>(
          data['YAxis'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'SummarizeLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SummarizeLogStruct &&
        listEquality.equals(xAxis, other.xAxis) &&
        listEquality.equals(yAxis, other.yAxis);
  }

  @override
  int get hashCode => const ListEquality().hash([xAxis, yAxis]);
}

SummarizeLogStruct createSummarizeLogStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SummarizeLogStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SummarizeLogStruct? updateSummarizeLogStruct(
  SummarizeLogStruct? summarizeLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    summarizeLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSummarizeLogStructData(
  Map<String, dynamic> firestoreData,
  SummarizeLogStruct? summarizeLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (summarizeLog == null) {
    return;
  }
  if (summarizeLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && summarizeLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final summarizeLogData =
      getSummarizeLogFirestoreData(summarizeLog, forFieldValue);
  final nestedData =
      summarizeLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = summarizeLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSummarizeLogFirestoreData(
  SummarizeLogStruct? summarizeLog, [
  bool forFieldValue = false,
]) {
  if (summarizeLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(summarizeLog.toMap());

  // Add any Firestore field values
  summarizeLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSummarizeLogListFirestoreData(
  List<SummarizeLogStruct>? summarizeLogs,
) =>
    summarizeLogs?.map((e) => getSummarizeLogFirestoreData(e, true)).toList() ??
    [];
