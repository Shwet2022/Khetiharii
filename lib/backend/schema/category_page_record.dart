import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryPageRecord extends FirestoreRecord {
  CategoryPageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "Category_image" field.
  List<String>? _categoryImage;
  List<String> get categoryImage => _categoryImage ?? const [];
  bool hasCategoryImage() => _categoryImage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _categoryName = snapshotData['category_name'] as String?;
    _categoryImage = getDataList(snapshotData['Category_image']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('categoryPage')
          : FirebaseFirestore.instance.collectionGroup('categoryPage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('categoryPage').doc(id);

  static Stream<CategoryPageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryPageRecord.fromSnapshot(s));

  static Future<CategoryPageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryPageRecord.fromSnapshot(s));

  static CategoryPageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryPageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryPageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryPageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryPageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryPageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryPageRecordData({
  String? categoryName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category_name': categoryName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryPageRecordDocumentEquality
    implements Equality<CategoryPageRecord> {
  const CategoryPageRecordDocumentEquality();

  @override
  bool equals(CategoryPageRecord? e1, CategoryPageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoryName == e2?.categoryName &&
        listEquality.equals(e1?.categoryImage, e2?.categoryImage);
  }

  @override
  int hash(CategoryPageRecord? e) =>
      const ListEquality().hash([e?.categoryName, e?.categoryImage]);

  @override
  bool isValidKey(Object? o) => o is CategoryPageRecord;
}
