import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_info_txn_success_message_v1_model.dart';
export 'd_info_txn_success_message_v1_model.dart';

class DInfoTxnSuccessMessageV1Widget extends StatefulWidget {
  const DInfoTxnSuccessMessageV1Widget({
    Key? key,
    required this.amountText,
    required this.textMessage1,
    required this.textMessage2,
    required this.contactName,
  }) : super(key: key);

  final double? amountText;
  final String? textMessage1;
  final String? textMessage2;
  final String? contactName;

  @override
  _DInfoTxnSuccessMessageV1WidgetState createState() =>
      _DInfoTxnSuccessMessageV1WidgetState();
}

class _DInfoTxnSuccessMessageV1WidgetState
    extends State<DInfoTxnSuccessMessageV1Widget> {
  late DInfoTxnSuccessMessageV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DInfoTxnSuccessMessageV1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              formatNumber(
                widget.amountText,
                formatType: FormatType.custom,
                format: '₹',
                locale: '',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Color(0xFF20446C),
                    fontSize: 24.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            ),
            Text(
              widget.textMessage1!,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Color(0xFF20446C),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            ),
            Text(
              widget.textMessage2!,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Color(0xFF20446C),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            ),
            Text(
              widget.contactName!,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Color(0xFF20446C),
                    fontSize: 24.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
