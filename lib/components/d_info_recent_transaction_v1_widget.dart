import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_info_recent_transaction_v1_model.dart';
export 'd_info_recent_transaction_v1_model.dart';

class DInfoRecentTransactionV1Widget extends StatefulWidget {
  const DInfoRecentTransactionV1Widget({
    Key? key,
    this.imagePath,
    this.title,
    this.description,
    this.color,
    this.amount,
  }) : super(key: key);

  final String? imagePath;
  final String? title;
  final String? description;
  final Color? color;
  final double? amount;

  @override
  _DInfoRecentTransactionV1WidgetState createState() =>
      _DInfoRecentTransactionV1WidgetState();
}

class _DInfoRecentTransactionV1WidgetState
    extends State<DInfoRecentTransactionV1Widget> {
  late DInfoRecentTransactionV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DInfoRecentTransactionV1Model());
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
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 12.0,
              color: FlutterFlowTheme.of(context).accent3,
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  widget.imagePath!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title!,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 14.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                  lineHeight: 1.0,
                                ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          widget.description!,
                          maxLines: 3,
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Poppins',
                                color: widget.color,
                                fontSize: 14.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                                lineHeight: 1.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                formatNumber(
                  widget.amount,
                  formatType: FormatType.decimal,
                  decimalType: DecimalType.automatic,
                  currency: ' ₹ ',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 14.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
