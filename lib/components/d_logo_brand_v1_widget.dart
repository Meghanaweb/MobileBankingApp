import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd_logo_brand_v1_model.dart';
export 'd_logo_brand_v1_model.dart';

class DLogoBrandV1Widget extends StatefulWidget {
  const DLogoBrandV1Widget({Key? key}) : super(key: key);

  @override
  _DLogoBrandV1WidgetState createState() => _DLogoBrandV1WidgetState();
}

class _DLogoBrandV1WidgetState extends State<DLogoBrandV1Widget> {
  late DLogoBrandV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DLogoBrandV1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Image.asset(
      'assets/images/icici_horizontal_logo.png',
      height: 67.0,
      fit: BoxFit.fitWidth,
    );
  }
}
