import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarketRecord extends FirestoreRecord {
  MarketRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "products" field.
  List<DocumentReference>? _products;
  List<DocumentReference> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "gouvernerat" field.
  DocumentReference? _gouvernerat;
  DocumentReference? get gouvernerat => _gouvernerat;
  bool hasGouvernerat() => _gouvernerat != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "relation" field.
  String? _relation;
  String get relation => _relation ?? '';
  bool hasRelation() => _relation != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _products = getDataList(snapshotData['products']);
    _gouvernerat = snapshotData['gouvernerat'] as DocumentReference?;
    _type = snapshotData['Type'] as String?;
    _relation = snapshotData['relation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('market');

  static Stream<MarketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarketRecord.fromSnapshot(s));

  static Future<MarketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarketRecord.fromSnapshot(s));

  static MarketRecord fromSnapshot(DocumentSnapshot snapshot) => MarketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarketRecordData({
  String? name,
  String? adresse,
  LatLng? location,
  DocumentReference? gouvernerat,
  String? type,
  String? relation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'adresse': adresse,
      'location': location,
      'gouvernerat': gouvernerat,
      'Type': type,
      'relation': relation,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarketRecordDocumentEquality implements Equality<MarketRecord> {
  const MarketRecordDocumentEquality();

  @override
  bool equals(MarketRecord? e1, MarketRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.adresse == e2?.adresse &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.gouvernerat == e2?.gouvernerat &&
        e1?.type == e2?.type &&
        e1?.relation == e2?.relation;
  }

  @override
  int hash(MarketRecord? e) => const ListEquality().hash([
        e?.name,
        e?.adresse,
        e?.location,
        e?.products,
        e?.gouvernerat,
        e?.type,
        e?.relation
      ]);

  @override
  bool isValidKey(Object? o) => o is MarketRecord;
}
