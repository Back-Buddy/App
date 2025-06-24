// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DeviceStruct extends FFFirebaseStruct {
  DeviceStruct({
    String? deviceId,
    String? secret,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _deviceId = deviceId,
        _secret = secret,
        super(firestoreUtilData);

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "secret" field.
  String? _secret;
  String get secret => _secret ?? '';
  set secret(String? val) => _secret = val;

  bool hasSecret() => _secret != null;

  static DeviceStruct fromMap(Map<String, dynamic> data) => DeviceStruct(
        deviceId: data['deviceId'] as String?,
        secret: data['secret'] as String?,
      );

  static DeviceStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeviceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'deviceId': _deviceId,
        'secret': _secret,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'secret': serializeParam(
          _secret,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceStruct(
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        secret: deserializeParam(
          data['secret'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceStruct &&
        deviceId == other.deviceId &&
        secret == other.secret;
  }

  @override
  int get hashCode => const ListEquality().hash([deviceId, secret]);
}

DeviceStruct createDeviceStruct({
  String? deviceId,
  String? secret,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeviceStruct(
      deviceId: deviceId,
      secret: secret,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeviceStruct? updateDeviceStruct(
  DeviceStruct? device, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    device
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeviceStructData(
  Map<String, dynamic> firestoreData,
  DeviceStruct? device,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (device == null) {
    return;
  }
  if (device.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && device.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deviceData = getDeviceFirestoreData(device, forFieldValue);
  final nestedData = deviceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = device.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeviceFirestoreData(
  DeviceStruct? device, [
  bool forFieldValue = false,
]) {
  if (device == null) {
    return {};
  }
  final firestoreData = mapToFirestore(device.toMap());

  // Add any Firestore field values
  device.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeviceListFirestoreData(
  List<DeviceStruct>? devices,
) =>
    devices?.map((e) => getDeviceFirestoreData(e, true)).toList() ?? [];
