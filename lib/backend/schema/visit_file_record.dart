import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisitFileRecord extends FirestoreRecord {
  VisitFileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "market" field.
  DocumentReference? _market;
  DocumentReference? get market => _market;
  bool hasMarket() => _market != null;

  // "gouvernerat" field.
  DocumentReference? _gouvernerat;
  DocumentReference? get gouvernerat => _gouvernerat;
  bool hasGouvernerat() => _gouvernerat != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  bool hasRelation() => _relation != null;

  // "commentaire" field.
  String? _commentaire;
  String get commentaire => _commentaire ?? '';
  bool hasCommentaire() => _commentaire != null;

  // "Reclamation" field.
  String? _reclamation;
  String get reclamation => _reclamation ?? '';
  bool hasReclamation() => _reclamation != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _market = snapshotData['market'] as DocumentReference?;
    _gouvernerat = snapshotData['gouvernerat'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _relation = snapshotData['Relation'] as String?;
    _commentaire = snapshotData['commentaire'] as String?;
    _reclamation = snapshotData['Reclamation'] as String?;
    _audio = snapshotData['audio'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('VisitFile')
          : FirebaseFirestore.instance.collectionGroup('VisitFile');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('VisitFile').doc(id);

  static Stream<VisitFileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VisitFileRecord.fromSnapshot(s));

  static Future<VisitFileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VisitFileRecord.fromSnapshot(s));

  static VisitFileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VisitFileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VisitFileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VisitFileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VisitFileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VisitFileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVisitFileRecordData({
  DateTime? date,
  DocumentReference? userId,
  DocumentReference? market,
  DocumentReference? gouvernerat,
  String? type,
  String? relation,
  String? commentaire,
  String? reclamation,
  String? audio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'user_id': userId,
      'market': market,
      'gouvernerat': gouvernerat,
      'type': type,
      'Relation': relation,
      'commentaire': commentaire,
      'Reclamation': reclamation,
      'audio': audio,
    }.withoutNulls,
  );

  return firestoreData;
}

class VisitFileRecordDocumentEquality implements Equality<VisitFileRecord> {
  const VisitFileRecordDocumentEquality();

  @override
  bool equals(VisitFileRecord? e1, VisitFileRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.userId == e2?.userId &&
        e1?.market == e2?.market &&
        e1?.gouvernerat == e2?.gouvernerat &&
        e1?.type == e2?.type &&
        e1?.relation == e2?.relation &&
        e1?.commentaire == e2?.commentaire &&
        e1?.reclamation == e2?.reclamation &&
        e1?.audio == e2?.audio;
  }

  @override
  int hash(VisitFileRecord? e) => const ListEquality().hash([
        e?.date,
        e?.userId,
        e?.market,
        e?.gouvernerat,
        e?.type,
        e?.relation,
        e?.commentaire,
        e?.reclamation,
        e?.audio
      ]);

  @override
  bool isValidKey(Object? o) => o is VisitFileRecord;
}
