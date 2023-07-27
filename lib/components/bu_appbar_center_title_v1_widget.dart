import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bu_appbar_center_title_v1_model.dart';
export 'bu_appbar_center_title_v1_model.dart';

class BuAppbarCenterTitleV1Widget extends StatefulWidget {
  const BuAppbarCenterTitleV1Widget({
    Key? key,
    String? appbarTitle,
  })  : this.appbarTitle = appbarTitle ?? 'Send money to',
        super(key: key);

  final String appbarTitle;

  @override
  _BuAppbarCenterTitleV1WidgetState createState() =>
      _BuAppbarCenterTitleV1WidgetState();
}

class _BuAppbarCenterTitleV1WidgetState
    extends State<BuAppbarCenterTitleV1Widget> {
  late BuAppbarCenterTitleV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuAppbarCenterTitleV1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 64.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF212121),
              size: 22.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 45.0, 0.0),
                child: Text(
                  widget.appbarTitle,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF20446C),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
