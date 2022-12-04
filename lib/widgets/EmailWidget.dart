import 'package:flutter/material.dart';
import 'package:flutter_application_1emails/screens/DetailScreen.dart';
import 'package:flutter_application_1emails/model/email.dart';

import '../model/backend.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({Key? key, required this.indexs}) : super(key: key);
  final int indexs;
  @override
  State<EmailWidget> createState() => _EmailWidgetState(indexs);
}

class _EmailWidgetState extends State<EmailWidget> {
  // For holding response as UserPets
  late List<Email> cuerpemail;
  late int index;
  // for data is loaded flag
  bool isDataLoaded = false;
  // error holding
  String errorMessage = '';

  _EmailWidgetState(int indexs) {
    index = indexs;
  }

  callAPIandAssignData() async {
    cuerpemail = Backend().getEmails();
  }

  @override
  void initState() {
    callAPIandAssignData();
    super.initState();
  }

  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ;
    return Card(
      
      child: Dismissible(
        
      direction: DismissDirection.horizontal,
      key: Key('item ${cuerpemail[index].id}'),
     
      
    
      onDismissed: (DismissDirection direction) {
        if (direction == DismissDirection.down) {
          print("Añadido a favorito");
        } else {
          print('mover articulo');
        }

        setState(() {
          print(cuerpemail[index].id);
          Backend().deleteEmail(cuerpemail[index].id);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Correo Eliminado')));
        });

      },
      child: ListTile(
        onTap: () {

          // navegacion para los detalles
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(messemail: cuerpemail[index]),
              ));
              
        },
        onLongPress: () {
          Backend().markEmailAsRead(cuerpemail[index].id);
          print('actualizado correctamente');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Se ha leído este correo')));
          refresh();
        },

        // Estructura de la pantallaprincipal
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Tema: ${cuerpemail[index].subject}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            Text('Por: ${cuerpemail[index].from}'),

            Text(
              'Hora y fecha: ${cuerpemail[index].dateTime.toString()}',
              textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, color: Colors.red ),

            ),
          ],
        ),

        trailing: Icon(
          cuerpemail[index].read ? Icons.brightness_1 : Icons.brightness_1,
          color: cuerpemail[index].read ? Colors.grey : Color.fromARGB(255, 18, 33, 236),
        ),

        

      ),
    ));
  }
}
