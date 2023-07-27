import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_icon_success_check_mark_v1_model.dart';
export 'd_icon_success_check_mark_v1_model.dart';

class DIconSuccessCheckMarkV1Widget extends StatefulWidget {
  const DIconSuccessCheckMarkV1Widget({Key? key}) : super(key: key);

  @override
  _DIconSuccessCheckMarkV1WidgetState createState() =>
      _DIconSuccessCheckMarkV1WidgetState();
}

class _DIconSuccessCheckMarkV1WidgetState
    extends State<DIconSuccessCheckMarkV1Widget> {
  late DIconSuccessCheckMarkV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DIconSuccessCheckMarkV1Model());
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
      width: 132.0,
      height: 132.0,
      decoration: BoxDecoration(
        color: Color(0xFFE6FAE4),
        shape: BoxShape.circle,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 99.0,
          height: 99.0,
          decoration: BoxDecoration(
            color: Color(0xFFC1F7BB),
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 67.17,
              height: 67.17,
              decoration: BoxDecoration(
                color: Color(0xFF67AD5B),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 17.0, 0.0, 0.0),
                child: FaIcon(
                  FontAwesomeIcons.check,
                  color: FlutterFlowTheme.of(context).secondaryIconColor,
                  size: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
