import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_action_btn_primary_v1_widget.dart';
import '/components/bu_input_six_digit_pin_v1_widget.dart';
import '/components/d_logo_brand_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for D_Logo_Brand_v1 component.
  late DLogoBrandV1Model dLogoBrandV1Model;
  // Model for Bu_Input_SixDigitPin_v1 component.
  late BuInputSixDigitPinV1Model buInputSixDigitPinV1Model;
  // Model for Bu_ActionBtn_Primary_v1 component.
  late BuActionBtnPrimaryV1Model buActionBtnPrimaryV1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dLogoBrandV1Model = createModel(context, () => DLogoBrandV1Model());
    buInputSixDigitPinV1Model =
        createModel(context, () => BuInputSixDigitPinV1Model());
    buActionBtnPrimaryV1Model =
        createModel(context, () => BuActionBtnPrimaryV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    dLogoBrandV1Model.dispose();
    buInputSixDigitPinV1Model.dispose();
    buActionBtnPrimaryV1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
