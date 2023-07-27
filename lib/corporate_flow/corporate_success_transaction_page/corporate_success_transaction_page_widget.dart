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
import 'corporate_success_transaction_page_model.dart';
export 'corporate_success_transaction_page_model.dart';

class CorporateSuccessTransactionPageWidget extends StatefulWidget {
  const CorporateSuccessTransactionPageWidget({
    Key? key,
    required this.amount,
    required this.contact,
  }) : super(key: key);

  final double? amount;
  final ContactsDetailsRecord? contact;

  @override
  _CorporateSuccessTransactionPageWidgetState createState() =>
      _CorporateSuccessTransactionPageWidgetState();
}

class _CorporateSuccessTransactionPageWidgetState
    extends State<CorporateSuccessTransactionPageWidget> {
  late CorporateSuccessTransactionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorporateSuccessTransactionPageModel());
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
        List<UserDetailsRecord>
            corporateSuccessTransactionPageUserDetailsRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final corporateSuccessTransactionPageUserDetailsRecord =
            corporateSuccessTransactionPageUserDetailsRecordList.isNotEmpty
                ? corporateSuccessTransactionPageUserDetailsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.dIconSuccessCheckMarkV1Model,
                            updateCallback: () => setState(() {}),
                            child: DIconSuccessCheckMarkV1Widget(),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.dInfoTxnSuccessMessageV1Model,
                          updateCallback: () => setState(() {}),
                          child: DInfoTxnSuccessMessageV1Widget(
                            amountText: widget.amount!,
                            textMessage1: 'Payment request sent ',
                            textMessage2: 'for further Approval',
                            contactName: '',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 50.0),
                    child: Container(
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child:
                                  StreamBuilder<List<TransactionDetailsRecord>>(
                                stream: queryTransactionDetailsRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<TransactionDetailsRecord>
                                      buttonTransactionDetailsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final buttonTransactionDetailsRecord =
                                      buttonTransactionDetailsRecordList
                                              .isNotEmpty
                                          ? buttonTransactionDetailsRecordList
                                              .first
                                          : null;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      await currentUserReference!.update({
                                        'AccountBalance': FieldValue.increment(
                                            -(widget.amount!)),
                                      });

                                      await TransactionDetailsRecord.collection
                                          .doc()
                                          .set({
                                        ...createTransactionDetailsRecordData(
                                          contactimage:
                                              widget.contact?.contactImage,
                                          amountDebit: widget.amount,
                                          contactname:
                                              widget.contact?.contactName,
                                          accountType: valueOrDefault(
                                              currentUserDocument?.accountType,
                                              ''),
                                          status: getJsonField(
                                            FFAppState().appConstant,
                                            r'''$.transactionStatus1''',
                                          ).toString(),
                                        ),
                                        'CreatedDate':
                                            FieldValue.serverTimestamp(),
                                      });

                                      context.pushNamed(
                                          'CorporateDashboardScreen');
                                    },
                                    text: 'Close',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
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
