import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_appbar_center_title_v1_widget.dart';
import '/components/bu_info_vertical_image_v1_widget.dart';
import '/components/bu_input_txn_amount_field_v1_widget.dart';
import '/components/d_info_text_v1_widget.dart';
import '/components/d_info_txn_card_details_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? transferredAmount;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Bu_Appbar_CenterTitle_v1 component.
  late BuAppbarCenterTitleV1Model buAppbarCenterTitleV1Model;
  // Model for Bu_Info_VerticalImage_v1 component.
  late BuInfoVerticalImageV1Model buInfoVerticalImageV1Model;
  // Model for Bu_Input_TxnAmountField_v1 component.
  late BuInputTxnAmountFieldV1Model buInputTxnAmountFieldV1Model;
  // Model for D_Info_Text_v1 component.
  late DInfoTextV1Model dInfoTextV1Model;
  // Model for D_Info_TxnCardDetails_v1 component.
  late DInfoTxnCardDetailsV1Model dInfoTxnCardDetailsV1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buAppbarCenterTitleV1Model =
        createModel(context, () => BuAppbarCenterTitleV1Model());
    buInfoVerticalImageV1Model =
        createModel(context, () => BuInfoVerticalImageV1Model());
    buInputTxnAmountFieldV1Model =
        createModel(context, () => BuInputTxnAmountFieldV1Model());
    dInfoTextV1Model = createModel(context, () => DInfoTextV1Model());
    dInfoTxnCardDetailsV1Model =
        createModel(context, () => DInfoTxnCardDetailsV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    buAppbarCenterTitleV1Model.dispose();
    buInfoVerticalImageV1Model.dispose();
    buInputTxnAmountFieldV1Model.dispose();
    dInfoTextV1Model.dispose();
    dInfoTxnCardDetailsV1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
