import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bu_info_vertical_image_v1_model.dart';
export 'bu_info_vertical_image_v1_model.dart';

class BuInfoVerticalImageV1Widget extends StatefulWidget {
  const BuInfoVerticalImageV1Widget({
    Key? key,
    this.imagePath,
    this.title,
    this.tapAction,
    this.description,
  }) : super(key: key);

  final String? imagePath;
  final String? title;
  final Future<dynamic> Function()? tapAction;
  final String? description;

  @override
  _BuInfoVerticalImageV1WidgetState createState() =>
      _BuInfoVerticalImageV1WidgetState();
}

class _BuInfoVerticalImageV1WidgetState
    extends State<BuInfoVerticalImageV1Widget> {
  late BuInfoVerticalImageV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuInfoVerticalImageV1Model());
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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(110.0),
              child: CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 500),
                fadeOutDuration: Duration(milliseconds: 500),
                imageUrl: widget.imagePath!,
                width: 110.0,
                height: 110.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                widget.title!,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Roboto',
                      color: Color(0xFF20446C),
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleMediumFamily),
                      lineHeight: 2.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                widget.description!,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: 'Roboto',
                      color: Color(0xFF91949F),
                      fontSize: 12.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelSmallFamily),
                      lineHeight: 2.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
