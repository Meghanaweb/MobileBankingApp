import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionDetailsRecord extends FirestoreRecord {
  TransactionDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TransactionId" field.
  int? _transactionId;
  int get transactionId => _transactionId ?? 0;
  bool hasTransactionId() => _transactionId != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "AmountDebit" field.
  double? _amountDebit;
  double get amountDebit => _amountDebit ?? 0.0;
  bool hasAmountDebit() => _amountDebit != null;

  // "AccountNumber" field.
  DocumentReference? _accountNumber;
  DocumentReference? get accountNumber => _accountNumber;
  bool hasAccountNumber() => _accountNumber != null;

  // "AccountBalance" field.
  DocumentReference? _accountBalance;
  DocumentReference? get accountBalance => _accountBalance;
  bool hasAccountBalance() => _accountBalance != null;

  // "Contactname" field.
  String? _contactname;
  String get contactname => _contactname ?? '';
  bool hasContactname() => _contactname != null;

  // "Contactimage" field.
  String? _contactimage;
  String get contactimage => _contactimage ?? '';
  bool hasContactimage() => _contactimage != null;

  // "CreatedDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "CardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "AccountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _transactionId = castToType<int>(snapshotData['TransactionId']);
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _amountDebit = castToType<double>(snapshotData['AmountDebit']);
    _accountNumber = snapshotData['AccountNumber'] as DocumentReference?;
    _accountBalance = snapshotData['AccountBalance'] as DocumentReference?;
    _contactname = snapshotData['Contactname'] as String?;
    _contactimage = snapshotData['Contactimage'] as String?;
    _createdDate = snapshotData['CreatedDate'] as DateTime?;
    _cardNumber = castToType<int>(snapshotData['CardNumber']);
    _accountType = snapshotData['AccountType'] as String?;
    _status = snapshotData['Status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TransactionDetails');

  static Stream<TransactionDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionDetailsRecord.fromSnapshot(s));

  static Future<TransactionDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TransactionDetailsRecord.fromSnapshot(s));

  static TransactionDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionDetailsRecordData({
  int? transactionId,
  String? title,
  String? description,
  double? amountDebit,
  DocumentReference? accountNumber,
  DocumentReference? accountBalance,
  String? contactname,
  String? contactimage,
  DateTime? createdDate,
  int? cardNumber,
  String? accountType,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TransactionId': transactionId,
      'Title': title,
      'Description': description,
      'AmountDebit': amountDebit,
      'AccountNumber': accountNumber,
      'AccountBalance': accountBalance,
      'Contactname': contactname,
      'Contactimage': contactimage,
      'CreatedDate': createdDate,
      'CardNumber': cardNumber,
      'AccountType': accountType,
      'Status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionDetailsRecordDocumentEquality
    implements Equality<TransactionDetailsRecord> {
  const TransactionDetailsRecordDocumentEquality();

  @override
  bool equals(TransactionDetailsRecord? e1, TransactionDetailsRecord? e2) {
    return e1?.transactionId == e2?.transactionId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.amountDebit == e2?.amountDebit &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.accountBalance == e2?.accountBalance &&
        e1?.contactname == e2?.contactname &&
        e1?.contactimage == e2?.contactimage &&
        e1?.createdDate == e2?.createdDate &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.accountType == e2?.accountType &&
        e1?.status == e2?.status;
  }

  @override
  int hash(TransactionDetailsRecord? e) => const ListEquality().hash([
        e?.transactionId,
        e?.title,
        e?.description,
        e?.amountDebit,
        e?.accountNumber,
        e?.accountBalance,
        e?.contactname,
        e?.contactimage,
        e?.createdDate,
        e?.cardNumber,
        e?.accountType,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionDetailsRecord;
}
