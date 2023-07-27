import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'authenticated_route_model.dart';
export 'authenticated_route_model.dart';

class AuthenticatedRouteWidget extends StatefulWidget {
  const AuthenticatedRouteWidget({Key? key}) : super(key: key);

  @override
  _AuthenticatedRouteWidgetState createState() =>
      _AuthenticatedRouteWidgetState();
}

class _AuthenticatedRouteWidgetState extends State<AuthenticatedRouteWidget> {
  late AuthenticatedRouteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenticatedRouteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.accountType, '') ==
          getJsonField(
            FFAppState().appConstant,
            r'''$.flow1''',
          )) {
        context.goNamed(
          'RetailDashboardScreen',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      } else {
        context.goNamed(
          'CorporateDashboardScreen',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );

        return;
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
