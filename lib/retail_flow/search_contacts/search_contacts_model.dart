import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_appbar_center_title_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SearchContactsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Bu_Appbar_CenterTitle_v1 component.
  late BuAppbarCenterTitleV1Model buAppbarCenterTitleV1Model;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ContactsDetailsRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buAppbarCenterTitleV1Model =
        createModel(context, () => BuAppbarCenterTitleV1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    buAppbarCenterTitleV1Model.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
