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
import 'corporate_transaction_model.dart';
export 'corporate_transaction_model.dart';

class CorporateTransactionWidget extends StatefulWidget {
  const CorporateTransactionWidget({
    Key? key,
    required this.contactlistitem,
  }) : super(key: key);

  final ContactsDetailsRecord? contactlistitem;

  @override
  _CorporateTransactionWidgetState createState() =>
      _CorporateTransactionWidgetState();
}

class _CorporateTransactionWidgetState
    extends State<CorporateTransactionWidget> {
  late CorporateTransactionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorporateTransactionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<UserDetailsRecord>>(
      stream: queryUserDetailsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserDetailsRecord> corporateTransactionUserDetailsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final corporateTransactionUserDetailsRecord =
            corporateTransactionUserDetailsRecordList.isNotEmpty
                ? corporateTransactionUserDetailsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.buAppbarCenterTitleV1Model,
                      updateCallback: () => setState(() {}),
                      child: BuAppbarCenterTitleV1Widget(
                        appbarTitle: 'Pay Money To',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.buInfoVerticalImageV1Model,
                      updateCallback: () => setState(() {}),
                      child: BuInfoVerticalImageV1Widget(
                        imagePath: widget.contactlistitem?.contactImage,
                        title: widget.contactlistitem?.contactName,
                        description: functions.accountNumberDigitMasking(widget
                            .contactlistitem!.contactAccountNumber
                            .toString()),
                        tapAction: () async {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.buInputTxnAmountFieldV1Model,
                      updateCallback: () => setState(() {}),
                      child: BuInputTxnAmountFieldV1Widget(),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: wrapWithModel(
                      model: _model.dInfoTextV1Model,
                      updateCallback: () => setState(() {}),
                      child: DInfoTextV1Widget(
                        text: 'Select Your Account',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => wrapWithModel(
                          model: _model.dInfoTxnCardDetailsV1Model,
                          updateCallback: () => setState(() {}),
                          child: DInfoTxnCardDetailsV1Widget(
                            cardNumber: functions.cardNumberMasking(
                                valueOrDefault(
                                        currentUserDocument?.cardNumber, 0)
                                    .toString()),
                            balance: valueOrDefault(
                                currentUserDocument?.accountBalance, 0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 50.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'CorporateSuccessTransactionPage',
                          queryParameters: {
                            'amount': serializeParam(
                              double.tryParse(_model
                                  .buInputTxnAmountFieldV1Model
                                  .textController
                                  .text),
                              ParamType.double,
                            ),
                            'contact': serializeParam(
                              widget.contactlistitem,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'contact': widget.contactlistitem,
                          },
                        );
                      },
                      text: 'Send',
                      options: FFButtonOptions(
                        width: 358.0,
                        height: 56.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
