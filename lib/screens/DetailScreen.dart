import 'package:flutter/material.dart';
import 'package:flutter_application_1emails/model/email.dart';
import 'package:flutter_application_1emails/model/backend.dart';

//detalles para cada uno de los mensajes 
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.messemail});
  final Email messemail;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //titulo del mensaje
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(" ${messemail.subject}"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 10),
                ),

                Text(
                  "EMAIL:",
                  style: TextStyle(fontSize: 40.0, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 30),
                ),
                //especificacion del emisor
                Text(
                  "E-mail de: ${messemail.from} ",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),

                //imagen del emisor
                Image.network(messemail.imageUrl,height: 300),
                const SizedBox(
                  height: 5,
                ),

                // Detalles 
                const SizedBox(height: 5),
                Text(
                  "CIENCIAS INFORMÁTICAS • MANTA • MANABÍ • ECUADOR",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),             
                Text(
                  "",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 30),
                ),

                //titulo del email
                Text(
                  "Acerca de: ${messemail.subject} ",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 30),
                ),

                //descripcion del mensaje receptado
                Text(
                  messemail.body,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "",
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 20),
                ),

                //dato de la hora y fecha en el que se recibio el mensaje
                Text(
                  "Date: ${messemail.dateTime} ",
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "",
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}