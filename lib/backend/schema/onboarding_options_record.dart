import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingOptionsRecord extends FirestoreRecord {
  OnboardingOptionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "allergen_options" field.
  List<String>? _allergenOptions;
  List<String> get allergenOptions => _allergenOptions ?? const [];
  bool hasAllergenOptions() => _allergenOptions != null;

  // "diet_options" field.
  List<DietOptionsStruct>? _dietOptions;
  List<DietOptionsStruct> get dietOptions => _dietOptions ?? const [];
  bool hasDietOptions() => _dietOptions != null;

  // "ingredient_options" field.
  List<String>? _ingredientOptions;
  List<String> get ingredientOptions => _ingredientOptions ?? const [];
  bool hasIngredientOptions() => _ingredientOptions != null;

  // "meal_options" field.
  List<String>? _mealOptions;
  List<String> get mealOptions => _mealOptions ?? const [];
  bool hasMealOptions() => _mealOptions != null;

  // "SKU" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "orderedQuantity" field.
  int? _orderedQuantity;
  int get orderedQuantity => _orderedQuantity ?? 0;
  bool hasOrderedQuantity() => _orderedQuantity != null;

  // "stockLevel" field.
  int? _stockLevel;
  int get stockLevel => _stockLevel ?? 0;
  bool hasStockLevel() => _stockLevel != null;

  // "restockingLeadTime" field.
  int? _restockingLeadTime;
  int get restockingLeadTime => _restockingLeadTime ?? 0;
  bool hasRestockingLeadTime() => _restockingLeadTime != null;

  // "ratio" field.
  double? _ratio;
  double get ratio => _ratio ?? 0.0;
  bool hasRatio() => _ratio != null;

  void _initializeFields() {
    _allergenOptions = getDataList(snapshotData['allergen_options']);
    _dietOptions = getStructList(
      snapshotData['diet_options'],
      DietOptionsStruct.fromMap,
    );
    _ingredientOptions = getDataList(snapshotData['ingredient_options']);
    _mealOptions = getDataList(snapshotData['meal_options']);
    _sku = snapshotData['SKU'] as String?;
    _name = snapshotData['name'] as String?;
    _orderedQuantity = castToType<int>(snapshotData['orderedQuantity']);
    _stockLevel = castToType<int>(snapshotData['stockLevel']);
    _restockingLeadTime = castToType<int>(snapshotData['restockingLeadTime']);
    _ratio = castToType<double>(snapshotData['ratio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('onboarding_options');

  static Stream<OnboardingOptionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnboardingOptionsRecord.fromSnapshot(s));

  static Future<OnboardingOptionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OnboardingOptionsRecord.fromSnapshot(s));

  static OnboardingOptionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnboardingOptionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnboardingOptionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnboardingOptionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnboardingOptionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnboardingOptionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnboardingOptionsRecordData({
  String? sku,
  String? name,
  int? orderedQuantity,
  int? stockLevel,
  int? restockingLeadTime,
  double? ratio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SKU': sku,
      'name': name,
      'orderedQuantity': orderedQuantity,
      'stockLevel': stockLevel,
      'restockingLeadTime': restockingLeadTime,
      'ratio': ratio,
    }.withoutNulls,
  );

  return firestoreData;
}

class OnboardingOptionsRecordDocumentEquality
    implements Equality<OnboardingOptionsRecord> {
  const OnboardingOptionsRecordDocumentEquality();

  @override
  bool equals(OnboardingOptionsRecord? e1, OnboardingOptionsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.allergenOptions, e2?.allergenOptions) &&
        listEquality.equals(e1?.dietOptions, e2?.dietOptions) &&
        listEquality.equals(e1?.ingredientOptions, e2?.ingredientOptions) &&
        listEquality.equals(e1?.mealOptions, e2?.mealOptions) &&
        e1?.sku == e2?.sku &&
        e1?.name == e2?.name &&
        e1?.orderedQuantity == e2?.orderedQuantity &&
        e1?.stockLevel == e2?.stockLevel &&
        e1?.restockingLeadTime == e2?.restockingLeadTime &&
        e1?.ratio == e2?.ratio;
  }

  @override
  int hash(OnboardingOptionsRecord? e) => const ListEquality().hash([
        e?.allergenOptions,
        e?.dietOptions,
        e?.ingredientOptions,
        e?.mealOptions,
        e?.sku,
        e?.name,
        e?.orderedQuantity,
        e?.stockLevel,
        e?.restockingLeadTime,
        e?.ratio
      ]);

  @override
  bool isValidKey(Object? o) => o is OnboardingOptionsRecord;
}
