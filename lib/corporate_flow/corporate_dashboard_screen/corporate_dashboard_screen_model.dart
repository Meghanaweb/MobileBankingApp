import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_action_features_menu_v1_widget.dart';
import '/components/d_info_card_details_v2_widget.dart';
import '/components/d_info_card_details_v3_widget.dart';
import '/components/d_info_corporate_container_v1_widget.dart';
import '/components/d_info_recent_transaction_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CorporateDashboardScreenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for D_Info_CardDetails_v3 component.
  late DInfoCardDetailsV3Model dInfoCardDetailsV3Model;
  // Model for D_Info_CardDetails_v2 component.
  late DInfoCardDetailsV2Model dInfoCardDetailsV2Model;
  // Model for Bu_Action_FeaturesMenu_v1 component.
  late BuActionFeaturesMenuV1Model buActionFeaturesMenuV1Model;
  // Model for D_Info_CorporateContainer_v1 component.
  late DInfoCorporateContainerV1Model dInfoCorporateContainerV1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dInfoCardDetailsV3Model =
        createModel(context, () => DInfoCardDetailsV3Model());
    dInfoCardDetailsV2Model =
        createModel(context, () => DInfoCardDetailsV2Model());
    buActionFeaturesMenuV1Model =
        createModel(context, () => BuActionFeaturesMenuV1Model());
    dInfoCorporateContainerV1Model =
        createModel(context, () => DInfoCorporateContainerV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    dInfoCardDetailsV3Model.dispose();
    dInfoCardDetailsV2Model.dispose();
    buActionFeaturesMenuV1Model.dispose();
    dInfoCorporateContainerV1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
