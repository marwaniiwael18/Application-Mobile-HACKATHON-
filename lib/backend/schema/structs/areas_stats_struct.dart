// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AreasStatsStruct extends FFFirebaseStruct {
  AreasStatsStruct({
    String? governeratName,
    int? numberOfVisits,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _governeratName = governeratName,
        _numberOfVisits = numberOfVisits,
        super(firestoreUtilData);

  // "GoverneratName" field.
  String? _governeratName;
  String get governeratName => _governeratName ?? '';
  set governeratName(String? val) => _governeratName = val;

  bool hasGoverneratName() => _governeratName != null;

  // "NumberOfVisits" field.
  int? _numberOfVisits;
  int get numberOfVisits => _numberOfVisits ?? 0;
  set numberOfVisits(int? val) => _numberOfVisits = val;

  void incrementNumberOfVisits(int amount) =>
      numberOfVisits = numberOfVisits + amount;

  bool hasNumberOfVisits() => _numberOfVisits != null;

  static AreasStatsStruct fromMap(Map<String, dynamic> data) =>
      AreasStatsStruct(
        governeratName: data['GoverneratName'] as String?,
        numberOfVisits: castToType<int>(data['NumberOfVisits']),
      );

  static AreasStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? AreasStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'GoverneratName': _governeratName,
        'NumberOfVisits': _numberOfVisits,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'GoverneratName': serializeParam(
          _governeratName,
          ParamType.String,
        ),
        'NumberOfVisits': serializeParam(
          _numberOfVisits,
          ParamType.int,
        ),
      }.withoutNulls;

  static AreasStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AreasStatsStruct(
        governeratName: deserializeParam(
          data['GoverneratName'],
          ParamType.String,
          false,
        ),
        numberOfVisits: deserializeParam(
          data['NumberOfVisits'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AreasStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AreasStatsStruct &&
        governeratName == other.governeratName &&
        numberOfVisits == other.numberOfVisits;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([governeratName, numberOfVisits]);
}

AreasStatsStruct createAreasStatsStruct({
  String? governeratName,
  int? numberOfVisits,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AreasStatsStruct(
      governeratName: governeratName,
      numberOfVisits: numberOfVisits,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AreasStatsStruct? updateAreasStatsStruct(
  AreasStatsStruct? areasStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    areasStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAreasStatsStructData(
  Map<String, dynamic> firestoreData,
  AreasStatsStruct? areasStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (areasStats == null) {
    return;
  }
  if (areasStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && areasStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final areasStatsData = getAreasStatsFirestoreData(areasStats, forFieldValue);
  final nestedData = areasStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = areasStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAreasStatsFirestoreData(
  AreasStatsStruct? areasStats, [
  bool forFieldValue = false,
]) {
  if (areasStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(areasStats.toMap());

  // Add any Firestore field values
  areasStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAreasStatsListFirestoreData(
  List<AreasStatsStruct>? areasStatss,
) =>
    areasStatss?.map((e) => getAreasStatsFirestoreData(e, true)).toList() ?? [];
