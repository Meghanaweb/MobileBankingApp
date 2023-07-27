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
import 'corporate_dashboard_screen_model.dart';
export 'corporate_dashboard_screen_model.dart';

class CorporateDashboardScreenWidget extends StatefulWidget {
  const CorporateDashboardScreenWidget({Key? key}) : super(key: key);

  @override
  _CorporateDashboardScreenWidgetState createState() =>
      _CorporateDashboardScreenWidgetState();
}

class _CorporateDashboardScreenWidgetState
    extends State<CorporateDashboardScreenWidget> {
  late CorporateDashboardScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorporateDashboardScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 744.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 63.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'My accounts',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLargeFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      120.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.notifications_none,
                                    color: Color(0xFF20446C),
                                    size: 30.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.pushNamedAuth(
                                          'WelcomePage', context.mounted);
                                    },
                                    child: Icon(
                                      Icons.logout,
                                      color: Color(0xFF20446C),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<UserDetailsRecord>>(
                              stream: queryUserDetailsRecord(
                                queryBuilder: (userDetailsRecord) =>
                                    userDetailsRecord.where('phone_number',
                                        isEqualTo: currentPhoneNumber),
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<UserDetailsRecord>
                                    containerUserDetailsRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final containerUserDetailsRecord =
                                    containerUserDetailsRecordList.isNotEmpty
                                        ? containerUserDetailsRecordList.first
                                        : null;
                                return Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.962,
                                  height: 242.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: 373.0,
                                              height: 234.0,
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model: _model
                                                    .dInfoCardDetailsV3Model,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: DInfoCardDetailsV3Widget(
                                                  cardNumber: functions
                                                      .cardNumberMasking(
                                                          containerUserDetailsRecord!
                                                              .cardNumber
                                                              .toString()),
                                                  expDate: functions
                                                      .getMonthAndYearFrom(
                                                          containerUserDetailsRecord
                                                              ?.cardExpDate),
                                                  balance: valueOrDefault(
                                                      currentUserDocument
                                                          ?.accountBalance,
                                                      0.0),
                                                  tapAction: () async {},
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 373.0,
                                            height: 234.0,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model
                                                  .dInfoCardDetailsV2Model,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: DInfoCardDetailsV2Widget(
                                                cardNumber:
                                                    functions.cardNumberMasking(
                                                        containerUserDetailsRecord!
                                                            .cardNumber
                                                            .toString()),
                                                expDate: functions
                                                    .getMonthAndYearFrom(
                                                        containerUserDetailsRecord
                                                            ?.cardExpDate),
                                                balance: valueOrDefault(
                                                    currentUserDocument
                                                        ?.accountBalance,
                                                    0.0),
                                                tapAction: () async {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 122.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.buActionFeaturesMenuV1Model,
                            updateCallback: () => setState(() {}),
                            child: BuActionFeaturesMenuV1Widget(
                              operation1Title: 'Collections',
                              operation1Icon: Icon(
                                Icons.collections_outlined,
                              ),
                              operation2Title: 'Pay Money',
                              operation3Title: 'Tax',
                              operation4Title: 'Trade',
                              operation2Icon: Icon(
                                Icons.payments_outlined,
                              ),
                              operation3Icon: Icon(
                                Icons.attach_money_outlined,
                              ),
                              operation4Icon: Icon(
                                Icons.trending_up,
                              ),
                              operation2Clicked: () async {
                                context.pushNamed('CorporateSearchContacts');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 342.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Divider(
                                    thickness: 4.0,
                                    indent: 120.0,
                                    endIndent: 120.0,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Text(
                                      'Recent tranasactions',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFF20446C),
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => StreamBuilder<
                                        List<TransactionDetailsRecord>>(
                                      stream: queryTransactionDetailsRecord(
                                        queryBuilder:
                                            (transactionDetailsRecord) =>
                                                transactionDetailsRecord
                                                    .where('AccountType',
                                                        isEqualTo: valueOrDefault(
                                                            currentUserDocument
                                                                ?.accountType,
                                                            ''))
                                                    .orderBy('CreatedDate',
                                                        descending: true),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TransactionDetailsRecord>
                                            listViewTransactionDetailsRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewTransactionDetailsRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewTransactionDetailsRecord =
                                                listViewTransactionDetailsRecordList[
                                                    listViewIndex];
                                            return DInfoRecentTransactionV1Widget(
                                              key: Key(
                                                  'Keyqbl_${listViewIndex}_of_${listViewTransactionDetailsRecordList.length}'),
                                              imagePath:
                                                  listViewTransactionDetailsRecord
                                                      .contactimage,
                                              title:
                                                  listViewTransactionDetailsRecord
                                                      .contactname,
                                              description:
                                                  listViewTransactionDetailsRecord
                                                      .status,
                                              color:
                                                  listViewTransactionDetailsRecord
                                                              .status ==
                                                          getJsonField(
                                                            FFAppState()
                                                                .appConstant,
                                                            r'''$.transactionStatus1''',
                                                          )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .error
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                              amount:
                                                  listViewTransactionDetailsRecord
                                                      .amountDebit,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: wrapWithModel(
                  model: _model.dInfoCorporateContainerV1Model,
                  updateCallback: () => setState(() {}),
                  child: DInfoCorporateContainerV1Widget(
                    icon1: Icon(
                      Icons.account_balance_wallet_rounded,
                      color: FlutterFlowTheme.of(context).info,
                    ),
                    icon2: Icon(
                      Icons.person_add_alt_1,
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                    icon3: Icon(
                      Icons.settings_rounded,
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                    name1: 'Account',
                    name2: 'Care',
                    name3: 'Settings',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
