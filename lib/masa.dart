import 'package:flutter/material.dart';

class Masa extends StatelessWidget{

  TextEditingController KGController = TextEditingController();
  double resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor Masa"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.whatshot),
                    title: Text('Kilogramos a Gramos'),
                ),
                TextField(
                  controller: KGController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //helperText: 'Convertir kg -> grs',
                  ),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text('Convertir'),
                        onPressed: (){
                          resultado = double.parse(KGController.text) * 1000;
                          return showDialog(
                              context: context,
                              builder: (context){ 
                                return AlertDialog(
                                  content: Text("Resultado : $resultado")
                                );
                              }
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(),
          Card(),
          Card()
        ],
      ),
    );
  }
}