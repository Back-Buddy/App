// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserRelationStruct extends FFFirebaseStruct {
  UserRelationStruct({
    bool? isFollowing,
    bool? isFollowedBy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isFollowing = isFollowing,
        _isFollowedBy = isFollowedBy,
        super(firestoreUtilData);

  // "isFollowing" field.
  bool? _isFollowing;
  bool get isFollowing => _isFollowing ?? false;
  set isFollowing(bool? val) => _isFollowing = val;

  bool hasIsFollowing() => _isFollowing != null;

  // "isFollowedBy" field.
  bool? _isFollowedBy;
  bool get isFollowedBy => _isFollowedBy ?? false;
  set isFollowedBy(bool? val) => _isFollowedBy = val;

  bool hasIsFollowedBy() => _isFollowedBy != null;

  static UserRelationStruct fromMap(Map<String, dynamic> data) =>
      UserRelationStruct(
        isFollowing: data['isFollowing'] as bool?,
        isFollowedBy: data['isFollowedBy'] as bool?,
      );

  static UserRelationStruct? maybeFromMap(dynamic data) => data is Map
      ? UserRelationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isFollowing': _isFollowing,
        'isFollowedBy': _isFollowedBy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isFollowing': serializeParam(
          _isFollowing,
          ParamType.bool,
        ),
        'isFollowedBy': serializeParam(
          _isFollowedBy,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserRelationStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserRelationStruct(
        isFollowing: deserializeParam(
          data['isFollowing'],
          ParamType.bool,
          false,
        ),
        isFollowedBy: deserializeParam(
          data['isFollowedBy'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserRelationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserRelationStruct &&
        isFollowing == other.isFollowing &&
        isFollowedBy == other.isFollowedBy;
  }

  @override
  int get hashCode => const ListEquality().hash([isFollowing, isFollowedBy]);
}

UserRelationStruct createUserRelationStruct({
  bool? isFollowing,
  bool? isFollowedBy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserRelationStruct(
      isFollowing: isFollowing,
      isFollowedBy: isFollowedBy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserRelationStruct? updateUserRelationStruct(
  UserRelationStruct? userRelation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userRelation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserRelationStructData(
  Map<String, dynamic> firestoreData,
  UserRelationStruct? userRelation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userRelation == null) {
    return;
  }
  if (userRelation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userRelation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userRelationData =
      getUserRelationFirestoreData(userRelation, forFieldValue);
  final nestedData =
      userRelationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userRelation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserRelationFirestoreData(
  UserRelationStruct? userRelation, [
  bool forFieldValue = false,
]) {
  if (userRelation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userRelation.toMap());

  // Add any Firestore field values
  userRelation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserRelationListFirestoreData(
  List<UserRelationStruct>? userRelations,
) =>
    userRelations?.map((e) => getUserRelationFirestoreData(e, true)).toList() ??
    [];
