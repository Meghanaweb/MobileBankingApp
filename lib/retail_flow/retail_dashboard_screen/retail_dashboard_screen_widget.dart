import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bu_action_features_menu_v1_widget.dart';
import '/components/d_info_card_details_v2_widget.dart';
import '/components/d_info_card_details_v3_widget.dart';
import '/components/d_info_recent_transaction_v1_widget.dart';
import '/components/d_info_retail_container_v1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'retail_dashboard_screen_model.dart';
export 'retail_dashboard_screen_model.dart';

class RetailDashboardScreenWidget extends StatefulWidget {
  const RetailDashboardScreenWidget({Key? key}) : super(key: key);

  @override
  _RetailDashboardScreenWidgetState createState() =>
      _RetailDashboardScreenWidgetState();
}

class _RetailDashboardScreenWidgetState
    extends State<RetailDashboardScreenWidget> {
  late RetailDashboardScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RetailDashboardScreenModel());
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
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 63.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  GoRouter.of(context).clearRedirectLocation();

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
                      AuthUserStreamWidget(
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UserDetailsRecord>
                                containerUserDetailsRecordList = snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final containerUserDetailsRecord =
                                containerUserDetailsRecordList.isNotEmpty
                                    ? containerUserDetailsRecordList.first
                                    : null;
                            return Container(
                              width: MediaQuery.sizeOf(context).width * 0.962,
                              height: 242.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 374.0,
                                        height: 234.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.dInfoCardDetailsV2Model,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DInfoCardDetailsV2Widget(
                                              cardNumber:
                                                  functions.cardNumberMasking(
                                                      containerUserDetailsRecord!
                                                          .cardNumber
                                                          .toString()),
                                              expDate:
                                                  functions.getMonthAndYearFrom(
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 373.0,
                                          height: 234.0,
                                          decoration: BoxDecoration(),
                                          child: wrapWithModel(
                                            model:
                                                _model.dInfoCardDetailsV3Model,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: DInfoCardDetailsV3Widget(
                                              cardNumber:
                                                  functions.cardNumberMasking(
                                                      containerUserDetailsRecord!
                                                          .accountNumber
                                                          .toString()),
                                              expDate:
                                                  functions.getMonthAndYearFrom(
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
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 122.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.buActionFeaturesMenuV1Model,
                            updateCallback: () => setState(() {}),
                            child: BuActionFeaturesMenuV1Widget(
                              operation1Title: 'Account',
                              operation1Icon: Icon(
                                Icons.account_box_outlined,
                                size: 28.0,
                              ),
                              operation2Title: 'Transfer',
                              operation3Title: 'Send',
                              operation4Title: 'Trade',
                              operation2Icon: FaIcon(
                                FontAwesomeIcons.paperPlane,
                                size: 23.0,
                              ),
                              operation3Icon: Icon(
                                Icons.sticky_note_2_outlined,
                                size: 28.0,
                              ),
                              operation4Icon: Icon(
                                Icons.storefront_sharp,
                                size: 28.0,
                              ),
                              operation2Clicked: () async {
                                context.pushNamed('SearchContacts');
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 40.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.023,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
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
                                    10.0, 10.0, 0.0, 0.0),
                                child: Text(
                                  'Recent tranasactions',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 240.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => StreamBuilder<
                                    List<TransactionDetailsRecord>>(
                                  stream: queryTransactionDetailsRecord(
                                    queryBuilder: (transactionDetailsRecord) =>
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
                                                AlwaysStoppedAnimation<Color>(
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
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewTransactionDetailsRecord =
                                            listViewTransactionDetailsRecordList[
                                                listViewIndex];
                                        return DInfoRecentTransactionV1Widget(
                                          key: Key(
                                              'Keyyfe_${listViewIndex}_of_${listViewTransactionDetailsRecordList.length}'),
                                          imagePath:
                                              listViewTransactionDetailsRecord
                                                  .contactimage,
                                          title:
                                              listViewTransactionDetailsRecord
                                                  .contactname,
                                          description:
                                              listViewTransactionDetailsRecord
                                                  .status,
                                          color: FlutterFlowTheme.of(context)
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
                    ],
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.dInfoRetailContainerV1Model,
                    updateCallback: () => setState(() {}),
                    child: DInfoRetailContainerV1Widget(
                      icon1: FaIcon(
                        FontAwesomeIcons.wallet,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 20.0,
                      ),
                      icon2: FaIcon(
                        FontAwesomeIcons.chartPie,
                        color: Color(0xFFB2B7C7),
                        size: 20.0,
                      ),
                      icon3: FaIcon(
                        FontAwesomeIcons.gift,
                        color: Color(0xFFB2B7C7),
                        size: 20.0,
                      ),
                      icon4: Icon(
                        Icons.settings_rounded,
                        color: Color(0xFFB2B7C7),
                        size: 23.0,
                      ),
                      name1: 'Account',
                      name2: 'Statistics',
                      name3: 'Cashback',
                      name4: 'Settings',
                    ),
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
