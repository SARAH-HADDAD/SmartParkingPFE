import '../auth/auth_util.dart';
import '../backend/backend.dart';
import 'package:latlong2/latlong.dart' as LatLng;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../change_password/change_password_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ChoisirUnParking.dart';

class ChoisirParkingPage extends StatefulWidget {
  const ChoisirParkingPage({Key key}) : super(key: key);
  @override
  _ChoisirParkingPageState createState() => _ChoisirParkingPageState();
}

class _ChoisirParkingPageState extends State<ChoisirParkingPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Choisir un parking',
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).customColor1,
      body: ParkingsInformation(),
    );
  }
}
//ChoisirParkingPage()
//ChoisirParkingPage