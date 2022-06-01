import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InscrirePaiementWidget extends StatefulWidget {
  const InscrirePaiementWidget({Key key}) : super(key: key);

  @override
  _InscrirePaiementWidgetState createState() => _InscrirePaiementWidgetState();
}

class _InscrirePaiementWidgetState extends State<InscrirePaiementWidget> {
  TextEditingController numtelController;
  TextEditingController permisIDController1;
  TextEditingController textController1;
  TextEditingController permisIDController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    numtelController = TextEditingController();
    permisIDController1 = TextEditingController();
    textController1 = TextEditingController();
    permisIDController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
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
          'Informations de paiement',
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/Expiry.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 16),
                child: TextFormField(
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Numéro de la Carte',
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Votre numéro de la Carte...',
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF4F4F4),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                    prefixIcon: Icon(
                      Icons.credit_card_outlined,
                      color: Color(0xFF6C63FF),
                      size: 26,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF4E434E),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 12),
                child: TextFormField(
                  controller: permisIDController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'MM/YY',
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                    prefixIcon: Icon(
                      Icons.date_range,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 26,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF14181B),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.streetAddress,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 12),
                child: TextFormField(
                  controller: permisIDController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'CVC',
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Code CVC',
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                    prefixIcon: Icon(
                      Icons.qr_code_sharp,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 26,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF14181B),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.streetAddress,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 12),
                child: TextFormField(
                  controller: numtelController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nom et prénom du titulaire',
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Le nom et présnom du titlaire de la carte',
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                    prefixIcon: Icon(
                      Icons.person,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 26,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF14181B),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'HomePage'),
                        ),
                      );
                    },
                    text: 'Continuer',
                    options: FFButtonOptions(
                      width: 160,
                      height: 45,
                      color: Color(0xFF6C63FF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
