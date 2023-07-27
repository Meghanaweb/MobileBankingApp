import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'bu_input_phone_text_field_v1_model.dart';
export 'bu_input_phone_text_field_v1_model.dart';

class BuInputPhoneTextFieldV1Widget extends StatefulWidget {
  const BuInputPhoneTextFieldV1Widget({
    Key? key,
    String? labelText,
    String? hintText,
    this.phoneAction,
  })  : this.labelText = labelText ?? 'Enter Phone Number',
        this.hintText = hintText ?? '+91 - Phone Number',
        super(key: key);

  final String labelText;
  final String hintText;
  final Future<dynamic> Function()? phoneAction;

  @override
  _BuInputPhoneTextFieldV1WidgetState createState() =>
      _BuInputPhoneTextFieldV1WidgetState();
}

class _BuInputPhoneTextFieldV1WidgetState
    extends State<BuInputPhoneTextFieldV1Widget> {
  late BuInputPhoneTextFieldV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuInputPhoneTextFieldV1Model());

    _model.textController ??= TextEditingController();
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
      width: 282.0,
      child: TextFormField(
        controller: _model.textController,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.textController',
          Duration(milliseconds: 2000),
          () async {
            await widget.phoneAction?.call();
          },
        ),
        autofocus: true,
        autofillHints: [AutofillHints.telephoneNumberCountryCode],
        obscureText: false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                color: Color(0xFF91949F),
                fontSize: 14.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFB2B7C7),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: Color(0xFFEBEDF6),
          contentPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          prefixIcon: Icon(
            Icons.phone_android_sharp,
            color: Color(0xFF91949F),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyLarge,
        keyboardType: TextInputType.phone,
        validator: _model.textControllerValidator.asValidator(context),
        inputFormatters: [_model.textFieldMask],
      ),
    );
  }
}
