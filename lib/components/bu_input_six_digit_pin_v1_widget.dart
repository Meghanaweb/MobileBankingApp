import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bu_input_six_digit_pin_v1_model.dart';
export 'bu_input_six_digit_pin_v1_model.dart';

class BuInputSixDigitPinV1Widget extends StatefulWidget {
  const BuInputSixDigitPinV1Widget({
    Key? key,
    this.onPinEntryComplete,
  }) : super(key: key);

  final Future<dynamic> Function()? onPinEntryComplete;

  @override
  _BuInputSixDigitPinV1WidgetState createState() =>
      _BuInputSixDigitPinV1WidgetState();
}

class _BuInputSixDigitPinV1WidgetState
    extends State<BuInputSixDigitPinV1Widget> {
  late BuInputSixDigitPinV1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuInputSixDigitPinV1Model());
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
        child: PinCodeTextField(
          autoDisposeControllers: false,
          appContext: context,
          length: 6,
          textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                fontWeight: FontWeight.normal,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
              ),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          enableActiveFill: true,
          autoFocus: false,
          enablePinAutofill: true,
          errorTextSpace: 16.0,
          showCursor: true,
          cursorColor: FlutterFlowTheme.of(context).primary,
          obscureText: false,
          hintCharacter: '●',
          pinTheme: PinTheme(
            fieldHeight: 44.0,
            fieldWidth: 44.0,
            borderWidth: 1.0,
            borderRadius: BorderRadius.circular(10.0),
            shape: PinCodeFieldShape.box,
            activeColor: Color(0xFFEBEDF6),
            inactiveColor: Color(0xFFEBEDF6),
            selectedColor: Color(0xFFEBEDF6),
            activeFillColor: Color(0xFFEBEDF6),
            inactiveFillColor: Color(0xFFEBEDF6),
            selectedFillColor: Color(0xFFEBEDF6),
          ),
          controller: _model.pinCodeController,
          onChanged: (_) {},
          onCompleted: (_) async {
            await widget.onPinEntryComplete?.call();
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: _model.pinCodeControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
