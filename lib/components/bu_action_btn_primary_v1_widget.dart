import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bu_action_btn_primary_v1_model.dart';
export 'bu_action_btn_primary_v1_model.dart';

class BuActionBtnPrimaryV1Widget extends StatefulWidget {
  const BuActionBtnPrimaryV1Widget({
    Key? key,
    String? buttonName,
    int? buttonWidth,
    required this.buttonNavigation,
    bool? isButtonDisable,
  })  : this.buttonName = buttonName ?? 'Close',
        this.buttonWidth = buttonWidth ?? 358,
        this.isButtonDisable = isButtonDisable ?? false,
        super(key: key);

  final String buttonName;
  final int buttonWidth;
  final Future<dynamic> Function()? buttonNavigation;
  final bool isButtonDisable;

  @override
  _BuActionBtnPrimaryV1WidgetState createState() =>
      _BuActionBtnPrimaryV1WidgetState();
}

class _BuActionBtnPrimaryV1WidgetState
    extends State<BuActionBtnPrimaryV1Widget> {
  late BuActionBtnPrimaryV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuActionBtnPrimaryV1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: widget.isButtonDisable
          ? null
          : () async {
              await widget.buttonNavigation?.call();
            },
      text: widget.buttonName,
      options: FFButtonOptions(
        width: widget.buttonWidth.toDouble(),
        height: 56.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
            ),
        elevation: 3.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
        disabledColor: FlutterFlowTheme.of(context).tertiary,
        disabledTextColor: FlutterFlowTheme.of(context).accent2,
      ),
    );
  }
}
