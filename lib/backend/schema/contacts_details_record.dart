import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactsDetailsRecord extends FirestoreRecord {
  ContactsDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ContactName" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  bool hasContactName() => _contactName != null;

  // "ContactImage" field.
  String? _contactImage;
  String get contactImage => _contactImage ?? '';
  bool hasContactImage() => _contactImage != null;

  // "ContactNumber" field.
  int? _contactNumber;
  int get contactNumber => _contactNumber ?? 0;
  bool hasContactNumber() => _contactNumber != null;

  // "ContactAccountNumber" field.
  int? _contactAccountNumber;
  int get contactAccountNumber => _contactAccountNumber ?? 0;
  bool hasContactAccountNumber() => _contactAccountNumber != null;

  // "ContactCardNumber" field.
  int? _contactCardNumber;
  int get contactCardNumber => _contactCardNumber ?? 0;
  bool hasContactCardNumber() => _contactCardNumber != null;

  // "ContactAccountType" field.
  String? _contactAccountType;
  String get contactAccountType => _contactAccountType ?? '';
  bool hasContactAccountType() => _contactAccountType != null;

  void _initializeFields() {
    _contactName = snapshotData['ContactName'] as String?;
    _contactImage = snapshotData['ContactImage'] as String?;
    _contactNumber = castToType<int>(snapshotData['ContactNumber']);
    _contactAccountNumber =
        castToType<int>(snapshotData['ContactAccountNumber']);
    _contactCardNumber = castToType<int>(snapshotData['ContactCardNumber']);
    _contactAccountType = snapshotData['ContactAccountType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContactsDetails');

  static Stream<ContactsDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactsDetailsRecord.fromSnapshot(s));

  static Future<ContactsDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactsDetailsRecord.fromSnapshot(s));

  static ContactsDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactsDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactsDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactsDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactsDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactsDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactsDetailsRecordData({
  String? contactName,
  String? contactImage,
  int? contactNumber,
  int? contactAccountNumber,
  int? contactCardNumber,
  String? contactAccountType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ContactName': contactName,
      'ContactImage': contactImage,
      'ContactNumber': contactNumber,
      'ContactAccountNumber': contactAccountNumber,
      'ContactCardNumber': contactCardNumber,
      'ContactAccountType': contactAccountType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactsDetailsRecordDocumentEquality
    implements Equality<ContactsDetailsRecord> {
  const ContactsDetailsRecordDocumentEquality();

  @override
  bool equals(ContactsDetailsRecord? e1, ContactsDetailsRecord? e2) {
    return e1?.contactName == e2?.contactName &&
        e1?.contactImage == e2?.contactImage &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.contactAccountNumber == e2?.contactAccountNumber &&
        e1?.contactCardNumber == e2?.contactCardNumber &&
        e1?.contactAccountType == e2?.contactAccountType;
  }

  @override
  int hash(ContactsDetailsRecord? e) => const ListEquality().hash([
        e?.contactName,
        e?.contactImage,
        e?.contactNumber,
        e?.contactAccountNumber,
        e?.contactCardNumber,
        e?.contactAccountType
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactsDetailsRecord;
}
