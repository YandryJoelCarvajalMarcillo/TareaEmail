import 'package:flutter/material.dart';
import 'package:flutter_application_1emails/screens/DetailScreen.dart';
import 'package:flutter_application_1emails/model/email.dart';
import 'package:flutter_application_1emails/widgets/EmailWidget.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1emails/model/backend.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => InitAPPEmail();
}

class InitAPPEmail extends State<ListScreen> {
 
 
  late List<Email> cuerpemail;
  
  
  bool isDataLoaded = false;
 

  String errorMessage = '';


  callAPIandAssignData() async {
    cuerpemail = Backend().getEmails();
  }


  @override
  void initState() {
    callAPIandAssignData();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          //color de la aplicacion de la barra superior
          backgroundColor: Colors.red,

          //titulo ubicado en la barra superior de la aplicación
          title: const Text('BANDEJA DE ENTRADA EMAILS'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: cuerpemail.length,
          itemBuilder: (context, index) => EmailWidget(indexs: index),
        ));
  }

  refresh() {
    setState(() {});
  }


}