// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConqerantPriceStruct extends FFFirebaseStruct {
  ConqerantPriceStruct({
    DocumentReference? conqurant,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _conqurant = conqurant,
        _price = price,
        super(firestoreUtilData);

  // "conqurant" field.
  DocumentReference? _conqurant;
  DocumentReference? get conqurant => _conqurant;
  set conqurant(DocumentReference? val) => _conqurant = val;

  bool hasConqurant() => _conqurant != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ConqerantPriceStruct fromMap(Map<String, dynamic> data) =>
      ConqerantPriceStruct(
        conqurant: data['conqurant'] as DocumentReference?,
        price: castToType<double>(data['price']),
      );

  static ConqerantPriceStruct? maybeFromMap(dynamic data) => data is Map
      ? ConqerantPriceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'conqurant': _conqurant,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'conqurant': serializeParam(
          _conqurant,
          ParamType.DocumentReference,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ConqerantPriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConqerantPriceStruct(
        conqurant: deserializeParam(
          data['conqurant'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['enemies'],
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ConqerantPriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConqerantPriceStruct &&
        conqurant == other.conqurant &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([conqurant, price]);
}

ConqerantPriceStruct createConqerantPriceStruct({
  DocumentReference? conqurant,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConqerantPriceStruct(
      conqurant: conqurant,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConqerantPriceStruct? updateConqerantPriceStruct(
  ConqerantPriceStruct? conqerantPrice, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    conqerantPrice
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConqerantPriceStructData(
  Map<String, dynamic> firestoreData,
  ConqerantPriceStruct? conqerantPrice,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (conqerantPrice == null) {
    return;
  }
  if (conqerantPrice.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && conqerantPrice.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final conqerantPriceData =
      getConqerantPriceFirestoreData(conqerantPrice, forFieldValue);
  final nestedData =
      conqerantPriceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = conqerantPrice.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConqerantPriceFirestoreData(
  ConqerantPriceStruct? conqerantPrice, [
  bool forFieldValue = false,
]) {
  if (conqerantPrice == null) {
    return {};
  }
  final firestoreData = mapToFirestore(conqerantPrice.toMap());

  // Add any Firestore field values
  conqerantPrice.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConqerantPriceListFirestoreData(
  List<ConqerantPriceStruct>? conqerantPrices,
) =>
    conqerantPrices
        ?.map((e) => getConqerantPriceFirestoreData(e, true))
        .toList() ??
    [];
