// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DeviceDtoStruct extends FFFirebaseStruct {
  DeviceDtoStruct({
    String? id,
    String? name,
    String? threshold,
    bool? active,
    bool? online,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _threshold = threshold,
        _active = active,
        _online = online,
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

  // "threshold" field.
  String? _threshold;
  String get threshold => _threshold ?? '';
  set threshold(String? val) => _threshold = val;

  bool hasThreshold() => _threshold != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;

  bool hasActive() => _active != null;

  // "online" field.
  bool? _online;
  bool get online => _online ?? false;
  set online(bool? val) => _online = val;

  bool hasOnline() => _online != null;

  static DeviceDtoStruct fromMap(Map<String, dynamic> data) => DeviceDtoStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        threshold: data['threshold'] as String?,
        active: data['active'] as bool?,
        online: data['online'] as bool?,
      );

  static DeviceDtoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceDtoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'threshold': _threshold,
        'active': _active,
        'online': _online,
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
        'threshold': serializeParam(
          _threshold,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'online': serializeParam(
          _online,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DeviceDtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceDtoStruct(
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
        threshold: deserializeParam(
          data['threshold'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        online: deserializeParam(
          data['online'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DeviceDtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceDtoStruct &&
        id == other.id &&
        name == other.name &&
        threshold == other.threshold &&
        active == other.active &&
        online == other.online;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, threshold, active, online]);
}

DeviceDtoStruct createDeviceDtoStruct({
  String? id,
  String? name,
  String? threshold,
  bool? active,
  bool? online,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeviceDtoStruct(
      id: id,
      name: name,
      threshold: threshold,
      active: active,
      online: online,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeviceDtoStruct? updateDeviceDtoStruct(
  DeviceDtoStruct? deviceDto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deviceDto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeviceDtoStructData(
  Map<String, dynamic> firestoreData,
  DeviceDtoStruct? deviceDto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deviceDto == null) {
    return;
  }
  if (deviceDto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deviceDto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deviceDtoData = getDeviceDtoFirestoreData(deviceDto, forFieldValue);
  final nestedData = deviceDtoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deviceDto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeviceDtoFirestoreData(
  DeviceDtoStruct? deviceDto, [
  bool forFieldValue = false,
]) {
  if (deviceDto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deviceDto.toMap());

  // Add any Firestore field values
  deviceDto.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeviceDtoListFirestoreData(
  List<DeviceDtoStruct>? deviceDtos,
) =>
    deviceDtos?.map((e) => getDeviceDtoFirestoreData(e, true)).toList() ?? [];
