import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/d_icon_success_check_mark_v1_widget.dart';
import '/components/d_info_txn_success_message_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CorporateSuccessTransactionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for D_Icon_SuccessCheckMark_v1 component.
  late DIconSuccessCheckMarkV1Model dIconSuccessCheckMarkV1Model;
  // Model for D_Info_TxnSuccessMessage_v1 component.
  late DInfoTxnSuccessMessageV1Model dInfoTxnSuccessMessageV1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dIconSuccessCheckMarkV1Model =
        createModel(context, () => DIconSuccessCheckMarkV1Model());
    dInfoTxnSuccessMessageV1Model =
        createModel(context, () => DInfoTxnSuccessMessageV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    dIconSuccessCheckMarkV1Model.dispose();
    dInfoTxnSuccessMessageV1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
