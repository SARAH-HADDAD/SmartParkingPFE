import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../change_password/change_password_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main/main_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ParkingsInformation extends StatefulWidget {
  const ParkingsInformation({Key key}) : super(key: key);
  @override
  _ParkingsInformationState createState() => _ParkingsInformationState();
}

class _ParkingsInformationState extends State<ParkingsInformation> {
  final Stream<QuerySnapshot> _parkingsStream = FirebaseFirestore.instance.collection('parking').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _parkingsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

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
          body:
              ListView(
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> parking = document.data() as Map<String, dynamic>;
                    return ListTile(
                      title: Text(parking['adresse']),

                      subtitle: Text(parking['adresse']),
                    );
                  }).toList(),
                ),
        );
      },
    );
  }
}
//