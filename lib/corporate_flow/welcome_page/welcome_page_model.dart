import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_action_btn_primary_v1_widget.dart';
import '/components/bu_input_phone_text_field_v1_widget.dart';
import '/components/d_logo_brand_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for D_Logo_Brand_v1 component.
  late DLogoBrandV1Model dLogoBrandV1Model;
  // Model for Bu_Input_PhoneTextField_v1 component.
  late BuInputPhoneTextFieldV1Model buInputPhoneTextFieldV1Model;
  // Model for Bu_ActionBtn_Primary_v1 component.
  late BuActionBtnPrimaryV1Model buActionBtnPrimaryV1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dLogoBrandV1Model = createModel(context, () => DLogoBrandV1Model());
    buInputPhoneTextFieldV1Model =
        createModel(context, () => BuInputPhoneTextFieldV1Model());
    buActionBtnPrimaryV1Model =
        createModel(context, () => BuActionBtnPrimaryV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    dLogoBrandV1Model.dispose();
    buInputPhoneTextFieldV1Model.dispose();
    buActionBtnPrimaryV1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
