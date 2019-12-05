import 'package:flutter/material.dart';
import 'package:trank_ic/pages/agendada.page.dart';

class AgendarPage extends StatefulWidget {
  AgendarPageState createState()=> AgendarPageState();
}

class AgendarPageState extends State<AgendarPage> {
  createAlertDialog(BuildContext context){
    

    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        
        title: Text("Agendamento Confirmado com Sucesso !"),
        content: Text("Sua senha é 7856"),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text("OK!"),
            onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgendadaPage(),
                      ),
                    );},
          )
        ],
      );
    },);
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          
          children: <Widget>[
            Text(
              "Horário desejado",
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 40.0
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 50,
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple
                        )
                      ),
                    ),
                    maxLength: 1,
                  ),  
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 1,
                  )
                ),
                Text(
                  ":",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 1,
                  )
                ),
            
                SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    maxLength: 1,
                  )
                ),
              ],
            ),

            Container(
              height: 60,
              width:300,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Checar Horário",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}