import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ReservationWidget extends StatefulWidget {
  const ReservationWidget({Key key}) : super(key: key);

  @override
  _ReservationWidgetState createState() => _ReservationWidgetState();
}

class _ReservationWidgetState extends State<ReservationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitCubeGrid(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final reservationUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF1C0527),
                size: 24,
              ),
            ),
            title: Text(
              'Réserver une place de parking',
              style: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Text(
                      'Vous pouvez réserver qu\'une heure à l’avance. ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayLight,
                          ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-Login pressed ...');
                    },
                    text: 'confirmer la réservation',
                    options: FFButtonOptions(
                      width: 230,
                      height: 50,
                      color: Color(0xFF6C63FF),
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).customColor1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
