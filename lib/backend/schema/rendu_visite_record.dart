import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RenduVisiteRecord extends FirestoreRecord {
  RenduVisiteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Produit" field.
  DocumentReference? _produit;
  DocumentReference? get produit => _produit;
  bool hasProduit() => _produit != null;

  // "ennemiyPrice" field.
  double? _ennemiyPrice;
  double get ennemiyPrice => _ennemiyPrice ?? 0.0;
  bool hasEnnemiyPrice() => _ennemiyPrice != null;

  // "ennemie" field.
  DocumentReference? _ennemie;
  DocumentReference? get ennemie => _ennemie;
  bool hasEnnemie() => _ennemie != null;

  // "meeting" field.
  DocumentReference? _meeting;
  DocumentReference? get meeting => _meeting;
  bool hasMeeting() => _meeting != null;

  // "SotacibPrice" field.
  int? _sotacibPrice;
  int get sotacibPrice => _sotacibPrice ?? 0;
  bool hasSotacibPrice() => _sotacibPrice != null;

  void _initializeFields() {
    _produit = snapshotData['Produit'] as DocumentReference?;
    _ennemiyPrice = castToType<double>(snapshotData['ennemiyPrice']);
    _ennemie = snapshotData['ennemie'] as DocumentReference?;
    _meeting = snapshotData['meeting'] as DocumentReference?;
    _sotacibPrice = castToType<int>(snapshotData['SotacibPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('renduVisite');

  static Stream<RenduVisiteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RenduVisiteRecord.fromSnapshot(s));

  static Future<RenduVisiteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RenduVisiteRecord.fromSnapshot(s));

  static RenduVisiteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RenduVisiteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RenduVisiteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RenduVisiteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RenduVisiteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RenduVisiteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRenduVisiteRecordData({
  DocumentReference? produit,
  double? ennemiyPrice,
  DocumentReference? ennemie,
  DocumentReference? meeting,
  int? sotacibPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Produit': produit,
      'ennemiyPrice': ennemiyPrice,
      'ennemie': ennemie,
      'meeting': meeting,
      'SotacibPrice': sotacibPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class RenduVisiteRecordDocumentEquality implements Equality<RenduVisiteRecord> {
  const RenduVisiteRecordDocumentEquality();

  @override
  bool equals(RenduVisiteRecord? e1, RenduVisiteRecord? e2) {
    return e1?.produit == e2?.produit &&
        e1?.ennemiyPrice == e2?.ennemiyPrice &&
        e1?.ennemie == e2?.ennemie &&
        e1?.meeting == e2?.meeting &&
        e1?.sotacibPrice == e2?.sotacibPrice;
  }

  @override
  int hash(RenduVisiteRecord? e) => const ListEquality().hash(
      [e?.produit, e?.ennemiyPrice, e?.ennemie, e?.meeting, e?.sotacibPrice]);

  @override
  bool isValidKey(Object? o) => o is RenduVisiteRecord;
}
