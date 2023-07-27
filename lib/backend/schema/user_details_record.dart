import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsRecord extends FirestoreRecord {
  UserDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "AccountNumber" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "CardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "AccountBalance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  bool hasAccountBalance() => _accountBalance != null;

  // "CardExpDate" field.
  DateTime? _cardExpDate;
  DateTime? get cardExpDate => _cardExpDate;
  bool hasCardExpDate() => _cardExpDate != null;

  // "AccountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "DebitCardNo" field.
  int? _debitCardNo;
  int get debitCardNo => _debitCardNo ?? 0;
  bool hasDebitCardNo() => _debitCardNo != null;

  // "DebitCardExp" field.
  DateTime? _debitCardExp;
  DateTime? get debitCardExp => _debitCardExp;
  bool hasDebitCardExp() => _debitCardExp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _accountNumber = castToType<int>(snapshotData['AccountNumber']);
    _cardNumber = castToType<int>(snapshotData['CardNumber']);
    _accountBalance = castToType<double>(snapshotData['AccountBalance']);
    _cardExpDate = snapshotData['CardExpDate'] as DateTime?;
    _accountType = snapshotData['AccountType'] as String?;
    _debitCardNo = castToType<int>(snapshotData['DebitCardNo']);
    _debitCardExp = snapshotData['DebitCardExp'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserDetails');

  static Stream<UserDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDetailsRecord.fromSnapshot(s));

  static Future<UserDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDetailsRecord.fromSnapshot(s));

  static UserDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDetailsRecordData({
  String? name,
  int? accountNumber,
  int? cardNumber,
  double? accountBalance,
  DateTime? cardExpDate,
  String? accountType,
  int? debitCardNo,
  DateTime? debitCardExp,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'AccountNumber': accountNumber,
      'CardNumber': cardNumber,
      'AccountBalance': accountBalance,
      'CardExpDate': cardExpDate,
      'AccountType': accountType,
      'DebitCardNo': debitCardNo,
      'DebitCardExp': debitCardExp,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDetailsRecordDocumentEquality implements Equality<UserDetailsRecord> {
  const UserDetailsRecordDocumentEquality();

  @override
  bool equals(UserDetailsRecord? e1, UserDetailsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.accountBalance == e2?.accountBalance &&
        e1?.cardExpDate == e2?.cardExpDate &&
        e1?.accountType == e2?.accountType &&
        e1?.debitCardNo == e2?.debitCardNo &&
        e1?.debitCardExp == e2?.debitCardExp &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserDetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.accountNumber,
        e?.cardNumber,
        e?.accountBalance,
        e?.cardExpDate,
        e?.accountType,
        e?.debitCardNo,
        e?.debitCardExp,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDetailsRecord;
}
