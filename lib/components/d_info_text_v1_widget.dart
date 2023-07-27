import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_info_text_v1_model.dart';
export 'd_info_text_v1_model.dart';

class DInfoTextV1Widget extends StatefulWidget {
  const DInfoTextV1Widget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _DInfoTextV1WidgetState createState() => _DInfoTextV1WidgetState();
}

class _DInfoTextV1WidgetState extends State<DInfoTextV1Widget> {
  late DInfoTextV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DInfoTextV1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.text!,
        textAlign: TextAlign.center,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Roboto',
              color: Color(0xFF91949F),
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
              lineHeight: 2.0,
            ),
      ),
    );
  }
}
