import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GouverneratRecord extends FirestoreRecord {
  GouverneratRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "loc" field.
  LatLng? _loc;
  LatLng? get loc => _loc;
  bool hasLoc() => _loc != null;

  // "numberOfVists" field.
  int? _numberOfVists;
  int get numberOfVists => _numberOfVists ?? 0;
  bool hasNumberOfVists() => _numberOfVists != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _loc = snapshotData['loc'] as LatLng?;
    _numberOfVists = castToType<int>(snapshotData['numberOfVists']);
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gouvernerat');

  static Stream<GouverneratRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GouverneratRecord.fromSnapshot(s));

  static Future<GouverneratRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GouverneratRecord.fromSnapshot(s));

  static GouverneratRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GouverneratRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GouverneratRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GouverneratRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GouverneratRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GouverneratRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGouverneratRecordData({
  String? name,
  LatLng? loc,
  int? numberOfVists,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'loc': loc,
      'numberOfVists': numberOfVists,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class GouverneratRecordDocumentEquality implements Equality<GouverneratRecord> {
  const GouverneratRecordDocumentEquality();

  @override
  bool equals(GouverneratRecord? e1, GouverneratRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.loc == e2?.loc &&
        e1?.numberOfVists == e2?.numberOfVists &&
        e1?.users == e2?.users;
  }

  @override
  int hash(GouverneratRecord? e) =>
      const ListEquality().hash([e?.name, e?.loc, e?.numberOfVists, e?.users]);

  @override
  bool isValidKey(Object? o) => o is GouverneratRecord;
}
